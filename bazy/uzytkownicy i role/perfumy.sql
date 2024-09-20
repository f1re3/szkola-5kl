1. Utwórz bazę perfumy i zaimportuj tabele marki.txt perfumy.txt i skład.txt (2019)

2. Utwórz użytkownika edytor z prawami do modyfikowania, usuwania i wstawiania danych we wszystkich tabelach bazy danych perfumy.
CREATE USER 'edytor_2'@'localhost';
GRANT UPDATE,DELETE,INSERT,SELECT ON jk_perfumy.* TO 'edytor_2';

3. Utwórz użytkownika selektor z prawami do wyszukiwania danych w tabeli perfumy z hasłem 1234
CREATE USER 'selektor_2'@'localhost';
GRANT SELECT ON jk_perfumy.perfumy TO 'selektor_2';
SET PASSWORD FOR 'selektor_2'@'localhost' = PASSWORD('1234');

4. Nadaj hasło użytkownikowi edytor 1234 oraz użytkownikowi selektor 5678
SET PASSWORD FOR 'edytor_2'@'localhost' = PASSWORD('1234');
SET PASSWORD FOR 'selektor_2'@'localhost' = PASSWORD('5678');

5. Odbierz użytkownikowi edytor prawo do usuwania danych z wszystkich tabel
REVOKE DELETE ON jk_perfumy.* FROM 'edytor_2';

6. Sprawdź uprawnienia
A. zaloguj się jako edytor i zmień cenę perfum o id p_1 na 400 (powinno się udać)
UPDATE perfumy
SET cena=400
WHERE id_perfum='p_1';

B. z poziomu konta edytor usuń wszystkie składniki perfum o id p_1 (nie powinno się udać)
DELETE FROM sklad
WHERE id_perfum='p_1';

C. zaloguj się jako selektor i wyszukaj wszystkie perfumy o cenie 400 (powinno się udać)


D. z poziomu konta selektor wyszukaj wszystkie składniki perfum o id p_1 (nie powinno się udać)
------------------------------------

CREATE ROLE 'app_developer', 'app_read', 'app_write';
GRANT ALL ON app_db.* TO 'app_developer';
GRANT 'app_developer' TO 'dev1'@'localhost';
REVOKE INSERT, UPDATE, DELETE ON app_db.* FROM 'app_write';


7. Dodaj rolę usuwanie
CREATE ROLE 'usuwanie';

8. Nadaj prawo do usuwania danych z wszystkich tabel dla roli usuwanie
GRANT DELETE ON jk_perfumy.* TO 'usuwanie';

9. Dodaj użytkownika selektor oraz edytor do roli usuwanie
GRANT 'usuwanie' TO 'edytor_2'@'localhost';
GRANT 'usuwanie' TO 'selektor_2'@'localhost';

10. Sprawdź czy selektor oraz edytor mają prawa do usuwania danych z bazy (usuń skład perfum p_2 oraz p_3)


11. Odmów selektorowi praw do usuwania (deny) z tabeli skład i sprawdź ponownie jego prawa do usuwania
