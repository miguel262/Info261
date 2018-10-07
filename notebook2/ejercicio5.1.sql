use sakila;
SELECT title, name FROM film INNER JOIN language ON film.language_id = language.language_id;
