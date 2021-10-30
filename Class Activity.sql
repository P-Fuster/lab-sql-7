-- Lab SQL 7
-- 1. In the table actor, which are the actors whose last names are not repeated?
select last_name, count(actor_id) as Times from actor
group by last_name
having Times = 1;

-- 2. Which last names appear more than once?
select last_name, count(actor_id) as Times 
	from actor
	group by last_name
	having Times > 1;

-- 3. Using the rental table, find out how many rentals were processed by each employee.
select staff_id, count(rental_id) as 'Rentals per employee'
	from rental
	group by staff_id;

-- 4. Using the film table, find out how many films were released each year.
select release_year, count(film_id) as 'How many movies were released each year'
	from film
	group by release_year;
	
-- 5. Using the film table, find out for each rating how many films were there.
select rating, count(film_id) as 'Number of films per rating'
	from film
	group by rating;

-- 6. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select rating, round(avg(length), 2) as 'Mean average'
	from film
	group by rating;

-- 7. Which kind of movies (rating) have a mean duration of more than two hours?
select rating, round(avg(length), 2) 
	from film
	group by rating
	having avg(length) > 120; 
