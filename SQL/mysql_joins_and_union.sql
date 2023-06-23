use mavenmovies;
/* 
1. My partner and I want to come by each of the stores in person and meet the managers. 
Please send over the managers’ names at each store, with the full address 
of each property (street address, district, city, and country please).  
*/ 
SELECT 
    store.store_id,
    staff.first_name,
    staff.last_name,
    address.address,
    address.district,
    city.city,
    country.country
FROM
    store
        LEFT JOIN
    staff ON store.manager_staff_id = staff.staff_id
        LEFT JOIN
    address ON store.address_id = address.address_id
        LEFT JOIN
    city ON city.city_id = address.city_id
        LEFT JOIN
    country ON city.country_id = country.country_id;

/*
2.	I would like to get a better understanding of all of the inventory that would come along with the business. 
Please pull together a list of each inventory item you have stocked, including the store_id number, 
the inventory_id, the name of the film, the film’s rating, its rental rate and replacement cost. 
*/

SELECT 
    *
FROM
    inventory;

-- inventory id, store id, film name rate rental rate and replacement cost
select * from film; 

-- film name, rating, rental rate and replacement cost
select inventory.inventory_id, inventory.store_id, film.title, film.rating, film.rental_rate, film.replacement_cost
from inventory left join film
on inventory.film_id= film.film_id;

/* 
3.	From the same list of films you just pulled, please roll that data up and provide a summary level overview 
of your inventory. We would like to know how many inventory items you have with each rating at each store. 
*/
select * from inventory; -- store_id, count of inventory_id
select * from film; -- rating 

select inventory.store_id, film.rating, count( distinct inventory.inventory_id) as Number_of_inventory_Item
from inventory left join film
on inventory.film_id= film.film_id 
group by inventory.store_id, film.rating;

/* 
4. Similarly, we want to understand how diversified the inventory is in terms of replacement cost. We want to 
see how big of a hit it would be if a certain category of film became unpopular at a certain store.
We would like to see the number of films, as well as the average replacement cost, and total replacement cost, 
sliced by store and film category. 
*/ 
select * from film;   -- replacement cost of films
select * from film_category; -- no of film in each category
select * from category; -- name
select * from inventory; -- store_id 

select inventory.store_id, category.name, count( distinct film_category.film_id) as total_films, 
round(avg(film.replacement_cost), 2) as avg_replacementCost, sum(replacement_cost) as total_replacementCost
from inventory 
left join film_category on inventory.film_id = film_category.film_id 
left join film on film_category.film_id = film.film_id
left join category on category.category_id= film_category.category_id
group by inventory.store_id, category.name
order by inventory.store_id, category.name;

/*
5.	We want to make sure you folks have a good handle on who your customers are. Please provide a list 
of all customer names, which store they go to, whether or not they are currently active, 
and their full addresses – street address, city, and country. 
*/

select * from customer;
select * from address;
select * from city;
select * from country;
select * from store;

select customer.first_name, customer.last_name, customer.store_id, customer.active, address.address, city.city,
country.country  from customer
left join address on customer.address_id= address.address_id
left join city on city.city_id= address.city_id
left join country on country.country_id= city.country_id;

/*
6.	We would like to understand how much your customers are spending with you, and also to know 
who your most valuable customers are. Please pull together a list of customer names, their total 
lifetime rentals, and the sum of all payments you have collected from them. It would be great to 
see this ordered on total lifetime value, with the most valuable customers at the top of the list. 
*/
select * from customer;
select * from rental;
select * from payment;

SELECT 
    customer.first_name,
    customer.last_name,
    COUNT(rental.rental_id) AS total_rental,
    SUM(payment.amount) AS total_payment_amount
FROM
    customer
        LEFT JOIN
    rental ON rental.customer_id = customer.customer_id
        LEFT JOIN
    payment ON payment.rental_id = rental.rental_id
GROUP BY customer.first_name , customer.last_name
ORDER BY SUM(payment.amount) DESC;
    
/*
7. My partner and I would like to get to know your board of advisors and any current investors.
Could you please provide a list of advisor and investor names in one table? 
Could you please note whether they are an investor or an advisor, and for the investors, 
it would be good to include which company they work with. 
*/
SELECT 
    first_name, last_name, company_name, 'Investor' AS type
FROM
    investor 
UNION SELECT 
    first_name, last_name, NULL, 'Advisor' AS type
FROM
    advisor;