-- using mavenmovies database
USE mavenmovies;

-- Selecting first, last name and email for customer
SELECT 
    first_name, last_name, email
FROM
    customer;

-- Selecting unique rental duration for a film
SELECT DISTINCT
    rental_duration
FROM
    film;

-- Selecting rental details (customer, amount and date) of a film , filtered with customer id 
SELECT 
    customer_id, rental_id, amount, payment_date
FROM
    payment
WHERE
    customer_id < 100;

-- Selecting rental details (customer, amount and date) of films , filtered with all customer id less than 100, amount more than 5 and payment date  
SELECT 
    customer_id, rental_id, amount, payment_date
FROM
    payment
WHERE
    customer_id < 100 AND amount >= 5
        AND payment_date > '2006-01-01';

-- Selecting rental details (customer, amount and date) of films , filtered with (all customer id have less than 100 id and  payment date more than 2006-01-01) or amount more than 5 
SELECT 
    customer_id, rental_id, amount, payment_date
FROM
    payment
WHERE
    (customer_id < 100
        AND payment_date > '2006-01-01')
        OR amount >= 5;

-- Selecting list of films showing its title and its features filtered with feature type "Behind thw scenes"
SELECT 
    title, special_features
FROM
    film
WHERE
    special_features LIKE '%Behind the Scenes%';

-- Select total count of film_id wrt rental duration
SELECT 
    rental_duration, COUNT(film_id)
FROM
    film
GROUP BY rental_duration;

-- Selecting count of films, its minimum and maximum rental rate  and replacement cost sorted with largest replacemnet cost first
SELECT 
    replacement_cost,
    COUNT(film_id) AS number_of_films,
    MIN(rental_rate) AS cheapest_rental,
    MAX(rental_rate) AS most_expoensive_rental,
    AVG(rental_rate) AS average_rental
FROM
    film
GROUP BY replacement_cost
ORDER BY replacement_cost DESC; 