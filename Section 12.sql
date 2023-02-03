-- functions 

-- concatenate 

-- select concat(column1,column2) as new_column_name from table name

use cinema_booking_system;

select concat(first_name,last_name) as full_name from customers;

select concat(first_name," ",last_name) as full_name from customers;



select concat(first_name," ",last_name," " ,email) as full_name from customers;


select concat("This is ",first_name," ",last_name," 's  email " ,email) as full_name from customers;


-- substrings

-- substring(string,start,length)

select substring("Example",3,3) as Sub;

select name from films;
select substring(name,1,3) as short_name from films;
select substring(name,5,4) as short_name from films;
select substring(name,-2,2) as short_name from films;


-- uppercase and lower case
-- select upper(column1) as new_column name from table1;
-- select lower(column1) as new_column name from table1;

select name from rooms;

select upper(name) as capital_name from rooms;
select lower(name) as capital_name from rooms;


-- exercise 1 
select * from films;
select concat(name," ",length_min) from films;

select* from customers;
select substring(email,5) from customers;

select first_name,last_name from customers
where last_name= 'Smith';

select lower(first_name),upper(last_name) from customers
where last_name = 'Smith';

select substring(name,-3) from films;

select concat(substring(first_name,1,3)," ",substring(last_name,1,3)) from customers;

-- date 
-- date (column_name)
-- month (column name)
-- year(column name)

select * from screenings 
where date(start_time)= '2017-10-03';