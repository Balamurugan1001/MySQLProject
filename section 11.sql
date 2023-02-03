-- subqueries 

-- non correlated subqueries 

use cinema_booking_system;

select id,start_time from screenings 
where film_id in 
(select id from films 
where length_min>120);

select id from films 
where length_min>120;

select * from customers;
select * from bookings;

select first_name,last_name,email from customers
where id in 
(select customer_id from bookings
where screening_id =1);


-- non correlated subqeries "From"

select avg(no_seats), max(no_seats) from
(select booking_id ,count(seat_id) as no_seats from reserved_seat
group by booking_id)b;

-- correlated subqueries 
select screening_id,customer_id,
(select count(seat_id)
from reserved_seat where booking_id = b.id )
from bookings b
order by screening_id;



-- exercise 1 

USE cinema_booking_system; 

-- 1. Select the film name and length for all films with a length greater than the average film length. 

SELECT name, length_min FROM films 
WHERE length_min >
(SELECT AVG(length_min) FROM films);

SELECT AVG(length_min) FROM films;

-- 2. Select the maximum number and the minimum number of screenings for a particular film.

SELECT MAX(id), MIN(id) FROM
(SELECT film_id, COUNT(id) AS id FROM screenings
GROUP BY film_id) a;

-- 3. Select each film name and the number of screenings for that film.

SELECT name, 
(SELECT COUNT(id) FROM screenings 
WHERE film_id = f.id
)
FROM films f;

