# MegaPrzetarg — Kompletny zestaw pracy dla Wydziału Zamówień Publicznych Urzędu Gminy

Profesjonalny, gotowy do użycia zestaw folderów, wzorów pism, list kontrolnych i rejestrów dla specjalisty ds. zamówień publicznych w polskim urzędzie gminy. Uwzględnia **prawo krajowe i unijne**, progi na lata **2026–2027** oraz zmiany obowiązujące w 2026 r.

## Czy projekt jest gotowy?

**Tak.** Po audycie i weryfikacji prawnej z dnia **25 listopada 2026 r.** zestaw jest kompletny: zawiera cały cykl postępowania (od wniosku wydziału po archiwizację), ścieżki A/B/C/D, wzory dokumentów i rejestry oraz narzędzia uzupełniające (regulamin podprogowy, słownik, historia wersji, szkielet umowy, karty oceny, odpowiedź na odwołanie, konkurs i zamówienia zastrzeżone). Uwzględniono też najnowszą aktualizację bazy wiedzy i szablonów (CRU JSFP, e-Doręczenia, NZIA/EED, znowelizowaną elektromobilność oraz rozporządzenia wykonawcze do certyfikacji wykonawców). Wersja zestawu: **1.3**.

> **Ważne:** to narzędzie pracy, nie porada prawna. Przed każdym postępowaniem sprawdź aktualny tekst przepisów w ISAP/ELI, obwieszczenia UZP i umowę o dofinansowanie. Zestaw odzwierciedla stan prawny na **25.11.2026 r.** — zob. [`00_Baza_Wiedzy_i_Progi/06_Historia_Wersji_i_Aktualizacje.md`](./00_Baza_Wiedzy_i_Progi/06_Historia_Wersji_i_Aktualizacje.md). Od **1.12.2026 r.** wchodzą w życie zmiany art. 214 i 364 Pzp, a od **1.01.2027 r.** art. 112 Pzp — sprawdź je przed wszczęciem postępowania.

---

## Jak korzystać z zestawu (4 kroki)

