--  1
 Zapytanie 1: wstawiające do tabeli filmy jeden rekord o danych: film „Suburbicon” z roku 2017, gatunek filmu to komedia, ocena jest równa 5
INSERT INTO filmy (gatunki_id, tytul, rok, ocena)
VALUES ((SELECT id FROM gatunki WHERE nazwa = "komedia"), "Suburbicon", 2017, 5);

Zapytanie 2: wybierające jedynie pole tytul z tabeli filmy oraz odpowiadające mu pole nazwa z tabeli gatunki dla filmów, dla których pole ocena ma wartość 6. Należy posłużyć się relacją
SELECT tytul, gatunki.nazwa 
FROM filmy
    INNER JOIN gatunki ON filmy.gatunki_id = gatunki.id
WHERE ocena = 6;

Zapytanie 3: wybierające jedynie pola tytul oraz rok z tabeli filmy tylko dla gatunku dramatów o ocenie równej 5
SELECT tytul, rok
FROM filmy
WHERE gatunki_id = (SELECT id FROM gatunki WHERE nazwa = "dramat")
AND 
ocena = 5;

Zapytanie 4: tworzące tabelę o nazwie aktorzy i polach id typu numerycznego, imie typu tekstowego, nazwisko typu tekstowego. Pole id nie może przyjmować wartości NULL
CREATE TABLE aktorzy(
    id int NOT NULL,
    imie varchar(30),
    nazwisko varchar(30)
);

-- 2

Zapytanie 1: wybierające jedynie pola tytul, rok oraz ocena z tabeli filmy tylko dla gatunku komedii
SELECT tytul, rok, ocena 
FROM filmy
WHERE gatunki_id = (SELECT id FROM gatunki WHERE nazwa = 'komedia');

Zapytanie 2: wybierające jedynie pola id i tytul z tabeli filmy oraz odpowiadające im pola imie i nazwisko z tabeli rezyserzy. Należy posłużyć się relacją
SELECT filmy.id, tytul, rezyserzy.imie, rezyserzy.nazwisko
FROM filmy
    INNER JOIN rezyserzy ON filmy.rezyserzy_id = rezyserzy.id;

Zapytanie 3: wybierające jedynie pola id oraz tytul z tabeli filmy tylko dla filmów z roku 2017, dla których wartość wynosi 6
SELECT id, tytul
FROM filmy
WHERE rok = 2017
AND 
ocena = 6;

Zapytanie 4: zmieniające dane w tabeli rezyserzy. Pole imie w rekordzie o id równym 8 ma nowe brzmienie „Francis Ford”
UPDATE rezyserzy
SET imie = "Francis",
nazwisko = "Ford"
WHERE id = 8;

-- 3
Zapytanie 1: wybierające jedynie pola nazwa oraz potoczna z tabeli grzyby jedynie dla grzybów jadalnych
SELECT nazwa, potoczna
FROM grzyby
WHERE jadalny = 1;

Zapytanie 2: wybierające jedynie pola nazwa i potoczna z tabeli grzyby oraz odpowiadające im potoczna nazwa z tabeli rodzina jedynie dla grzybów, do których przypisana jest potrawa sos
SELECT grzyby.nazwa, potoczna, rodzina.nazwa
FROM grzyby 
    INNER JOIN rodzina ON grzyby.rodzina_id = rodzina.id
WHERE potrawy_id = (SELECT id FROM potrawy WHERE nazwa = "sos");

Zapytanie 3: wybierające jedynie pola nazwa_pliku oraz potoczna z tabeli grzyby
SELECT nazwa_pliku, potoczna
FROM grzyby;

Zapytanie 4: dodające do tabeli rodzina pole opis typu tekstowego
ALTER TABLE rodzina