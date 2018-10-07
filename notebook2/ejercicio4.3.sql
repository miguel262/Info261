use sakila;
SELECT MAX(total) FROM (SELECT customer_id,count(*) as total FROM rental GROUP BY customer_id) as t2;
#devuelve MAX(total)=46, es una subconsulta donde la primera instruccion
#SELECT customer_id,count(*) as total FROM rental GROUP BY customer_id;
#realiza una tabla donde en la primera columna almacena el id del cliente
#y en la segunda almacena la cantidad total que sería las veces que se
#hace mencion al cliente
# finalmente la instruccion MAX(total) nos muestra el numero maximo de 
#de la columna total. 