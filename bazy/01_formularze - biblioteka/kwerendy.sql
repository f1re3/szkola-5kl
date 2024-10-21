 Zapytanie 1: wstawiające do tabeli czytelnicy nowy rekord z danymi: Anna, Michalak, an05mi
INSERT INTO czytelnicy (imie, nazwisko, kod)
VALUES ('Anna', 'Michalak', 'an05mi');

- Zapytanie 2: wybierające jedynie pola imie i nazwisko dla wszystkich rekordów w tabeli czytelnicy
SELECT imie, nazwisko
FROM czytelnicy;

- Zapytanie 3: wybierające jedynie pole tytul dla wszystkich utworów, których autorem jest Fredro
SELECT tytul 
FROM ksiazki
WHERE id_autor = (SELECT id FROM autorzy WHERE nazwisko = 'Fredro');

- Zapytanie 4: wybierające jedynie pole nazwisko dla wszystkich rekordów w tabeli autorzy oraz obliczające ilość tytułów danego autora znajdujących się w bazie biblioteka. Pole obliczające ilość tytułów należy nazwać ilosc.
SELECT nazwisko, COUNT(ksiazki.tytul)
FROM autorzy
    INNER JOIN ksiazki ON autorzy.id = ksiazki.id_autor
GROUP BY nazwisko;