SELECT * FROM sakila.actor WHERE first_name = "CUBA"

SELECT title,film_id FROM sakila.film WHERE film_id > 5 AND film_id < 20

SELECT first_name, last_name, email FROM sakila.customer WHERE last_name = "Rodriguez" OR last_name LIKE "Mc%"

SELECT * FROM sakila.film WHERE title LIKE 'a%'

SELECT title from sakila.film WHERE language_id NOT IN(SELECT language_id from sakila.language WHERE name = "English" OR name = "Japanese")

SELECT rental_id, payment_date FROM payment WHERE amount > .99

SELECT staff_id, customer_id FROM payment WHERE amount > .99