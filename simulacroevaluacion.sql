1-select title FROM film
ORDER by title asc
2-select DISTINCT rating FROM film
ORDER by rating asc
3-select DISTINCT rating , replacement_cost FROM film
WHERE rating like "pg%"
ORDER by replacement_cost asc
4-select DISTINCT city,p.country_id FROM city c
join country p on c.country_id = p.country_id 
group by country