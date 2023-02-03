show databases;
use cofee_store;

-- selecting a table 

select * from customers;
select last_name from customers;
select last_name , phone_number from customers;


-- using where clause 
select * from products 
where cofee_origin = 'Columbia';

select * from products 
where price = 3.00;

-- using where clause for two or more filter
select * from products 
where price = 3.00
and cofee_origin = 'Columbia';

-- using where clause for any of the condition ia true (using or)
select * from products 
where price = 3.00
or cofee_origin = 'Columbia';

-- using inequality symbos (>,<,<=,>=)

select * from products 
where price >= 3.00;

select * from products 
where price <= 3.00;


-- null values

select * from customers 
where phone_number is null;

select * from customers 
where phone_number is not null;

-- in , not in 

select * from customers 
where last_name in ('Taylor','Bluth','Armstrong');

select * from customers 
where first_name  not in("Katie","John","George");

-- between
select product_id,customer_id,order_time from orders
where order_time between '2017-01-01' and '2017-01-07';


select product_id,customer_id,order_time from orders
where customer_id between 5 and 10;

select * from customers
where last_name between 'A' and 'L';

-- like 

/*
% - any number of characters after the string 
-  - just one character


*/

select * from customers 
where last_name like 'W%';

select * from customers 
where last_name like '%o%';

select * from customers 
where first_name like '_o_';

select * from products
where price like '3%';


-- order by  

select * from products
order by price asc;

select * from products
order by price desc;

select * from customers 
order by last_name asc;

select * from customers 
order by last_name desc;

select * from orders

where customer_id =1
order by order_time asc;

select * from orders
where customer_id =1
order by order_time desc;

-- distinct

select distinct cofee_origin from products;

select distinct customer_id from orders
where order_time between '2017-02-01' and '2017-02-28'; 

select distinct customer_id , product_id from orders
where order_time between '2017-02-01' and '2017-02-28';



-- limit 

select * from customers
limit 5; 

select * from customers
limit 5 offset 5; 

select * from customers
order by last_name 
limit 10; 


-- column name alias (Renaming a column)

select name as coffee, price,cofee_origin as country from products;
select * from products;

-- exercise 1

select first_name , Phone_number  from customers 
where gender = 'F'
and last_name = 'Bluth';

select name from products 
where price >=3.00
or cofee_origin = 'Sri Lanka';

select * from customers 
where gender = 'M'
and Phone_number is null;

-- exercise 2 

select name,price from products
where cofee_origin in ('Columbia','Indonesia')
order by name;

select * from orders
where customer_id in (2,4,6,8)
and order_time  between '2017-02-01' and '2017-02-28';

select First_name,Phone_number from customers
where last_name like '%ar%';

-- exercise 3 

select distinct last_name  from customers
order by last_name ;


select * from orders
where customer_id =1
and order_time between '2017-02-01' and '2017-02-28'
limit 3;

select name,price as retail_price ,cofee_origin from products;



