Dodaje nowe danie do tabeli dania (id typu, nazwa, cena)
INSERT INTO dania (typ, nazwa, cena)
VALUES  (1, zurek, 54)

Wyświetla dostępne dania (id typu, nazwa, cena). 
SELECT typ, nazwa, cena
FROM dania;

Dla poszczególnych typów dań wyświetla średnią cenę. Zmień nazwę pola z ceną na srednia_cena
SELECT typ, AVG(cena)
FROM dania
GROUP BY typ;

Wyświetla nazwy typów dań i nazwy dań wraz z ceną (tabela dania i typy_dan)
SELECT typy_dan.nazwa, dania.nazwa
FROM dania 
    INNER JOIN typy_dan ON dania.typ = typy_dan.id;

wyświetla id typów dań i ich nazwę (tabela typy_dan)
SELECT id, nazwa
FROM typy_dan;