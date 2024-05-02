1-select title FROM film
ORDER by title asc
2-select DISTINCT rating FROM film
ORDER by rating asc
3-select DISTINCT rating , replacement_cost FROM film
WHERE rating like "pg%"
ORDER by replacement_cost asc
4-select DISTINCT city,p.country FROM city c
join country p on c.country_id = p.country_id 
group by country
5-select DISTINCT p.country,count(city)as ciudad FROM city c
join country p on c.country_id = p.country_id 
group by country
ORDER by ciudad desc
6-select DISTINCT p.country,count(city) as ciudad FROM city c
join country p on c.country_id = p.country_id 
group by country
HAVING count(city) > 2
ORDER by ciudad desc
7-select  min(return_date) AS antigua, max(return_date) AS nueva FROM rental
8-SELECT p.title, COUNT(f.actor_id) as actores  FROM film_actor f
JOIN film p ON f.film_id = p.film_id
GROUP by f.actor_id
ORDER by  actores DESC
LIMIT 10
