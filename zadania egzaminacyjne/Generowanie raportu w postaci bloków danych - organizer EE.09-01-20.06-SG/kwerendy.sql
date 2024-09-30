Zapytanie 1: wybierające jedynie pola dataZadania, miesiac i wpis z tabeli zadania dla zadań, których miesiąc to sierpień
SELECT dataZadania, miesiąc, wpis
FROM zadania
WHERE miesiąc = 'sierpień';

Zapytanie 2: wybierające jedynie pola miesiac i rok z tabeli zadania dla zadania z datą 2020-08-01
SELECT miesiąc, rok
FROM zadania
WHERE dataZadania = '2020-08-01';

Zapytanie 3: wybierające jedynie pole wpis i wyświetlające je bez powtórzeń, z tabeli zadania dla wpisów kończących się literą „o” 
SELECT DISTINCT wpis
FROM zadania
WHERE wpis LIKE '%o';

Zapytanie 4: zmieniające pole wpis w tabeli zadania dla zadania z datą 2020-08-27, nowy wpis to „Wycieczka: Karkonosze”
UPDATE zadania
SET wpis = 'Wycieczka: Karkonosze'
WHERE dataZadania = '2020-08-27';