1. **Sprawdź progi i wybierz tryb.** Wejdź do [`00_Baza_Wiedzy_i_Progi/`](./00_Baza_Wiedzy_i_Progi/): `01_Progi_i_Terminy...`, `02_Matryca_Wyboru_Trybu...`, a dla konkretnej sprawy wypełnij `_SZABLON_POSTEPOWANIA/01_.../07_Notatka_Wyboru_Trybu_Zgodnosci.md`.
2. **Utwórz teczki sprawy.**
   - **Ręcznie:** skopiuj cały folder `_SZABLON_POSTEPOWANIA` i zmień nazwę, np. `2026_ZP.271.15.2026_Przebudowa_drogi_gminnej`.
   - **Automatycznie (Windows/PowerShell):**
     ```powershell
     .\00_Baza_Wiedzy_i_Progi\04_Generator_Nowego_Postepowania.ps1 `
       -ZnakSprawy "ZP.271.15.2026" -NazwaKrotka "Przebudowa_drogi_gminnej" -Sciezka "B"
     ```
     Parametry opcjonalne: `-Rok 2026`, `-KatalogDocelowy`, `-WydzialMerytoryczny`, `-Prowadzacy`.
3. **Prowadź sprawę od `00_` do `10_`.** Każdy folder to kolejny etap cyklu życia zamówienia. Główna kontrola jakości: `00_Karta_Sprawy_i_Checklisty/01_Checklista_Etapowa_Caly_Proces.md` i `02_Rejestr_Terminow_i_Zdarzen.csv`.
4. **Zamknij i zarchiwizuj.** Protokół ZP + załączniki, ogłoszenie o wykonaniu umowy (art. 448), zwrot ZNWU, sprawozdanie art. 82, JRWA 271/272, retencja RODO — folder `09_`.

---

## Struktura repozytorium

```text
MegaPrzetarg/
├── README.md
├── LICENSE
├── .opencode/skills/gminne-zamowienia-publiczne/ # Pakiet skilla: 3 references + 3 templates
├── 00_Baza_Wiedzy_i_Progi/                       # Baza referencyjna — NIE kopiować do spraw
│   ├── 01_Progi_i_Terminy_2026_2027.md           # Progi PL/UE, terminy, zmiany 2026 (ściągawka)
│   ├── 02_Matryca_Wyboru_Trybu_i_Zgodnosci.md    # Drzewo decyzyjne A1/A2/B/C/D + obowiązki
│   ├── 03_Wykaz_Aktow_Prawnych_i_Zgodnosci.md    # Prawo PL i UE, sankcje, KSeF, cyberbezp., 2027
│   ├── 04_Generator_Nowego_Postepowania.ps1     # Generator teczki (A/B/C/D/ALL)
│   ├── 05_Plan_Postepowan_Pzp_Rejestr.csv        # Rejestr planu (CSV, separator ;)
│   ├── 05b_Plan_Postepowan_Pzp_Tabela.md         # Plan postępowań art. 23 Pzp
│   ├── 06_Historia_Wersji_i_Aktualizacje.md      # CHANGELOG, źródła, lista aktualizacji
│   ├── 07_Slownik_Skrotow_i_Pojec.md             # Słownik skrótów dla nowych pracowników
│   └── 08_Wzor_Regulaminu_Zamowien_Podprogowych.md # Wzór regulaminu < 170 tys. zł
└── _SZABLON_POSTEPOWANIA/                        # <<< KOPIUJ TEN FOLDER DLA KAŻDEGO PRZETARGU >>>
    ├── 00_Karta_Sprawy_i_Checklisty/             # Karta sprawy, checklista procesu, rejestr terminów
    ├── 01_Inicjacja_Planowanie_i_Szacowanie/     # Wniosek, szacowanie, APiW, podział, komisja,
    │                                             #   konsultacje rynku, NOTATKA WYBORU TRYBU
    ├── 02_Opis_Przedmiotu_Zamowienia_i_PPU/      # Checklista OPZ, szablon OPZ/CPV, PPU,
    │                                             #   SZKIELET UMOWY, cyberbezpieczeństwo ICT
    ├── 03_Procedura_i_Dokumenty_Zamowienia/
    │   ├── A_Podprogowe_ponizej_170tys/          # Zapytanie ofertowe + zasada konkurencyjności BK2021
    │   ├── B_Krajowe_Pzp_od_170tys_do_progow_UE/ # SWZ (pkt 1/2/3), ogłoszenie BZP, oświadczenie,
    │   │                                         #   formularz oferty, państwa trzecie, PROTOKÓŁ NEGOCJACJI
    │   ├── C_Unijne_Pzp_powyzej_progow_UE/       # SWZ art. 132, JEDZ/TED/eNotices2
    │   └── D_Tryby_Szczegolne_i_Niekonkurencyjne/ # Wolna ręka, usługi społeczne, in-house,
    │                                             #   UMOWA RAMOWA/DSZ/AUKCJA, WSPÓLNE ZAMÓWIENIA art. 38,
    │                                             #   KONKURS art. 325–358, ZAMÓWIENIA ZASTRZEŻONE art. 94 (30%)
    ├── 04_Wyjasnienia_Zmiany_SWZ_i_Otwarcie/     # Pytania, zmiany SWZ, art. 222, otwarcie ofert
    ├── 05_Badanie_Ocena_Ofert_i_Wybor/           # Checklista badania (ICT!), wzory pism, sankcje,
    │                                             #   KARTA OCENY CZŁONKA KOMISJI, WZORY: art. 223, 128, omyłki
    ├── 06_Srodki_Ochrony_Prawnej_KIO/            # Terminy, standstill, rejestr odwołań,
    │                                             #   WZÓR ODPOWIEDZI NA ODWOŁANIE (reguły od 13.03.2026)
    ├── 07_Umowa_ZNWU_Ogloszenia_Po_Wyborze/      # Checklista umowy (kontrasygnata, KSeF/PEF, CRU), ZNWU
    ├── 08_Realizacja_Zmiany_Umowy_i_Sprawozdawczosc/ # Aneksy art. 455, raport art. 446, art. 448,
    │                                             #   waloryzacja art. 439
    ├── 09_Protokol_Postepowania_i_Archiwizacja/  # Kompletność ZP, JRWA, RODO
    └── 10_Korespondencja_i_Zalaczniki_Robocze/   # Instrukcja organizacji, rejestr UPO
