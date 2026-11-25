"""Generate DOCX and PDF from every Markdown file, and XLSX from every CSV file.

Run from anywhere:
    python 00_Baza_Wiedzy_i_Progi/10_Generator_Formats_Wyjsciowych.py

Output mirrors the repository tree under _GENERATED/ and is overwritten on each run.
Requires: Pandoc, MiKTeX (xelatex), openpyxl.
"""

from __future__ import annotations

import csv
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

from openpyxl import Workbook
from openpyxl.styles import Font
from openpyxl.utils import get_column_letter

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "_GENERATED"
SKIP_DIRS = {".git", ".opencode", "_GENERATED", "__pycache__", ".mypy_cache"}

PANDOC_FALLBACK = r"C:\Users\piotr\AppData\Local\Pandoc\pandoc.exe"
MIKTEX_BIN = r"C:\Users\piotr\AppData\Local\Programs\MiKTeX\miktex\bin\x64"
NUMBER = re.compile(r"^-?\d+(?:[.,]\d+)?$")


def tool(name: str, fallback: str) -> str:
    found = shutil.which(name)
    if found:
        return found
    if Path(fallback).is_file():
        return fallback
    raise SystemExit(f"Brak narzedzia {name}. Zainstaluj je lub ustaw sciezke w PATH.")


def run(cmd: list[str]) -> None:
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        raise RuntimeError(
            f"Nie udalo sie wykonac: {' '.join(cmd)}\n"
            f"stdout: {result.stdout.strip()}\nstderr: {result.stderr.strip()}"
        )


def as_cell(value: str):
    value = value.strip()
    if NUMBER.fullmatch(value):
        normalized = value.replace(",", ".")
        return float(normalized) if "." in normalized else int(normalized)
    return value


def csv_to_xlsx(src: Path, dst: Path) -> None:
    with src.open(encoding="utf-8-sig", newline="") as handle:
        rows = list(csv.reader(handle, delimiter=";"))

    workbook = Workbook()
    sheet = workbook.active
    sheet.title = src.stem[:31] or "Arkusz"
    for row in rows:
        sheet.append([as_cell(cell) for cell in row])

    for cell in sheet[1]:
        cell.font = Font(bold=True)
    sheet.freeze_panes = "A2"

    for column in sheet.columns:
        width = max((len(str(cell.value or "")) for cell in column), default=8) + 2
        sheet.column_dimensions[get_column_letter(column[0].column)].width = min(max(width, 10), 60)

    workbook.save(dst)


def main() -> int:
    pandoc = tool("pandoc", PANDOC_FALLBACK)
    if Path(MIKTEX_BIN).is_dir():
        os.environ["PATH"] = MIKTEX_BIN + os.pathsep + os.environ.get("PATH", "")

    md_files = sorted(
        path for path in ROOT.rglob("*.md")
        if not any(part in SKIP_DIRS for part in path.relative_to(ROOT).parts)
    )
    csv_files = sorted(
        path for path in ROOT.rglob("*.csv")
        if not any(part in SKIP_DIRS for part in path.relative_to(ROOT).parts)
    )

    failures: list[str] = []
    for source in md_files:
        relative = source.relative_to(ROOT)
        for suffix, extra in (
            (".docx", []),
            (".pdf", ["--pdf-engine=xelatex", "-V", "mainfont=Arial",
                      "-V", "lang=pl", "-V", "geometry:margin=2cm"]),
        ):
            target = OUT / relative.with_suffix(suffix)
            target.parent.mkdir(parents=True, exist_ok=True)
            try:
                run([pandoc, str(source), "-o", str(target), *extra])
            except RuntimeError as error:
                failures.append(str(error))

    for source in csv_files:
        relative = source.relative_to(ROOT)
        target = OUT / relative.with_suffix(".xlsx")
        target.parent.mkdir(parents=True, exist_ok=True)
        try:
            csv_to_xlsx(source, target)
        except Exception as error:  # noqa: BLE001 - report and continue with other files
            failures.append(f"{source}: {error}")

    generated = list(OUT.rglob("*.*"))
    print(f"Markdown: {len(md_files)} plikow -> DOCX + PDF")
    print(f"CSV: {len(csv_files)} plikow -> XLSX")
    print(f"Wygenerowano plikow: {len(generated)} w {OUT}")
    if failures:
        print(f"Bledy: {len(failures)}", file=sys.stderr)
        for failure in failures:
            print(failure, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
