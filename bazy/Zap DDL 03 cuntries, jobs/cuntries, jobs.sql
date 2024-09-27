1. Utwórz tabelę countries z polami: country_id, country_name i  region_id. Tabela powinna być utworzona tylko wtedy, gdy nie istnieje.
CREATE TABLE countries(
    country_id INT,
    country_name varchar(255),
    region_id INT 
);

2. Utwórz tabelę dup_countries będącą kopią tabeli countries (struktura i dane)
CREATE TABLE dup_countries AS
SELECT * FROM countries

3. Z tabeli dup_countries usuń pole region_id


4. Pole country_id powinno być kluczem podstawowym z autoinkrementacją


5. Zmień nazwę pola country_id na id_country


6. Pole country_name nie powinno być puste - dodaj odpowiedni warunek


7. Zmodyfikuj tabelę countries tak, aby tylko wybrane cztery kraje (wymyśl jakie) będą mogły byc wpisane do tej tabeli


8. Usuń tabelę dup_countries


9. Utwórz tabelę jobs zawierajacą pola id_job, job_title, min_salary, max_salary, dodaj regułę, która sprawi, że max_salary nie przekroczy limitu 25000


10. Do tabeli jobs dodaj warunek pilnujący, aby wartości w polu job_title się nie powtarzały


11. Do tabeli jobs dodaj wartość domyślną na polu min_salary 8000 oraz wartość domyślną NULL na polu max_salary


12. Utwórz tabelę job_histry z polami: employee_id, start_date, end_date, job_id  oraz department_id . Określ klucz podstawowy (zakładamy, że pracownik nie pracuje jednocześnie na więcej niż jednym stanowisku) 


13 zmodyfikuj tabelę job_histry przesuwając pole job_id na początek tabeli


14. Do tabeli job_histry dodaj klucz obcy na polu job_id


15. Do tabeli job_histry dodaj regułę, która będzie pilnowała wprowadzania daty w formacie rrrr-mm-dd
