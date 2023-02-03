show databases;
use cofee_store;
--  inner join

select * from products;
select * from orders;
select * from customers;

select products.name, orders.order_time from orders
inner join products on orders.product_id=products.id;

-- short hand version

select p.name , o.order_time,p.price from orders o
join products p on o.product_id = p.id
where o.product_id=5
order by o.order_time;

select c.first_name ,c.last_name, o.order_time from orders o 
join customers c on o.customer_id = c.id;

-- left join
update orders 
set customer_id = NULL 
where id=1;

select o.id,c.phone_number , c.last_name,o.order_time from customers c
left join orders o  on c.id = o.customer_id
order by o.order_time
limit 10;

-- right join 
select o.id,c.phone_number , c.last_name,o.order_time from orders o
right join customers c  on o.customer_id =  c.id
order by o.order_time
limit 10;

update orders 
set customer_id = 1 
where id=1;

select * from orders;


-- joining more than two tables 

select p.name , p.price,c.first_name, c.last_name , o.order_time from products p 
join orders o on p.id=o.product_id
join customers c on c.id=o.customer_id
where c.last_name = 'Martin'
order by o.order_time;


-- exercise 1 

select * from customers;
select * from orders; 
select * from products;

select o.id ,c.phone_number from orders o
join customers c  on c.id = o.customer_id
where o.product_id=4;

select p.name,o.order_time from products p
join orders o on p.id=o.product_id
where p.name = 'Filter'
and o.order_time between '2017-01-15' and '2017-02-14';

select p.name,p.price,o.order_time  from products p 
join orders o on o.product_id = p.id
join customers c on o.customer_id=c.id
where order_time between '2017-01-01' and '2017-01-31'
and c.gender = 'F';



 

