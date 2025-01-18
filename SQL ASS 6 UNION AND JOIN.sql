create database country;
use country;

#TABLE CREATION
create table country ( ID int primary key, 
country_name varchar(100), population int , 
area varchar(100));

create table persons (ID INT primary key,
F_name varchar(100), L_name varchar(100), 
population int,  rating decimal(10,2),
Country_ID int, country_name varchar(100));

#Inserting values
insert into country (ID, country_name, population,
area) values (1, 'UK',1200000, 'Europe'),
(2,'Canada',800000,'North America'),
(3,'poland',1300000,'Europe'),
(4,'USA',1800000,'America'),
(5,'India',2500000,'asia'),
(6,'Australia',2000000,'Australia'),
(7,'china',4500000,'Asia'),
(8,'japan',700000,'Asia'),
(9,'france',900000,'Europe'),
(10,'germany',6500000,'Europe');

Insert into persons (ID, F_name, L_name, population,
rating, Country_ID, country_name) values
(1,'ram','kumar',1200000,4.7,1,'UK'),
(2,'raj','mohan',2500000,4.0,5,'India'),
(3,'meera','nandhan',2500000,4.0,5,'India'),
(4,'alexia','cox',2000000,4.2,6,'Australia'),
(5,'faye', 'bowen',800000,4.6,2,'canada'),
(6,'donna','brown',1800000,5.0,4,'USA'),
(7,'michelle','davies',1800000,5.0,4,'USA'),
(8,'sarah','thomas',6500000,4.8,10, 'germany'),
(9,'prasad','varkey',2500000,4.0,5,'India'),
(10,'jackey','rose',1200000,4.7,1,'UK');

#1. INNER JOIN, LEFT JOIN AND RIGHT JOIN
# INNER JOIN
Select * from country c
inner join persons p on c.ID = P.Country_ID;

#LEFT JOIN
Select * from country c
left join persons p on c.ID = P.Country_ID;

#RIGHT JOIN
Select * from country c
right join persons p on c.ID = P.Country_ID;

#2.DISTINCT COUNTRY NAMES 
select country_name as countries from country
union
select country_name from persons;

#3.ALL COUNTRY NAMES
select country_name as countries from country
union all
select country_name from persons;

#4. ROUNDED RATINGS
select F_name, L_name , rating, round(rating) from persons;