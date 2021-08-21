--a
SELECT first_name, last_name FROM person WHERE first_name LIKE '%ski';
--b
SELECT * FROM person
LEFT JOIN person_address
ON person.id = person_address.person_id;
--c
SELECT CONCAT(first_name,' ',last_name) AS fullname
FROM person
LEFT JOIN person_address
ON person.id = person_address.person_id
WHERE address_id IS NULL
ORDER BY first_name;