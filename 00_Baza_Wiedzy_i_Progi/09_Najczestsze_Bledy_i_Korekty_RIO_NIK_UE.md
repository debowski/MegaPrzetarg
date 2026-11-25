# Najczęstsze błędy i korekty (RIO / NIK / UZP / UE) — Ściągawka anty-kontrolna

Zestawienie najczęstszych naruszeń wykrywanych w polskich urzędach gmin podczas kontroli **Regionalnych Izb Obrachunkowych (RIO)**, **Najwyższej Izby Kontroli (NIK)**, **Prezesa UZP** oraz **Instytucji Zarządzających funduszami UE/KPO**, wraz ze wskazaniem sankcji i miejsca zabezpieczenia w tym repozytorium.

---

## 1. Naruszenia grożące odpowiedzialnością za dyscyplinę finansów publicznych (art. 17 u.o.d.f.p.)

| Obszar | Najczęstszy błąd w gminie | Skutek prawny / finansowy | Jak zapobiega nasz zestaw |
| :--- | :--- | :--- | :--- |
| **Dzielenie zamówienia** (`art. 29–30 Pzp`) | Rozbicie jednego zadania (np. remonty dróg lub zakupy IT w tym samym roku) na kilka umów `< 170 000 PLN` bez Pzp | Naruszenie dyscypliny finansów publicznych (art. 17 ust. 1b/1c u.o.d.f.p.); w UE **korekta 100%** | `00_Baza.../02_Matryca...` (3 tożsamości) + `05b_Plan_Postepowan...` |
| **Opis przedmiotu zamówienia** (`art. 99 Pzp`) | Wskazanie konkretnego producenta/modelu bez „lub równoważny” lub bez mierzalnych kryteriów równoważności | Zarzut ograniczenia konkurencji; w UE **korekta 10%–25%** | `02_.../01_Checklista_OPZ...` + `02_Szablon_OPZ...` |
| **Zawarcie umowy przedwcześnie** (`art. 264 / 308 Pzp`) | Podpisanie umowy przed upływem standstill (5/10 dni) lub mimo wniesionego odwołania do KIO | Unieważnienie umowy (art. 457 Pzp) + kara finansowa UZP | `06_.../01_Terminy_KIO...` + `07_.../01_Checklista_Zawarcia_Umowy...` |
| **Brak kontrasygnaty Skarbnika** (`art. 46 ust. 3 u.s.g.`) | Podpisanie umowy lub aneksu zwiększającego kwotę tylko przez Wójta/Zastępcę, bez kontrasygnaty | Czynność prawna **bezskuteczna**; zarzut RIO z zakresu gospodarki finansowej | `02_.../04_Wzor_Umowy...` + `07_.../01_` + `08_.../01_Aneks...` |
| **Nielegalny aneks** (`art. 454–455 Pzp`) | Przedłużenie terminu lub podniesienie ceny „za porozumieniem stron” bez klauzuli przeglądowej i przesłanek z art. 455 | Zmiana nieważna z mocy prawa (art. 458 Pzp); dyscyplina FP; w UE **korekta 25%–100%** | `08_.../01_Aneks_Weryfikacja_art_455_i_Wzor.md` |
| **Brak weryfikacji konfliktu interesów** (`art. 56 Pzp`) | Brak oświadczeń z art. 56 ust. 2 po otwarciu ofert lub podpisanie przed poznaniem listy wykonawców | Zarzut naruszenia bezstronności; w UE **korekta 100%** | `01_.../05_Powolanie_Komisji...` + `00_.../01_Checklista_Etapowa...` |
| **Pominięcie wykluczeń sankcyjnych** (`art. 7 ust. 1` / `art. 5k`) | Brak weryfikacji listy MSWiA przy zakupach `< 170 000 PLN` lub brak oświadczenia do art. 5k w przetargu UE | Kara pieniężna nakładana przez Szefa KAS (do 20 mln PLN przy sankcjach) + nieważność | `05_.../03_Notatka_Weryfikacja_Sankcyjna...` + `08_Wzor_Regulaminu...` |

---

## 2. Najczęstsze uchybienia formalne i terminowe (RIO / UZP)

