<#
.SYNOPSIS
    Generator folderu nowego postępowania o udzielenie zamówienia publicznego dla Wydziału ZP Urzędu Gminy.
.DESCRIPTION
    Kopiuje folder _SZABLON_POSTEPOWANIA do nowego katalogu roboczego w strukturze repozytorium,
    opcjonalnie porządkuje niepotrzebne ścieżki proceduralne w podfolderze 03_Procedura_i_Dokumenty_Zamowienia
    oraz wstępnie wypełnia dane identyfikacyjne w pliku 00_Karta_Postepowania.md.
.EXAMPLE
    .\04_Generator_Nowego_Postepowania.ps1 -ZnakSprawy "ZP.271.15.2026" -NazwaKrotka "Przebudowa_drogi_gminnej" -Sciezka "B"
    .\04_Generator_Nowego_Postepowania.ps1 -ZnakSprawy "ZP.271.2.2027" -NazwaKrotka "Dostawa_paliwa" -Sciezka "C" -Rok "2027" -KatalogDocelowy "D:\TeczkiZP"
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$ZnakSprawy,

    [Parameter(Mandatory = $true)]
    [string]$NazwaKrotka,

    [Parameter(Mandatory = $false)]
    [ValidateSet("A", "B", "C", "D", "ALL")]
    [string]$Sciezka = "ALL",

    [Parameter(Mandatory = $false)]
    [string]$WydzialMerytoryczny = "[Uzupełnić: Wydział merytoryczny]",

    [Parameter(Mandatory = $false)]
    [string]$Prowadzacy = "[Uzupełnić: Imię i nazwisko specjalisty ds. ZP]",

    [Parameter(Mandatory = $false)]
    [ValidatePattern('^\d{4}$')]
    [string]$Rok = (Get-Date).ToString("yyyy"),

    [Parameter(Mandatory = $false)]
    [string]$KatalogDocelowy = ""
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($ZnakSprawy) -or [string]::IsNullOrWhiteSpace($NazwaKrotka)) {
    throw "Znak sprawy i nazwa skrócona nie mogą być puste."
}

$RepoRoot = Split-Path -Parent $PSScriptRoot
if ([string]::IsNullOrWhiteSpace($KatalogDocelowy)) {
    $KatalogDocelowy = $RepoRoot
}
if (-not (Test-Path $KatalogDocelowy)) {
    throw "Katalog docelowy nie istnieje: $KatalogDocelowy"
}
$SzablonPath = Join-Path $RepoRoot "_SZABLON_POSTEPOWANIA"

if (-not (Test-Path $SzablonPath)) {
    throw "Nie znaleziono folderu wzorcowego: $SzablonPath"
}

$BezpiecznyZnak = ($ZnakSprawy -replace '[\\/:*?"<>|\s]+', '_')
$BezpiecznaNazwa = ($NazwaKrotka -replace '[\\/:*?"<>|\s]+', '_')
$NazwaFolderuDocelowego = "${Rok}_${BezpiecznyZnak}_${BezpiecznaNazwa}"
$DocelowyPath = Join-Path $KatalogDocelowy $NazwaFolderuDocelowego

if (Test-Path $DocelowyPath) {
    throw "Folder docelowy już istnieje: $DocelowyPath"
}

Write-Host "Kopiowanie szablonu do: $DocelowyPath ..." -ForegroundColor Cyan
Copy-Item -Path $SzablonPath -Destination $DocelowyPath -Recurse

# Opcjonalne pozostawienie tylko wybranej ścieżki proceduralnej w folderze 03_
$ProcPath = Join-Path $DocelowyPath "03_Procedura_i_Dokumenty_Zamowienia"
$MapaSciezek = @{
    "A" = "A_Podprogowe_ponizej_170tys"
    "B" = "B_Krajowe_Pzp_od_170tys_do_progow_UE"
    "C" = "C_Unijne_Pzp_powyzej_progow_UE"
    "D" = "D_Tryby_Szczegolne_i_Niekonkurencyjne"
}

if ($Sciezka -ne "ALL") {
    $Zostaw = $MapaSciezek[$Sciezka]
    foreach ($klucz in $MapaSciezek.Keys) {
        if ($klucz -ne $Sciezka) {
            $DoUsuniecia = Join-Path $ProcPath $MapaSciezek[$klucz]
            if (Test-Path $DoUsuniecia) {
                Remove-Item -Path $DoUsuniecia -Recurse -Force
                Write-Host "Usunięto nieużywaną ścieżkę: $($MapaSciezek[$klucz])" -ForegroundColor DarkGray
            }
        }
    }
    Write-Host "Pozostawiono ścieżkę proceduralną: $Zostaw" -ForegroundColor Green
}

# Wstępne uzupełnienie karty postępowania
$KartaPath = Join-Path $DocelowyPath "00_Karta_Sprawy_i_Checklisty\00_Karta_Postepowania.md"
if (Test-Path $KartaPath) {
    $Dzis = (Get-Date).ToString("yyyy-MM-dd")
    $Tresc = Get-Content -Path $KartaPath -Raw -Encoding UTF8
    $Tresc = $Tresc -replace '\[Uzupełnić: Znak sprawy, np\. ZP\.271\.1\.2026\]', $ZnakSprawy
    $Tresc = $Tresc -replace '\[Uzupełnić: Pełna nazwa zamówienia\]', $NazwaKrotka
    $Tresc = $Tresc -replace '\[Uzupełnić: Wydział merytoryczny\]', $WydzialMerytoryczny
    $Tresc = $Tresc -replace '\[Uzupełnić: Osoba prowadząca w WZP\]', $Prowadzacy
    $Tresc = $Tresc -replace '\[Uzupełnić: Data założenia teczki\]', $Dzis
    Set-Content -Path $KartaPath -Value $Tresc -Encoding UTF8
}

Write-Host "`nGotowe! Utworzono nowe postępowanie:" -ForegroundColor Green
Write-Host "  $DocelowyPath" -ForegroundColor Yellow
Write-Host "`nKolejne kroki:" -ForegroundColor Cyan
Write-Host "  1. Sprawdz progi i tryb: 00_Baza_Wiedzy_i_Progi/01_Progi_i_Terminy_2026_2027.md"
Write-Host "  2. Wypelnij 01_.../07_Notatka_Wyboru_Trybu_Zgodnosci.md i 02_Protokol_Szacowania..."
Write-Host "  3. Pracuj od folderu 00_ do 10_, odhaczajac 01_Checklista_Etapowa_Caly_Proces.md"
Write-Host "  4. Stan prawny zestawu: 24.11.2026 (06_Historia_Wersji_i_Aktualizacje.md)"
