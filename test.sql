-- creating a test database
create database test;
-- Using Test Database
use test;

create table address (
id int ,
house_number int,
city varchar(20),
postcode varchar(7)
);

create table people(
id int,
first_name varchar(20),
last_name varchar(20),
address_id int
);

create table pets(
id int,
name varchar(20),
species varchar(20),
owner_id int
);

show tables; 

-- Adding Primary Keys in a table

alter table address
add primary key(id);
describe address;


describe people;
describe pets; 

alter table pets 
add primary key(id);


alter table people
add primary key(id);


-- Adding Foriegn Key to a table

alter table people
add constraint FK_PeopleAddress
foreign key(address_id) references address(id);

alter table pets 
add constraint FK_Owner
foreign key(owner_id) references people(id);

-- Removing Foriegn key to a table

alter table people
drop foreign key FK_PeopleAddress;

-- adding unique constraints to a column

alter table pets
add constraint u_species unique(species);

-- removing unique constraints to a column

alter table pets
drop index u_species;

-- Changing the column name 
alter table pets change `species` `animal_type` varchar(20);
alter table pets change `animal_type` `species` varchar(20);
select * from pets;
describe pets;
alter table pets change `name` `first_name` varchar(20);

-- Changing Columns Datatype
alter table address modify city varchar(30);
describe address;
alter table address modify postcode char(7);

-- Adding a new column and adding unique constraint to that column
alter table people 
add column email  varchar(20);
alter table people
add constraint emailers unique(email);


