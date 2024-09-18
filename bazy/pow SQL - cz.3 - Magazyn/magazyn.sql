Utwórz tabele:

Magazyny:
Kod  całkowity, klucz podstawowy
Lokalizacja tekst, nie puste
Pojemność całkowita, nie puste
CREATE TABLE Magazyny(
    kod int PRIMARY KEY,
    lokalizacja varchar(255) NOT NULL,
    pojemnosc int NOT NULL
);

Kontenery:
Kod tekst o stałej długości 4 znaków, klucz podstawowy,
Zawartosc tekst
Wartosc rzeczywista, dwa miejsca po przecinku, cztery przed
Magazyn całkowita, nie pusta, pole klucza obcego (odwołuje się do pola kod w tabeli magazyny)
CREATE TABLE Kontenery(
    kod char(4) PRIMARY KEY,
    zawartosc varchar(255),
    wartosc decimal(6,2),
    magazyn int NOT NULL,
    FOREIGN KEY(magazyn) REFERENCES Magazyny(kod)
);

 ......... ,
--  CONSTRAINT nazwa_konstraintu FOREIGN KEY (pole_klucza_obcego) REFERENCES tabela_do_ktorej_sie_odwołuje(powiązany_klucz_podstawowy)
-- );
 

 

Dodaj dane

 

 INSERT INTO Magazyny(Kod,Lokalizacja,Pojemnosc) VALUES(1,'Chicago',3);
 INSERT INTO Magazyny(Kod,Lokalizacja,Pojemnosc) VALUES(2,'Chicago',4);
 INSERT INTO Magazyny(Kod,Lokalizacja,Pojemnosc) VALUES(3,'New York',7);
 INSERT INTO Magazyny(Kod,Lokalizacja,Pojemnosc) VALUES(4,'Los Angeles',2);
 INSERT INTO Magazyny(Kod,Lokalizacja,Pojemnosc) VALUES(5,'San Francisco',8);
 INSERT INTO Magazyny(Kod,Lokalizacja,Pojemnosc) VALUES(6,'Chicago',3);
 
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('0MN7','Rocks',180,3);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn)  VALUES('4H8P','Rocks',250,1);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('4RT3','Scissors',190,4);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('7G3H','Rocks',200,1);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('8JN6','Papers',175,1);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('8Y6U','Papers',50,3);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('9J6F','Papers',175,2);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('LL08','Rocks',140,4);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('P0H6','Scissors',155,1);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('P2T6','Scissors',150,2);
 INSERT INTO Kontenery(Kod,Zawartosc,Wartosc,Magazyn) VALUES('TU55','Papers',90,5);
 

 

 

1. Wyświetl wszystkie dane o wszystkich magazynach (zrzut)
SELECT * FROM Magazyny;

2. Wyświetl wszystkie kontenery o wartości większej niż $150.  (zrzut)
SELECT zawartosc
FROM kontenery
WHERE wartosc>150;

3. Co jest przechowywane w kontenerach? Wyświetl zawartość tak, aby dane się nie powtarzały.   (zrzut)
SELECT DISTINCT zawartosc
FROM kontenery;

4. Wyświetl średnią wartość wszystkich kontenerów.   (zrzut)
SELECT AVG(wartosc) 
FROM kontenery;

5. Wyświetl kody magazynów wraz ze średnią wartością zawartych w nich kontenerów.  (zrzut)
SELECT kod, AVG(wartosc)
FROM kontenery
GROUP BY magazyn;

6. Wyświetl kody magazynów wraz ze średnią wartością zawartych w nich kontenerów, ale ogranicz się do tych, w których średnia wartość kontenerów jest większa niż 150.  (zrzut)
SELECT kod, AVG(wartosc)
FROM kontenery
WHERE wartosc>150;

7. Wyświetl kod każdego kontenera, wraz z miastem, gdzie jest zlokalizowany (czyli lokalizacją magazynu)  (zrzut)
SELECT kontenery.kod, lokalizacja 
FROM kontenery
    INNER JOIN Magazyny ON kontenery.magazyn=Magazyny.kod;

8. Wyświetl  kody magazynów wraz z liczbą kontenerów w każdym z tych magazynów.  (zrzut)
SELECT magazyn, COUNT(*)
FROM kontenery
GROUP BY magazyn;


9. Rozwiń poprzednie zapytanie tak, aby w zestawieniu były wymienione również magazyny, w których nie ma kontenerów (powinna być wyświetlona liczba zero, a nie magazyn pominięty w tym zestawieniu)  (zrzut)
SELECT magazyny.kod, COUNT(kontenery.kod)
FROM kontenery 
    RIGHT JOIN magazyny ON kontenery.magazyn = magazyny.kod
GROUP BY magazyny.kod;

Wskazówka: wybierz kod magazynu z tabeli magazyny oraz policz kod z tabeli Kontenery; dane wybieraj z dwóch tabel połączonych połączeniem rozszerzającym (LEFT JOIN lub RIGHT JOIN), z rozszerzanej strony powinna być tabela Magazyny (wybieramy wszystkie magazyny, także te, w których nie ma kontenerów); grupowanie według kodu magazynu
10.  Wyświetl kody wszystkich magazynów, które są przeładowane (magazyn jest przeładowany, jeśli liczba zawartych w nim kontenerów jest większa niż jego pojemność)  (zrzut)
SELECT magazyny.kod, magazyny.pojemnosc
FROM magazyny
WHERE pojemnosc < (SELECT COUNT(*) FROM kontenery WHERE magazyn);
 

np. wyświetl kody tych magazynów (z tabeli Magazyny), których pojemność jest mniejsza niż

(podzapytanie) ilość kontenerów (z tabeli kontenery), których kod magazynu (pole magazyn) jest taki jak kod magazynu z tabeli głównego zapytania (czyli Magazyny)


11. Wyświetl kody wszystkich kontenerów zlokalizowanych w Chicago wraz z lokalizacją i pojemnością magazynów . Uwzględnij w zestawieniu także te magazyny z Chicago, w których nie ma aktualnie kontenerów  (zrzut)

   

lub zastosuj podzapytanie (wyświetl kody kontenerów, dla których kod magazynu (magazyn) jest na liście (IN) kodów magazynów zlokalizowanych w Chicago. 

12. Utwórz nowy magazyn w Nowym Yorku z pojemnością 3 kontenerów.   (zrzut)

13. Utwórz nowy kontener, z kodem "H5RT",  zawierającym "Papers" z wartością $200 i zlokalizowany w magazynie o kodzie 2.  (zrzut)

14. Zmniejsz wartość wszystkich kontenerów o 15%.  (zrzut)

15 Usuń wszystkie kontenery o wartości mniejszej niż $100.  (zrzut)

16. Usuń wszystkie kontenery z przeładowanych magazynów.   (zrzut)

usuń wszystkie kontenery, których kod jest na liście (IN) kodów przeładowanych magazynów (tę wartość zwraca zapytanie nr. 10)