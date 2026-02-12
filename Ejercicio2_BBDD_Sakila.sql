-- Base de Datos Sakila
USE sakila;
-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados.

SELECT DISTINCT title  #elimina los registros repetidos en la title
FROM film;

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".

SELECT DISTINCT title
FROM film
WHERE rating = "PG-13";

-- 3. Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción.

SELECT DISTINCT title, description
FROM film
WHERE description LIKE '%amazing%';

-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.

SELECT DISTINCT title, length
FROM film
WHERE  length > 120;

-- 5. Recupera los nombres de todos los actores.

SELECT DISTINCT CONCAT(first_name," ", last_name) AS Nombre_completo
FROM actor;

-- 6. Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.

SELECT DISTINCT first_name, last_name
FROM actor
WHERE first_name OR last_name LIKE '%Gibson%';


-- 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.
-- 8. Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación.
-- 9. Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento.
-- 10. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.
-- 11. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.
-- 12. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración.
-- 13. Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".
-- 14. Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.
-- 15. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.