select * from films
where length_min > 120;

select * from screenings;

select f.name,count(s.film_id) as screenings from films f
join screenings s on s.film_id = f.id
group by film_id
order by screenings desc
limit 1;

select * from customers;
select * from bookings;
select * from screenings;
select * from films;

select count(*) from bookings
where screening_id in
(select id from screenings 
where film_id =5);


select c.first_name,c.last_name,count(b.id) as no_bookings from bookings b 
join customers c on c.id=b.customer_id
group by c.first_name,c.last_name
order by no_bookings desc
limit 5;

select * from rooms;

select f.name,count(r.name) as most_often from screenings s
join films f on f.id=s.film_id
join rooms r on r.id=s.room_id
where r.id=1
group by f.name
order by most_often desc
limit 1;

select count(distinct(customer_id)) as no_customers from bookings;
