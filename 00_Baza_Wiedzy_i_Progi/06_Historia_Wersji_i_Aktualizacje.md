---
title: "Historia wersji, aktualizacje i lista kontrolna utrzymania zestawu"
category: "baza-wiedzy"
stage: "baza-wiedzy"
procedure: [A, B, C, D]
author_role: "specjalista ds. zamówień publicznych"
output:
  - docx
  - pdf
description: >
  Historia wersji zestawu i lista kontrolna utrzymania — co i kiedy sprawdzać,
  aby szablony pozostały zgodne z aktualnym stanem prawnym.
---

# Historia wersji, aktualizacje i lista kontrolna utrzymania zestawu

Dokument opisuje, kiedy i co sprawdzić, aby zestaw pozostał zgodny z prawem. **Stan prawny opracowania: 25 listopada 2026 r.**

> niniejszy zestaw jest narzędziem pracy, nie poradą prawną. W każdej sprawie wiążące są: tekst jednolity Pzp (**Dz.U. z 2026 r. poz. 793**), obwieszczenie Prezesa UZP o progach (**M.P. z 2025 r. poz. 1247**), umowa o dofinansowanie oraz wewnętrzne regulaminy Gminy.

---

## 1. Historia wersji

| Wersja | Data | Zakres zmian | Odpowiedzialny |
| :-- | :-- | :-- | :-- |
| 1.0 | 2026 | Podstawowy zestaw: baza wiedzy, 11 folderów tematycznych, generator PowerShell, konwencja nazewnictwa plików | Wydział ZP |
| **1.1** | **24.11.2026** | **Dokończenie i weryfikacja prawna:**<br>• korekta terminu przystąpienia do KIO (2 → **3 dni**, art. 525 ust. 1 Pzp);<br>• korekta progów raportu z art. 446 (20 mln / 10 mln EUR, nie „próg UE") i terminu 1 miesiąca;<br>• korekta obowiązku ogłoszenia o zmianie umowy (tylko art. 455 ust. 1 pkt 3 i 4; **brak progu 15 000 EUR**);<br>• korekta druku protokołu dla art. 275 pkt 3 (**ZP-TP**, nie ZP-ZC);<br>• uzupełnienie zmian od 2026 r.: KSeF, KIO (e-Doręczenia, prekluzja, rozprawy zdalne), cyberbezpieczeństwo ICT (art. 226 ust. 1 pkt 17 i 19), certyfikacja wykonawców, polityka zakupowa 2026–2029, poziomy zdolności od 1.01.2027;<br>• nowe pliki: historia wersji, słownik, wzór regulaminu podprogowego, notatka wyboru trybu, szkielet umowy, protokół negocjacji, instrumenty szczególne, wspólne zamówienia, karta oceny, odpowiedź na odwołanie | Wydział ZP |
| **1.2** | **25.11.2026** | **Audyt kompletności i domknięcie braków:**<br>• korekta w głównej checkliście: przystąpienie do KIO **3 dni** (art. 525 ust. 1), obowiązkowa odpowiedź min. 5 dni i prekluzja dowodowa;<br>• korekta w głównej checkliście i checkliście BZP: ogłoszenie o zmianie umowy — **niezwłocznie** (brak sztywnego terminu ustawowego), wyłącznie zmiany z art. 455 ust. 1 pkt 3 i 4;<br>• korekta okresu ważności ZNWU: gwarancja musi pokrywać też okres rękojmi/gwarancji (art. 453 ust. 2–3), nie tylko „termin realizacji + 30 dni";<br>• nowe wzory pism w `05_`: wezwanie do wyjaśnienia treści oferty (art. 223 ust. 1), wezwanie z art. 128 ust. 1, zawiadomienie o poprawieniu omyłki (art. 223 ust. 2);<br>• nowe pliki w `D_`: konkurs (**art. 325–358**, obowiązek poprzedzania zamówień projektowych, ZP-KO) oraz zamówienia zastrzeżone (**art. 94 — wskaźnik 30%**, nie 80%);<br>• uzupełnienie pakietu skilla `.opencode/skills/gminne-zamowienia-publiczne/` (3 references + 3 templates);<br>• uwaga: zmiany **art. 214 i 364 od 1.12.2026** oraz art. 112 od 1.01.2027 — sprawdź przed wszczęciem | Wydział ZP |
| **1.3** | **25.11.2026** | **Audyt i aktualizacja bazy `00_Baza_Wiedzy_i_Progi`:**<br>• korekta ustawy o elektromobilności (uchylenie sztywnego wymogu z d. art. 68 ust. 3 przy zlecaniu zadań od 1.01.2025 r.; aktualne progi z art. 35 i 68a–68e oraz autobusy zeroemisyjne od 1.01.2026 r.);<br>• dodanie **Centralnego Rejestru Umów (CRU JSFP, art. 34a–34d u.f.p.)** obowiązującego od 1.07.2026 r. bez progu kwotowego (30 dni);<br>• uzupełnienie rozporządzeń wykonawczych do certyfikacji (**Dz.U. 2026 poz. 709 i 1116**), **e-Doręczeń** (od 1.01.2026 r.), **NZIA (rozp. UE 2024/1735, art. 25)** od 30.06.2026 r. oraz **EED (dyr. 2023/1791, art. 7)** / dyrektywy sektorowej 2014/25/UE | Wydział ZP |

---

## 2. Źródła weryfikacji (maj 2026 → listopad 2026)

1. **ISAP / ELI / Dz.U.:** ustawa z 11.09.2019 r. – Pzp, t.j. Dz.U. z 2026 r. poz. 793 (tekst obowiązujący od 12.07.2026 r.; kolejne zmiany: art. 214 i 364 od 1.12.2026 r., art. 112 od 1.01.2027 r.).
2. **UZP (gov.pl):** aktualne progi unijne 2026–2027 (M.P. poz. 1247, obwieszczenie z 8.12.2025 r., kurs 4,31 PLN/EUR); podwyższenie progu krajowego (Dz.U. 2025 poz. 1173); wykonawcy z państw trzecich (Dz.U. 2025 poz. 1165, od 9.09.2025 r.); certyfikacja wykonawców (Dz.U. 2025 poz. 1235, od 12.07.2026 r.).
3. **Dz.U.:** KSeF (ustawa z 9.08.2023 r. z późn. zm.), ustawa o KSC (Dz.U. z 2026 r. poz. 20 ze zm.) i nowelizacja Dz.U. 2026 poz. 252, rozporządzenie PRM z 12.03.2026 r. (Dz.U. 2026 poz. 329), rozporządzenia MF i G dot. certyfikacji (Dz.U. 2026 poz. 709, poz. 1116, poz. 1393), ustawa o finansach publicznych (art. 34a–34d — CRU JSFP od 1.07.2026 r.), ustawa o doręczeniach elektronicznych (pełne stosowanie od 1.01.2026 r.).
4. **M.P. / UE:** Polityka zakupowa państwa 2026–2029 (M.P. 2026 poz. 413); Rozporządzenie (UE) 2024/1735 (NZIA, art. 25 — pełne stosowanie od 30.06.2026 r.); Dyrektywa (UE) 2023/1791 (EED, art. 7 / projekt UC77).
5. **Wytyczne kwalifikowalności wydatków 2021–2027** (zmiana progu zasady konkurencyjności do 80 000 PLN od 25.03.2025 r.) oraz umowa o dofinansowanie projektu / KPO (DNSH, trwałość, kwalifikowalność).

---

## 3. Co sprawdzić przy aktualizacji (minimum raz na kwartał i przed każdą nowelizacją)

- [ ] **Progi i kurs EUR** — czy obowiązuje jeszcze kurs 4,31 PLN/EUR i progi z M.P. 2025 poz. 1247 (ważne do 31.12.2027 r.; kolejna aktualizacja od 1.01.2028 r.).
- [ ] **Próg krajowy** — czy art. 2 ust. 1 pkt 1 Pzp nadal wskazuje 170 000 PLN; sprawdź przepisy przejściowe dla postępowań wszczętych przed zmianą.
- [ ] **Tekst jednolity Pzp** w ISAP — lista „Ostatnie zmiany" i „Najbliższe zmiany" przy każdym artykule.
- [ ] **Terminy ustawowe** w `01_Progi_i_Terminy_2026_2027.md` — art. 135, 138, 224, 264, 274, 283, 284, 286, 307, 308, 515.
- [ ] **Certyfikacja wykonawców** — czy wydano już certyfikaty / zaczęły działać poziomy zdolności; zaktualizuj wzór oświadczenia z art. 125 ust. 1.
- [ ] **Cyberbezpieczeństwo** — wykaz rekomendacji Pełnomocnika Rządu ds. Cyberbezpieczeństwa i decyzji o dostawcach wysokiego ryzyka (BIP Ministerstwa Cyfryzacji / M.P.).
- [ ] **KIO** — opłaty od odwołań, adres e-Doręczeń UZP, komunikaty Prezesa KIO o rozprawach zdalnych.
- [ ] **Wytyczne UE i umowy o dofinansowanie** — zmiany w zasadzie konkurencyjności, korektach, trwałości projektu, DNSH.
- [ ] **Regulamin udzielania zamówień podprogowych Gminy** — czy progi wewnętrzne nadal odpowiadają progom ustawowym (170 000 PLN) i wymogom finansowanym z UE (> 80 000 PLN).
- [ ] **Generator PowerShell** — czy ścieżki w `$MapaSciezek` odpowiadają aktualnym nazwom folderów w `_SZABLON_POSTEPOWANIA/03_...`.
- [ ] **CRU JSFP i e-Doręczenia** — weryfikacja terminowego raportowania umów w CRU (30 dni) oraz obsługi korespondencji PURDE.
- [ ] **NZIA / EED** — aktualne akty wykonawcze KE do art. 25 NZIA oraz postęp krajowej transpozycji dyrektywy EED (projekt UC77).
- [ ] Po każdej aktualizacji: wpisać nową wersję do tabeli powyżej i rozesłać informację do Wydziałów merytorycznych.

---

## 4. Zmiany zapowiedziane — nie stosować jako obowiązującego prawa

| Planowana data | Zmiana | Status na 25.11.2026 |
| :-- | :-- | :-- |
| **1.12.2026** | Zmiany w art. 214 i art. 364 Pzp w tekście jednolitym | Sprawdź ISAP tuż przed zastosowaniem — weryfikuj każdą sprawę według przepisów obowiązujących w dniu wszczęcia |
| **1.01.2027** | Poziomy zdolności dla robót budowlanych (Dz.U. 2026 poz. 1393; art. 112 ust. 3 Pzp) | Rozporządzenie opublikowane; przygotuj wzory warunków udziału |
| **2027 (projekt)** | Nowelizacja Pzp **UD409** (wpisy KIO, rażąco niska cena, rozprawy zdalne) | Projekt z 17.09.2026 r.; nie obowiązuje |
| **po 2027/2028** | Rozporządzenie UE **COM(2026) 590 — Public Procurement Act** | Wniosek Komisji z 9.09.2026 r.; dyrektywy 2014/24/UE i Pzp nadal obowiązują |
