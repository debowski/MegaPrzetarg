---
title: "Instrukcja przygotowania JEDZ (ESPD) oraz publikacji ogłoszeń w TED (eNotices2 / eForms)"
category: "instrukcja"
stage: "procedura"
procedure: [C]
author_role: "specjalista ds. zamówień publicznych"
output:
  - docx
  - pdf
description: >
  Instrukcja przygotowania JEDZ/ESPD oraz publikacji ogłoszeń w TED
  przez eNotices2/eForms dla postępowań unijnych.
---

# Instrukcja przygotowania JEDZ (ESPD) oraz publikacji ogłoszeń w TED (eNotices2 / eForms)

Dokument pomocniczy dla postępowań o wartości **równej lub przekraczającej progi unijne**.

---

## 1. Przygotowanie pliku JEDZ / ESPD (XML)
1. Wejdź na oficjalne narzędzie ESPD udostępnione przez Urząd Zamówień Publicznych: **`https://espd.uzp.gov.pl/`** (lub wbudowany kreator platformy zakupowej).
2. Wybierz opcję **„Jestem instytucją zamawiającą” -> „Utwórz nowy dokument ESPD”**.
3. Wypełnij:
   - **Część I:** dane Urzędu Gminy, tytuł postępowania, numer referencyjny (`[Znak sprawy]`), numer ogłoszenia w DUUE (można wpisać po nadaniu lub wskazać „przekazano do publikacji dnia ...”).
   - **Część III (Podstawy wykluczenia):** zaznacz obowiązkowe przesłanki z art. 108 ust. 1 (oraz ust. 2 jeśli dotyczy) i **tylko te** przesłanki z art. 109 ust. 1, które wskazałeś w SWZ i ogłoszeniu!
   - **Część IV (Kryteria kwalifikacji):** zdecyduj, czy wymagasz szczegółowego wypełniania sekcji A–D, czy dopuszczasz **sekcję α (alfa)** — *„Ogólne oświadczenie dotyczące wszystkich kryteriów kwalifikacji”* (w praktyce gminnej zaznaczenie sekcji α bardzo upraszcza życie wykonawcom i zmniejsza liczbę błędów formalnych!).
4. Wyeksportuj plik **`espd-request.xml`** (oraz podgląd PDF) i dołącz do dokumentacji zamówienia na stronie postępowania.
5. **Pamiętaj:** Wygeneruj dodatkowo odrębne oświadczenie o braku podstaw wykluczenia z **art. 5k Rozporządzenia (UE) 833/2014** oraz **art. 7 ust. 1 ustawy sankcyjnej**, ponieważ sam formularz JEDZ tego nie obejmuje!

---

## 2. Publikacja ogłoszeń eForms w DUUE przez eNotices2
1. Publikacja odbywa się przez europejski portal **eNotices2** (`enotices2.ted.europa.eu`) lub zintegrowaną bramkę na Platformie **e-Zamówienia**.
2. **Wybór właściwego formularza eForms (Rozporządzenie 2019/1780):**
   - Wstępne ogłoszenie informacyjne (PIN — jeśli skracasz termin do 15 dni): **eForms 4 / 7**;
   - Ogłoszenie o zamówieniu (CN — Dyrektywa klasyczna 2014/24/UE): **eForms 16**;
   - Ogłoszenie o zmianie / sprostowaniu (Corrigendum): w trybie zmiany formularza bazowego;
   - Dobrowolne ogłoszenie o przejrzystości ex ante (VEAT — przy wolnej ręce UE): **eForms 25**;
   - Ogłoszenie o udzieleniu zamówienia (CAN): **eForms 29** (w terminie **30 dni** od zawarcia umowy lub unieważnienia — art. 265 ust. 1 Pzp).
3. **Zasada pierwszeństwa DUUE (art. 88 Pzp — KRYTYCZNE!):**
   - **Nie wolno publikować** SWZ ani żadnego ogłoszenia na stronie internetowej prowadzonego postępowania w Polsce **przed publikacją ogłoszenia w Dzienniku Urzędowym UE (TED)**, chyba że minęło **48 godzin** od otrzymania potwierdzenia otrzymania ogłoszenia przez Urząd Publikacji UE!
   - W praktyce: wyślij ogłoszenie przez eNotices2 -> zachowaj potwierdzenie otrzymania (z dokładną datą i godziną) -> zaczekaj na publikację w TED (zwykle 2–5 dni) lub upływ 48h -> dopiero wtedy opublikuj SWZ, JEDZ i ogłoszenie na stronie postępowania!
4. **Rejestr publikacji w TED w tej sprawie:**
   - ID ogłoszenia w eNotices2: `[...]`
   - Data i godzina wysłania do UPUE: `[RRRR-MM-DD GG:MM]`
   - Numer publikacji w DUUE (TED): `[np. 123456-2026]` z dnia `[RRRR-MM-DD]`
   - Najwcześniejsza dopuszczalna data publikacji krajowej (art. 88): `[RRRR-MM-DD GG:MM]`
