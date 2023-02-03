-- aggregate functions 
use cinema_booking_system;
select * from  customers;

-- count 

select count(*) from customers;
select count(first_name)from customers;

select count(*) from customers
where last_name='Smith';

select count(*) from customers
where first_name is null;

-- sum 
select * from rooms;
select sum(no_seats) from rooms;

select sum(no_seats) from rooms
where id>1;

-- min and max 

select * from films;

select max(length_min) from films;
select min(length_min) from films;

-- average 

select avg(length_min) from films
where length_min>120;

-- group by 

 select * from bookings;
 select customer_id,count(id) from bookings
 group by customer_id;

 select customer_id,screening_id,count(id) from bookings
 group by customer_id,screening_id;
 
 select f.name,s.start_time,c.first_name,c.last_name,count(b.id) from films f 
 join screenings s on f.id=s.film_id
 join bookings b on s.id=b.screening_id
 join customers c on b.customer_id=c.id
 group by f.name,c.last_name,c.first_name,s.start_time
 order by s.start_time;
 
 -- having clause 
 
select customer_id,screening_id,count(id) from bookings
 group by customer_id,screening_id
 having customer_id=10;


-- exercise 1

select count(customer_id) from bookings
where customer_id = 10;

select * from screenings;
select count(film_id) from screenings
where film_id = 1
and start_time between '2017-10-01' and '2017-10-31';

-- or
select count(*) from screenings s 
join films f on s.film_id=f.id
where f.name='Blade Runner 2049';

select count(distinct(customer_id)) from bookings;


-- exercise 2 

select * from reserved_seat;

select * from bookings;

select b.customer_id,count(r.seat_id) from reserved_seat r
join bookings b on r.booking_id=b.id
group by b.customer_id;

select * from screenings;
select * from films;

select f.name,f.length_min,count(s.id) from screenings s
join films f on s.film_id=f.id
group by f.name,f.length_min
having f.length_min > 120;
