use sakila;
select staff_id, montoTotal from(SELECT staff_id, count(amount) as montoTotal FROM payment where payment_date BETWEEN "2005-08-23 00:00:00" and "2005-08-23 23:59:59" group by staff_id) as qw where montoTotal=331;
#cambiar 331 por codigo MAX(montoTotal) no funciona :c 