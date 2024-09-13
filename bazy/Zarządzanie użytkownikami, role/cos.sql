USE 4e_2_zarzadzanie_u_r;

CREATE TABLE customers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL, 
    last_name VARCHAR(255) NOT NULL, 
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(255)
);

INSERT INTO customers(first_name,last_name,phone,email) VALUES('John','Doe','(408)-987-7654','john.doe@mysqltutorial.org'), ('Lily','Bush','(408)-987-7985','lily.bush@mysqltutorial.org');



-- 1.Utwórz użytkowników: dev1 z hasłem 1234 oraz read1, write1 bez hasła  (dev2, read2, write2)
CREATE USER 'dev2'@'locahost' identified by '1234';
CREATE USER 'read2'@'locahost' identified by '1234';
CREATE USER 'write2'@'locahost' identified by '1234';

-- 2.Zmodyfikuj ustawienia kont:
-- A. hasło dla użytkownika dev powinno wygasnąć za miesiąc
ALTER USER 'dev2'@'locahost' PASSWORD EXPIRE INTERVAL 30 DAY;

-- B. zablokuj konto read
ALTER USER 'read2'@'locahost' ACCOUNT LOCK;

-- C. ustaw hasło dla konta write
SET PASSWORD FOR 'write2'@'locahost' = PASSWORD('1243');

-- D. użytkownik write powinien mieć prawo tylko do 100 operacji UPDATE na godzinę
ALTER USER 'write2'@'locahost' WITH
MAX_UPDATES_PER_HOUR 100;

-- E. odblokuj konto read
ALTER USER 'read2'@'locahost' ACCOUNT UNLOCK;

-- 3.Określ uprawnienia:
-- Nadaj wszystkie prawa dla użytkownika dev dla wszystkich tabel w bazie crm
GRANT ALL ON 4e_2_zarzadzanie_u_r.* TO 'dev2'@'locahost';

-- Daj prawo użytkownikowi write do modyfikowania struktury tabel w bazie crm
GRANT UPDATE ON 4e_2_zarzadzanie_u_r.* To 'write2'@'locahost';

-- daj prawo użytkownikowi read do przeglądania oraz usuwania danych w tabeli customers w bazie crm
GRANT SELECT, DELETE ON 4e_2_zarzadzanie_u_r.customers TO 'read2'@'locahost';

-- 4.Odbierz użytkownikowi read prawo do przeglądania danych w tabeli customers
REVOKE SELECT ON 4e_2_zarzadzanie_u_r.customers FROM 'read2'@'locahost';

-- 5.Zmień nazwę użytkownika dev na admin
RENAME USER 'dev2'@'locahost' To 'admin2'@'locahost';

6.Ustaw hasło użytkownikowi read '1234' (użyj set password)
SET PASSWORD FOR 'read2'@'locahost' = PASSWORD('1234');

7.Sprawdź uprawnienia:
użytkownika admin
SHOW grants FOR 'admin2'@'locahost';

użytkownika write
SHOW grants FOR 'write2'@'locahost';

8.Utwórz role write_customers oraz read_customers
CREATE ROLE 'write_customers2', 'read_customers2';

-- 9.Nadaj uprawnienia rolom:
-- write_customers prawa do wstawiania oraz modyfikowania i usuwania wybranych rekordów
GRANT UPDATE,INSERT ON 4e_2_zarzadzanie_u_r.* TO 'write_customers';

-- read_customers z prawem do przeglądania tabeli customers
GRANT SELECT ON 4e_2_zarzadzanie_u_r.customers TO 'read_customers';

-- 10.Przypisz role użytkownikom:
-- write_customers dla write
GRANT 'write_customers' TO 'write2'@'locahost';
-- read_customers dla read
GRANT 'read_customers' TO 'read2'@'locahost';

11. Sprawdź uprawnienia:
-- użytkownika write
SHOW grants FOR 'write2'@'locahost';

-- użytkownika read (czy ma prawo do usuwania danych?)
SHOW grants FOR 'read2'@'locahost';

-- roli write_customers;
SHOW grants FOR 'write_customers';

-- roli read_customers
SHOW grants FOR 'read_customers';

12. Zaloguj się jako read i sprawdź uprawnienia.
SHOW grants;

czy użytkownik read ma prawo do przeglądania danych?
jeśli jest taka potrzeba użyj SET ROLE aby "włączyć" rolę
SET ROLE 'read_customers';

czy użytkownik read ma prawo do usunięcia klienta o id 1


13. Z poziomu root ustaw jako domyślną rolę write_customers dla użytkownika write  (SET DEFAULT ROLE)


14. Zaloguj się jako write i sprawdź, czy możesz zmienić nazwisko klienta o id=2 na Tree 


15. Usuń
A. rolę write_customers


B. Usuń użytkownika read
