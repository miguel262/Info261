use sakila;
SELECT distinct a.first_name, a.last_name, b.city from customer a inner join address c inner join city b on c.city_id=b.city_id and a.address_id=c.address_id ;
