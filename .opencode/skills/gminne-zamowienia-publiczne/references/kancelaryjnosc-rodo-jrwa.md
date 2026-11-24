# Kancelaryjność, RODO i JRWA w teczce postępowania

> Dotyczy urzędu gminy. Ustalenia lokalne (symbol JRWA, znak sprawy, regulamin obiegu dokumentów, nazwa platformy) należy uzupełnić według zarządzeń wójta/burmistrza/prezydenta — w plikach pozostawiono znaczniki `[DO UZUPEŁNIENIA]`.

---

## 1. Konwencja nazewnictwa

**Zasady twarde:**

1. **Brak polskich znaków diakrytycznych i spacji** w nazwach folderów/plików (kompatybilność Windows, ZIP, e-Zamówienia, TED, BK2021). Polszczyzna pozostaje w **treści** dokumentów.
2. **Data na początku nazwy pliku** w formacie `RRRR-MM-DD` — ułatwia sortowanie chronologiczne i dowody terminów.
3. **Wersjonowanie:** `v01_roboczy`, `v02_uzgodniony`, `v03_konsultacje`, `FINAL` (w nazwie albo w metryczce pliku). Wersja `FINAL` tylko po zatwierdzeniu przez Kierownika Zamawiającego.
4. **Znak sprawy** według JRWA, np. `ZP.271.5.2026` — powtarzany w nazwie folderu sprawy i w metryczce. Numeracja roczna, nie kontynuowana automatycznie z poprzedniego roku.
5. **Identyfikatory systemowe** zapisywane osobno: nr postępowania e-Zamówienia, nr ogłoszenia BZP, nr ogłoszenia TED/DUUE, nr umowy (JRWA 272).

**Szablon nazwy folderu sprawy:**

```text
[Rok]_[Znak_sprawy]_[Skrot_przedmiotu]
2026_ZP.271.5.2026_Przebudowa_drogi_gminnej
```

**Szablon nazwy pliku:**

```text
2026-11-24_SWZ_v02_uzgodniony_ZP.271.5.2026.pdf
2026-11-24_Zawiadomienie_o_wyborze_FINAL.pdf
```

---

## 2. JRWA i klasy archiwalne

| Klasa | Zakres | Kategoria / retencja |
| :-- | :-- | :-- |
| **271** | Postępowania o zamówienia publiczne (wnioski, szacowanie, SWZ, oferty, protokoły, odwołania) | Co do zasady **B5**; przy projektach UE/KPO wg umowy o dofinansowanie (często B10 lub dłużej) |
| **272** | Umowy dotyczące zamówień publicznych (wraz z aneksami i zabezpieczeniem) | Wg JRWA urzędu; zwykle **B10** albo do przedawnienia roszczeń |
| **Korespondencja KIO / wyroki** | Odwołania, przystąpienia, orzeczenia, skargi | Do przedawnienia; zalecane B10 |

**Podstawa:** rozporządzenie PRM z 18.01.2011 r. w sprawie instrukcji kancelaryjnej, jednolitych rzeczowych wykazów akt i archiwów zakładowych. **Minimalny ustawowy czas przechowywania protokołu z załącznikami: 4 lata** (art. 78 Pzp) — przy dłuższej umowie lub projekcie UE/KPO stosuje się okres dłuższy (trwałość projektu + rozliczenie).

**Za każdym razem ustal:** numer nadany przez archiwum zakładowe, datę przekazania akt i osobę przekazującą. Wpisz do karty sprawy i do `09_.../01_Protokol...`.

---

## 3. RODO — dane osobowe w postępowaniu

- [ ] **Klauzula informacyjna** z art. 13/14 RODO w SWZ / zapytaniu / ogłoszeniu (administrator, cel, podstawa, odbiorcy, okres retencji, prawa, nadzór). Wzór: `09_.../02_Klauzula_RODO_art_13_i_19_Pzp.md`.
- [ ] **Ograniczenie jawności (art. 19 i 74 Pzp):** protokół jest jawny, ale dane osobowe fizycznych osób (imiona, nazwiska, adresy, PESEL) anonimizuje się przed udostępnieniem; podmioty (firmy) co do zasady pozostają jawne.
- [ ] **Minimalizacja:** w dokumentach podmiotowych żądaj tylko danych niezbędnych; nie gromadź PESEL osób z konsorcjum bez podstawy.
- [ ] **Umowa powierzenia (art. 28 RODO)** przy usługach obejmujących przetwarzanie danych mieszkańców przez wykonawcę — wpisz do PPU i sprawdź przed podpisaniem umowy.
- [ ] **Oświadczenia członków komisji** (art. 56 Pzp) przechowuj w folderze dokumentów wewnętrznych, nie w części jawnej akt.
- [ ] **Okres retencji** danych w aktach postępowania zgodny z JRWA + umową o dofinansowanie; po upływie — przekazanie do archiwum lub usunięcie zgodnie z polityką urzędu.

---

