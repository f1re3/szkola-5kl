‒ Zapytanie 1: wybierające jedynie imię, nazwisko i miasto klientów z miast: Legionowo, Warszawa
SELECT imie, nazwisko, miasto
FROM klient
WHERE miasto IN ('Legionowo', 'Warszawa');

‒ Zapytanie 2: wybierające jedynie nazwę produktu dla produktów o cenie brutto wyższej od 500 zł
SELECT nazwa
FROM produkty
WHERE cena_brutto > 500;

‒ Zapytanie 3: wybierające nazwę kategorii z tabeli kategorie i odpowiadającą jej wartość średniej arytmetycznej cen brutto produktów tej kategorii z tabeli produkty. Należy posłużyć się relacją.
SELECT nazwa_kategorii, AVG(cena_brutto)
FROM kategorie
    INNER JOIN produkty ON kategorie.id_kat = produkty.id_kat
GROUP BY nazwa_kategorii;

‒ Zapytanie 4: wybierające id zamówienia, ilość i wartość z tabeli zamowienia oraz odpowiadającą im nazwę produktu z tabeli produkty dla klienta o id równym 2. Należy posłużyć się relacją
SELECT id_zam, ilosc, wartosc, nazwa
FROM zamowienia
    INNER JOIN produkty ON zamowienia.id_prod = produkty.id_prod
WHERE id_klient = 2;