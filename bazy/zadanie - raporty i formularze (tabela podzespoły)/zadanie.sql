B. Utwórz poniższe kwerendy. Wykonaj z poziomu phpMyAdmin i udokumentuj wykonanie pełnoekranowym zrzutem. Treść kwerend przekopiuj do pliku kwerendy.txt. 
Dodaje dane do tabeli podzespoły (typy_id, nazwa, cena)
INSERT INTO podzespoly (typy_id, nazwa, cena)
VALUES (1, 'ryzen 5 3600', 987);

Wyświetla nazwy podzespołów i cenę (tabela podzespoły)
SELECT nazwa, cena
FROM podzespoly;

dla poszczególnych typów podzespołów wyświetla maksymalną cenę
SELECT typy_id, MAX(cena)
FROM podzespoly
GROUP BY typy_id;

wyświetli nazwę podzespołów i nazwy ich typów(kategorii) (tabela podzespoly i typy)
SELECT podzespoly.nazwa, typy.kategoria 
FROM podzespoly
    INNER JOIN typy ON podzespoly.typy_id = typy.id;

wyświetli id podzespołu, nazwę typu (kategorii), cenę
SELECT podzespoly.id, typy.kategoria, podzespoly.cena
FROM podzespoly
    INNER JOIN typy ON podzespoly.typy_id=typy.id;