## 4. Tajemnica przedsiębiorstwa i jawność

- Zastrzeżenie informacji jest skuteczne tylko wtedy, gdy wykonawca **wyraźnie je oznaczył i uzasadnił** (art. 11 ust. 2 ustawy o zwalczaniu nieuczciwej konkurencji, art. 18 ust. 3 Pzp). Bez uzasadnienia informacja pozostaje jawna.
- Materiały zastrzeżone trzymaj w **osobnym podfolderze** `NIEJAWNE_TAJEMNICA/` z opisem: kto zastrzegł, data, zakres, podstawa. Nie wklejaj ich do protokołu jawnego.
- Protokół udostępnia się niezwłocznie, nie później niż w **3 dni** od wniosku (art. 74 ust. 2 Pzp) — weryfikacja składu i anonimizacji przed wysłaniem.
- Informacje o weryfikacji sankcyjnej konkretnych podmiotów ujawniaj tylko w minimalnym zakresie niezbędnym.

---

## 5. Bezstronność i konflikt interesów

- [ ] Powołanie komisji (art. 53 Pzp: obowiązkowe w UE, fakultatywne w krajowych — w gminie zalecane) i **oświadczenia z art. 56 Pzp** o niekaralności oraz braku konfliktu interesów.
- [ ] **Aktualizacja oświadczeń po otwarciu ofert** — po zapoznaniu się z listą wykonawców (typowy błąd: zebranie oświadczeń tylko przed otwarciem).
- [ ] Weryfikacja powiązań członków komisji z wykonawcami; w razie wątpliwości — wyłączenie i uzasadnienie w aktach.
- [ ] Przy projektach UE — dodatkowe oświadczenia o braku konfliktu interesów wg wytycznych kwalifikowalności (BK2021).

---

## 6. „Czyste kopiowanie" szablonu pod nowe postępowanie

**Zasada:** szablon `_SZABLON_POSTEPOWANIA` kopiuje się w całości; następnie **czyści się dane starej sprawy**, zanim cokolwiek zostanie wysłane lub opublikowane.

### Lista do wyczyszczenia / zastąpienia

- [ ] Znak sprawy, nazwa zamówienia, CPV, kwoty, daty, numerator umowy, identyfikatory BZP/TED/e-Zamówienia.
- [ ] Nazwiska i podpisy osób (prowadzący, komisja, radca prawny, skarbnik) — nowe powołanie i nowe oświadczenia.
- [ ] Stare oferty, PSD, UPO, wydruki z platformy, potwierdzenia publikacji, wpisy w rejestrach (CSV).
- [ ] Stare zapisy w `00_Karta_Postepowania.md`, `02_Rejestr_Terminow_i_Zdarzen.csv`, rejestrze odwołań i kar umownych.
- [ ] Komentarze, ślady zmian (track changes), ukryte arkusze, metadane autora, hiperlinki do starych plików, makra.
- [ ] Pliki z poprzedniego postępowania w folderach `10_...` (oferty, korespondencja, `NIEJAWNE_TAJEMNICA/`).
- [ ] Wszystkie znaczniki `[Uzupełnić]` — uzupełnić albo usunąć przed publikacją. Żaden znacznik nie może trafić do SWZ ani ogłoszenia.

### Kontrola techniczna (PowerShell — opcjonalnie)

```powershell
$nowy = "C:\...\2026_ZP.271.5.2026_Przebudowa_drogi"
# Szukanie podejrzanych pozostałości po starym znaku sprawy / starych danych:
Get-ChildItem -Recurse -File $nowy |
  Select-String -Pattern 'ZP\.271\.4\.2026','2025-','[Uzupełnić]' |
  Select-Object Path, LineNumber, Line
```

> Uwaga: powyższy wzór to przykład — zawsze wpisz własny stary znak sprawy i własny rok. Wynik musi być pusty przed rozpoczęciem czynności.

### Podział na strefy dostępu

```text
00_.../                         # jawna metryka i checklisty (bez danych wrażliwych)
...
10_.../NIEJAWNE_TAJEMNICA/      # zastrzeżone informacje od wykonawców — dostęp ograniczony
10_.../RODO_DANE_OSOBOWE/       # dane osobowe, oświadczenia, pełnomocnictwa
```

**Zasada:** dokument wrażliwy nie może być współdzielony z wydziałem merytorycznym „dla wygody". Udostępnianie protokołu i materiałów odbywa się przez WZP po anonimizacji.

---

## 7. Kontrola końcowa przed archiwizacją

- [ ] Aktualna karta sprawy i rejestr terminów (wszystkie wpisy domknięte).
- [ ] Protokół ZP z kompletem załączników (art. 72 ust. 1 Pzp).
- [ ] Wykaz plików wrażliwych i potwierdzenie ich wyodrębnienia.
- [ ] Numer archiwum i data przekazania wpisane do karty sprawy.
- [ ] Dane do sprawozdania art. 82 Pzp przekazane do osoby odpowiedzialnej.
