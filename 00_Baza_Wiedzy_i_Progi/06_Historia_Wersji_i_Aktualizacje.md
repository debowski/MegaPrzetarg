# Historia wersji, aktualizacje i lista kontrolna utrzymania zestawu

Dokument opisuje, kiedy i co sprawdzić, aby zestaw pozostał zgodny z prawem. **Stan prawny opracowania: 24 listopada 2026 r.**

> niniejszy zestaw jest narzędziem pracy, nie poradą prawną. W każdej sprawie wiążące są: tekst jednolity Pzp (**Dz.U. z 2026 r. poz. 793**), obwieszczenie Prezesa UZP o progach (**M.P. z 2025 r. poz. 1247**), umowa o dofinansowanie oraz wewnętrzne regulaminy Gminy.

---

## 1. Historia wersji

| Wersja | Data | Zakres zmian | Odpowiedzialny |
| :-- | :-- | :-- | :-- |
| 1.0 | 2026 | Podstawowy zestaw: baza wiedzy, 11 folderów tematycznych, generator PowerShell, konwencja nazewnictwa plików | Wydział ZP |
| **1.1** | **24.11.2026** | **Dokończenie i weryfikacja prawna:**<br>• korekta terminu przystąpienia do KIO (2 → **3 dni**, art. 525 ust. 1 Pzp);<br>• korekta progów raportu z art. 446 (20 mln / 10 mln EUR, nie „próg UE") i terminu 1 miesiąca;<br>• korekta obowiązku ogłoszenia o zmianie umowy (tylko art. 455 ust. 1 pkt 3 i 4; **brak progu 15 000 EUR**);<br>• korekta druku protokołu dla art. 275 pkt 3 (**ZP-TP**, nie ZP-ZC);<br>• uzupełnienie zmian od 2026 r.: KSeF, KIO (e-Doręczenia, prekluzja, rozprawy zdalne), cyberbezpieczeństwo ICT (art. 226 ust. 1 pkt 17 i 19), certyfikacja wykonawców, polityka zakupowa 2026–2029, poziomy zdolności od 1.01.2027;<br>• nowe pliki: historia wersji, słownik, wzór regulaminu podprogowego, notatka wyboru trybu, szkielet umowy, protokół negocjacji, instrumenty szczególne, wspólne zamówienia, karta oceny, odpowiedź na odwołanie | Wydział ZP |

---

## 2. Źródła weryfikacji (maj 2026 → listopad 2026)

1. **ISAP / ELI / Dz.U.:** ustawa z 11.09.2019 r. – Pzp, t.j. Dz.U. z 2026 r. poz. 793 (tekst obowiązujący od 12.07.2026 r.; kolejne zmiany: art. 214 i 364 od 1.12.2026 r., art. 112 od 1.01.2027 r.).
2. **UZP (gov.pl):** aktualne progi unijne 2026–2027 (M.P. poz. 1247, obwieszczenie z 8.12.2025 r., kurs 4,31 PLN/EUR); podwyższenie progu krajowego (Dz.U. 2025 poz. 1173); wykonawcy z państw trzecich (Dz.U. 2025 poz. 1165, od 9.09.2025 r.); certyfikacja wykonawców (Dz.U. 2025 poz. 1235, od 12.07.2026 r.).
3. **Dz.U.:** KSeF (ustawa z 9.08.2023 r. z późn. zm.), ustawa o KSC (Dz.U. z 2026 r. poz. 20 ze zm.) i nowelizacja Dz.U. 2026 poz. 252, rozporządzenie PRM z 12.03.2026 r. (Dz.U. 2026 poz. 329), rozporządzenie MF i G z 13.10.2026 r. (Dz.U. 2026 poz. 1393).
4. **M.P.:** Polityka zakupowa państwa 2026–2029 (M.P. 2026 poz. 413).
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
- [ ] Po każdej aktualizacji: wpisać nową wersję do tabeli powyżej i rozesłać informację do Wydziałów merytorycznych.

---

## 4. Zmiany zapowiedziane — nie stosować jako obowiązującego prawa

| Planowana data | Zmiana | Status na 24.11.2026 |
| :-- | :-- | :-- |
| **1.12.2026** | Zmiany w art. 214 i art. 364 Pzp w tekście jednolitym | Sprawdź ISAP tuż przed zastosowaniem — weryfikuj każdą sprawę według przepisów obowiązujących w dniu wszczęcia |
| **1.01.2027** | Poziomy zdolności dla robót budowlanych (Dz.U. 2026 poz. 1393; art. 112 ust. 3 Pzp) | Rozporządzenie opublikowane; przygotuj wzory warunków udziału |
| **2027 (projekt)** | Nowelizacja Pzp **UD409** (wpisy KIO, rażąco niska cena, rozprawy zdalne) | Projekt z 17.09.2026 r.; nie obowiązuje |
| **po 2027/2028** | Rozporządzenie UE **COM(2026) 590 — Public Procurement Act** | Wniosek Komisji z 9.09.2026 r.; dyrektywy 2014/24/UE i Pzp nadal obowiązują |
