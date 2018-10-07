use sakila;
SELECT customer_id, rental_id, amount, payment_date FROM payment WHERE payment_date BETWEEN "2005-07-01" AND "2005-08-01";