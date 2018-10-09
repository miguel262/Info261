use sakila;
SELECT distinct last_name, amount as monto FROM customer inner join  payment on payment.customer_id=customer.customer_id where payment.amount>10.00;