Utwórz bazę danych samochody_imie_nazwisko
CREATE DATABASE 4e_2_samochody_Daniel_Sobiech

Za pomocą phpMyAdmin zaimportuj do bazy tabelę osoby z pliku osoby.txt. 

Z poziomu wiersza poleceń utwórz tabelę auta, aby pasowała do danych z pliku auta.txt.
CREATE TABLE auta(
    numer_rejestracyjny char(7) NOT NULL 
    marka
    rok_produkcji
    PESEL
);

CREATE TABLE wypadki(
    id_wypadku int PRIMARY KEY,
    data_wypadku DATE,
    nr_rej char(7),
    strata dec(9, 2)
);
LOAD DATA INFILE 'C:\\xampp\\htdocs\\5E_DS\\bazy\\import eksport kopia zapasowa wypadki\\wypadki.txt'
INTO TABLE wypadki
FIELDS TERMINATED BY ' '
LINES TERMINATED BY '\n'
(id_wypadku, data_wypadku, nr_rej,@var)
SET strata = REPLACE(@var, ',','.');

Z poziomu wiersza poleceń zaimportuj tabelę auta z pliku auta.txt


Z poziomu wiersza poleceń wyeksportuj do pliku samochody.txt markę i rok produkcji samochodów (było:  koszty.txt daty wypadków i wysokości straty.) Dane oddziel za pomocą średnika. 


Wykonaj zrzut bazy danych (gorącą kopię logiczną) z poziomu phpMyAdmin oraz z poziomu wiersza poleceń do pliku samochody_imie_nazwisko.sql


Do pliku osoby.sql wykonaj zrzut tabeli osoby (z poziomu wiersza poleceń)


Usuń bazę danych samochody_imie_nazwisko. 


Z poziomu wiersza poleceń za pomocą przekierowania odtwórz bazę danych (przekieruj plik z kopią bazy danych)
