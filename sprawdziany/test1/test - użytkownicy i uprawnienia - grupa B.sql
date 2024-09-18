Utwórz bazę danych imie_nazwisko, Pobierz i wykonaj w nowej bazie danych skrypt tworzący tabele baza.sql. Udokumentuj na zrzutach wykonanie poniższych zadań (polecenie z efektem)
CREATE DATABASE Daniel_Sobiech;
USE Daniel_Sobiech;

1. Utwórz użytkownika edytor i daj mu prawa do wstawiania, modyfikowania i usuwania danych w tabeli Samochody. Uprawnienia powinny pozwalać na modyfikację oraz usuwanie wybranych wierszy w tabeli.
CREATE USER 'edytor'@'localhost';
GRANT DELETE, UPDATE, INSERT ON Daniel_Sobiech.Samochody TO 'edytor'@'localhost';

2.Utwórz użytkownika reporter z prawem do przeglądania wszystkich tabel w całej bazie imie_nazwisko i hasłem 'asdf'
CREATE USER 'reporter'@'localhost' IDENTIFIED BY 'asdf';
GRANT SELECT ON Daniel_Sobiech.* TO 'reporter'@'localhost';

3. Odbierz edytorowi prawo do usuwania w tabeli Samochody
REVOKE DELETE ON Daniel_Sobiech.Samochody FROM 'reporter'@'localhost';

4. Zaloguj się jako reporter i wyświetl wszystkie samochody z rocznika 2016 i 2014
mysql -u reporter -p
SELECT * 
FROM samochody
WHERE rocznik IN (2016, 2014);

5. Zaloguj się jako edytor i dodaj zieloną Skodę Octavię z 2015 roku z pogniecionym zderzakiem
mysql -u edytor -p
INSERT INTO samochody (marka, model, rocznik, kolor, stan)
VALUES ('skoda', 'octavia', 2015, 'zielony', 'pognieciony zderzak');

6. Zaloguj się jako reporter i zmień swoje hasło na '1234'
SET PASSWORD = PASSWORD('1234');

7. Wróć na konto root. Utwórz rolę usuwanie
CREATE ROLE usuwanie;

8. Nadaj roli usuwanie prawo do usuwania danych we wszystkich tabelach bazy imie_nazwisko
GRANT DELETE ON Daniel_Sobiech.* TO usuwanie;

9. Użytkownikowi edytor przydziel prawo do roli usuwanie
GRANT usuwanie TO 'edytor'@'localhost';

10. Usuń użytkownika reporter
DROP USER 'reporter'@'localhost';