use sakila;
SELECT count(rental_id) as cantidad_arriendo, customer_id as cliente FROM rental group by customer_id;