1. **Brak wpisu lub spóźnienie w CRU JSFP (`art. 34a–34d u.f.p.`, od 1.07.2026 r.):** pomijanie umów podprogowych (`< 170 000 PLN`), zleceń mailowych w formie dokumentowej lub aneksów — obowiązuje **brak progu kwotowego** i sztywny termin **30 dni**.
2. **Brak ogłoszenia o wykonaniu umowy (`art. 448 Pzp`):** urzędy pamiętają o ogłoszeniu o wyniku (`art. 309`), ale zapominają o ogłoszeniu w BZP w ciągu **30 dni od zakończenia umowy** (dotyczy również umów zawartych w procedurze unijnej!).
3. **Błędny termin przedłużenia po zmianie SWZ (`art. 135 / 137 / 284 / 286 Pzp`):** udzielenie odpowiedzi na pytania po terminie (mniej niż 2 dni PL / 6 dni UE przed otwarciem) bez odpowiedniego wydłużenia terminu składania ofert.
4. **Błędna ważność gwarancji ZNWU (`art. 453 Pzp`):** przyjęcie gwarancji ważnej tylko do „terminu realizacji + 30 dni” — w takim przypadku gmina traci zabezpieczenie roszczeń z tytułu **rękojmi i gwarancji** (30% ZNWU musi być zabezpieczone aż do 15. dnia po upływie rękojmi/gwarancji).
5. **Brak badania rażąco niskiej ceny (`art. 224 ust. 2 pkt 1 Pzp`):** odstąpienie od wezwania, gdy cena oferty jest niższa o `>= 30%` od wartości zamówienia powiększonej o VAT lub od średniej arytmetycznej ofert niepodlegających odrzuceniu.
6. **Brak aktualizacji Planu Postępowań (`art. 23 Pzp`) lub niespójność ze sprawozdaniem rocznym (`art. 82 Pzp`):** wszczęcie postępowania `>= 170 000 PLN`, którego nie ujęto wcześniej w Planie na stronie BIP/internetowej gminy.
7. **Brak informacji do Prezesa UZP w terminie 7 dni (`art. 81 Pzp`)** lub brak raportu z realizacji umowy (`art. 446 Pzp`) przy opóźnieniu `>= 30 dni` (dla umów poniżej 10/20 mln EUR).

---

## 3. Najczęstsze błędy w projektach UE / KPO (korekty finansowe)

* **Próg zasady konkurencyjności (`> 80 000 PLN` netto):** opublikowanie zapytania tylko na BIP gminy zamiast w **Bazie Konkurencyjności (BK2021)**, albo prowadzenie korespondencji/składanie ofert poza BK2021 — typowa korekta **25%–100%**.
* **Brak opisania warunków zmiany umowy w zapytaniu BK2021:** późniejsze podpisanie aneksu terminowego lub rzeczowego w projekcie UE bez wcześniejszej klauzuli w zapytaniu ofertowym może zostać uznane za wydatek niekwalifikowalny.
* **Naruszenie terminów minimalnych lub skrócenie w BK2021:** w BK2021 obowiązuje min. **7 dni** (dostawy/usługi) i **14 dni** (roboty budowlane) — liczone zgodnie z wytycznymi (pełne dni, bez dnia publikacji!).
* **Brak dokumentacji zasady DNSH lub wymogów NZIA (od 30.06.2026 r.):** brak potwierdzenia w OPZ i protokole odbioru (np. dla instalacji OZE/OZE+magazyny energii, termomodernizacji).
* **Zbyt krótka archiwizacja:** zniszczenie dokumentacji po standardowych 5 latach (B5), podczas gdy umowa o dofinansowanie UE/KPO wymaga trwałości **10 lat lub dłużej** (B10 / B25).

---

## 4. Jak wdrożyć kontrolę prewencyjną w Urzędzie Gminy (3 zasady)

1. **Zasada „dwóch par oczu”:** przed publikacją SWZ/zapytania checklista OPZ (`02_/01_`), a przed oddaniem teczki do archiwum — **Karta Audytu Końcowego** (`09_/03_Audyt_Przed_Kontrola_RIO_NIK_UE.md`).
2. **Jednolity rejestr terminów po zawarciu umowy:** wpis do **CRU JSFP** (30 dni), ogłoszenie o wyniku **BZP/DUUE** (30 dni), zwrot wadium (7 dni), a po odbiorze — **art. 448 BZP** (30 dni) i zwrot 70% ZNWU (30 dni).
3. **Kwartalny przegląd progów (`art. 29–30 Pzp`):** porównanie wydatków wydziałów merytorycznych wg kodów CPV z `05_Plan_Postepowan_Pzp_Rejestr.csv`, aby wyłapać zakupy zbliżające się do `80 000 PLN` i `170 000 PLN`.
