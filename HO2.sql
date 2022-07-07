-- rental history with customer id
select first_name, last_name, customer_id, rental_id FROM sakila.customer
Join sakila.rental
USING (customer_id)

--query that finds all films with actors that have an actor_id 5.
select title, actor_id FROM sakila.film
JOIN sakila.film_actor
USING (film_id)
WHERE sakila.film_actor.actor_id = 5

"query that lists out all information of every film along with the name of the language for each film, even if a language doesn't exist for that film."
select * FROM sakila.film
Inner Join sakila.film_actor
USING (film_id)

"query that lists out the title of films and the name of the actors who starred in those films. Additionally, only list films that starred artists whose first names start with a vowel."
select title, first_name, last_name from sakila.actor
Join sakila.film
where first_name Like 'a%' or first_name Like 'e%' or first_name Like 'i%' or first_name Like 'o%'or first_name Like 'u%'


"Part 2"

Select title, film_id, rental_date, inventory_id, amount
FROM sakila.inventory
Join sakila.film using (film_id)
Join sakila.rental using (inventory_id)
Join sakila.payment using (rental_id)
Where amount > 4.99