1. napisz skrypt  tworzący tabelę kierowcy , ale tylko wtedy, gdy tabela nie istnieje, określ klucz podstawowy  (zrzut) (tabela ma pasować do pliku o tej nazwie)
CREATE TABLE IF NOT EXISTS kierowcy(
    PESEL char(11 )PRIMARY KEY,
    data_prawa_jazdy DATE,
    miasto varchar(255)
);

2. Wykonaj skrypt z poziomu wiersza poleceń metodą przekierowania (skrypt wykonaj do dowolnej bazy danych)
mysqldump -u root 4e_2_importeksport_spr < 

3. Z poziomu wiersza poleceń zaimportuj dane do tabeli kierowcy
LOAD DATA INFILE 'C:\\xampp\\htdocs\\5E_DS\\sprawdziany\\import eksport widoki\\kierowcy.txt'
INTO TABLE kierowcy
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

4.  zaimportuj tabelę mandaty z poziomu phpMyAdmin (nie określaj klucza podstawowego) 
folder ss

5. Do pola miasto w tabeli kierowcy dodaj indeks
CREATE INDEX kierowcy ON kierowcy(miasto);

6.  Z poziomu wiersza poleceń wyeksportuj z tabeli kierowcy pesel i miasto do  pliku kierowcy.csv, dane oddziel spacją. Na zrzucie pokaż też początek zawartości pliku kierowcy.csv (otwórz w notatniku lub podobnym programie)
SELECT pesel, miasto
FROM kierowcy
INTO OUTFILE 'C:\\xampp\\htdocs\\5E_DS\\sprawdziany\\import eksport widoki\\kierowcy.csv'
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

7. Utwórz widok KierowcyMandaty  z polami pesel , data_prawa_jazdy, miasto, data_wyk
CREATE VIEW KierowcyMandaty as
SELECT kierowcy.pesel, kierowcy.data_prawa_jazdy, kierowcy.miasto, mandaty.data_wyk
FROM kierowcy
	INNER JOIN mandaty ON kierowcy.PESEL=mandaty.pesel;

8. Korzystając z widoku i tabeli kierowcy podaj liczbę kierowców, którzy nie otrzymali żadnego mandatu. 
SELECT COUNT(*)
FROM kierowcymandaty
WHERE data_wyk IS NULL;

9. Utwórz widok IloscMandatow zawierający zestawienie ilości mandatów dla poszczególnych kierowców, wraz z miastami, w których zdawali prawo jazdy. pola pesel, miasto, ilosc_mandatow. 
CREATE VIEW iloscMandatow as
SELECT COUNT(data_wyk)as ilosc_mandatow, miasto, kierowcy.pesel
FROM kierowcy
    INNER JOIN mandaty ON kierowcy.PESEL=mandaty.pesel
GROUP BY pesel;

10. Korzystając z widoku iloscMandatow wyświetl trzy miasta w których zdawali kierowcy posiadający największą ilość mandatów na koncie
SELECT Miasto
FROM iloscMandatow
ORDER BY ilosc_mandatow desc
LIMIT 3;