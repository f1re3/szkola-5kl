Utwórz bazę danych kucyki_imie_nazwisko
CREATE DATABASE spr_kocyki_Daniel_Sobiech;

Za pomocą phpMyAdmin zaimportuj do bazy tabelę wyniki z pliku wyniki.txt. 
-- zaponialem dolaczyc screena z udanego importu

Z poziomu wiersza poleceń utwórz tabelę druzyny, aby pasowała do danych z pliku druzyny.txt.
CREATE TABLE druzyny( 
    Id_druzyny int PRIMARY KEY, 
    Nazwa VARCHAR(30), 
    Miasto VARCHAR(30)
);

ALTER TABLE druzyny
DROP CONSTRAINT ch_id;

Z poziomu wiersza poleceń zaimportuj tabelę druzyny z pliku druzyny.txt
LOAD DATA INFILE 'C:\\xampp\\htdocs\\5E_DS\\sprawdziany\\sprawdzian\\druzyny.txt'
INTO TABLE druzyny
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

Z poziomu wiersza poleceń wyeksportuj do pliku bramki.csv bramki_zdobyte i bramki_stracone. Dane oddziel za pomocą średnika. 
SELECT bramki_zdobyte, bramki_stracone FROM wyniki  INTO OUTFILE
'C:\\xampp\\htdocs\\5E_DS\\sprawdziany\\sprawdzian\\bramki.csv'
FIELDS TERMINATED BY ';';

Wykonaj zrzut bazy danych (gorącą kopię logiczną) z poziomu phpMyAdmin oraz z poziomu wiersza poleceń do pliku kucyki_imie_nazwisko.sql
mysqldump -u root spr_kocyki_Daniel_Sobiech>kucyki_Daniel_Sobiech.sql

Do pliku wyniki.sql wykonaj zrzut tabeli wyniki. (z poziomu wiersza poleceń)
mysqldump -u root spr_kocyki_Daniel_Sobiech wyniki>wyniki.sql

Usuń bazę danych kucyki_imie_nazwisko. 
DROP DATABASE spr_kocyki_Daniel_Sobiech;

Z poziomu wiersza poleceń za pomocą przekierowania odtwórz bazę danych (przekieruj plik z kopią bazy danych)
mysql -u root kucyki_Daniel_Sobiech < kucyki_Daniel_Sobiech.sql