```

---

## Progi na lata 2026–2027 (skrót dla Urzędu Gminy)

| Rodzaj progu | Wartość netto | Podstawa | Ścieżka |
| :--- | :--- | :--- | :--- |
| **Zamówienia bez Pzp** | `< 170 000 PLN` | art. 2 ust. 1 pkt 1 Pzp (Dz.U. 2025 poz. 1173, od 1.01.2026) + regulamin gminy + art. 44 u.f.p. | `A_Podprogowe.../` |
| **Zasada konkurencyjności (UE 2021–2027)** | `> 80 000 PLN` i `< 170 000 PLN` | Wytyczne kwalifikowalności (zmiana od 25.03.2025) — BK2021 | `A_.../02_Zasada_Konkurencyjnosci...` |
| **Próg unijny — D/U (JST, poniżej szczebla centralnego)** | `216 000 EUR` = **`930 960 PLN`** | M.P. z 2025 r. poz. 1247, kurs **4,31 PLN/EUR** | `<` → `B_`, `>=` → `C_` |
| **Próg unijny — roboty budowlane** | `5 404 000 EUR` = **`23 291 240 PLN`** | j.w. | `<` → `B_`, `>=` → `C_` |
| **Usługi społeczne / szczególne** | `750 000 EUR` = **`3 232 500 PLN`** | art. 359 Pzp + j.w. | `D_.../02_Uslugi_Spoleczne...` |

> Gmina jest **instytucją zamawiającą poniżej szczebla centralnego** — stosuje próg 216 000 EUR, nie 140 000 EUR (od 1.01.2026 r. o progu decyduje ujęcie w załączniku I do dyrektywy 2014/24/UE, nie przynależność do sektora finansów publicznych).

## Najważniejsze zmiany 2026 uwzględnione w zestawie

| Data | Zmiana | Pliki |
| :-- | :-- | :-- |
| 1.01.2026 | Próg 170 000 PLN; nowe progi UE i kurs 4,31; nowe elementy APiW | `01_`, `01_.../03_APiW`, `02_Matryca...` |
| 1.01.2026 | e-Doręczenia (PURDE) jako domyślny kanał korespondencji urzędowej (zamówienia podprogowe, oświadczenia umowne) | `02_.../03_`, `02_.../04_`, `08_Wzor_Regulaminu...` |
| 1.02./1.04.2026 | KSeF + PEF w fakturach dla zamawiających publicznych | `02_.../03_PPU`, `07_.../01_` |
| 13.03.2026 | KIO: rozprawy zdalne, prekluzja dowodowa, obowiązkowa odpowiedź, e-Doręczenia, przystąpienie w 3 dni | `06_.../01_`, `06_.../02_` |
| 3.04.2026 | Odrzucanie ofert z rozwiązań ICT (art. 226 ust. 1 pkt 17 i 19 Pzp) | `02_.../01_`, `05_.../01_` |
| 30.06.2026 | NZIA (Rozp. UE 2024/1735, art. 25) — kryteria środowiskowe i odporności dostaw dla technologii net-zero w UE | `02_.../01_`, `03_.../C.../01_` |
| 1.07.2026 | Centralny Rejestr Umów (CRU JSFP, art. 34a–34d u.f.p.) — raportowanie umów w 30 dni (bez progu kwotowego) | `07_.../01_`, `08_.../01_`, `08_Wzor_Regulaminu...` |
| 12.07.2026 | Certyfikacja wykonawców (Dz.U. 2025 poz. 1235; rozp. Dz.U. 2026 poz. 709 i 1116) | `03_.../B.../03_`, `C.../01_` |
| 1.01.2027 | Poziomy zdolności w robotach budowlanych (Dz.U. 2026 poz. 1393) | `03_Wykaz_Aktow...`, `06_Historia...` |

---

## Konwencja nazw plików

Nazwy folderów i plików nie zawierają polskich znaków ani spacji (zgodnie z zasadami w `10_.../00_INSTRUKCJA...`) — to chroni przed problemami z długimi ścieżkami Windows, ZIP i platformami e-Zamówienia / TED / BK2021. **Treść dokumentów jest w pełnej, poprawnej polszczyźnie.**

## Utrzymanie

Sprawdzaj kwartalnie `00_Baza_Wiedzy_i_Progi/06_Historia_Wersji_i_Aktualizacje.md` (lista kontrolna aktualizacji) oraz strony: ISAP/ELI, gov.pl/web/uzp, gov.pl/web/mswia, e-Zamówienia, Baza Konkurencyjności, BIP Ministerstwa Cyfryzacji (rekomendacje ICT). Zmiany wpisuj do historii wersji i rozsyłaj do wydziałów merytorycznych. W pakiecie skilla (`.opencode/skills/gminne-zamowienia-publiczne/`) znajdują się skrócone materiały decyzyjne (`references/`) i karty robocze (`templates/`) — aktualizuj je razem z bazą wiedzy.

**Podstawa prawna (stan na 25.11.2026):** ustawa z 11.09.2019 r. – Pzp (t.j. **Dz.U. 2026 poz. 793**); obwieszczenie Prezesa UZP z 8.12.2025 r. (**M.P. 2025 poz. 1247**); ustawa z 25.07.2025 r. (**Dz.U. 2025 poz. 1173**); ustawa z 9.07.2025 r. (**Dz.U. 2025 poz. 1165**); ustawa o certyfikacji wykonawców (**Dz.U. 2025 poz. 1235**, rozp. **Dz.U. 2026 poz. 709, 1116, 1393**); u.f.p. art. 34a–34d (CRU JSFP); ustawa o doręczeniach elektronicznych; ustawa o elektromobilności (art. 35, 68a–68e); dyrektywa 2014/24/UE; rozporządzenia wykonawcze eForms 2019/1780 i ESPD 2016/7; rozporządzenie (UE) 2024/1735 (NZIA); dyrektywa (UE) 2023/1791 (EED); rozporządzenie Rady (UE) 833/2014 art. 5k; RODO; wytyczne kwalifikowalności 2021–2027.
