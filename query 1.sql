show databases; -- will show all database in my sql

use sakila; -- use sakila as database

-- show table to see all table
show tables;

 -- select statement (DQL)  : here, (*) == access all column
 select  *  from actor;
 
 describe actor; -- will give table (column, datatype , relationships and more)
 
 select actor_id, first_name from actor;
 
 select ACtor_id, first_name from aCTOr; -- statement can be in any case 
 
 -- we can write (query) / code in multi line and acces any column 2 or more times...
 select actor_id, first_name,
 actor_ID, last_name
 from actor;
 
-- original data will not affected by (actor_id*5) --> statement...
select actor_id, first_name, actor_id*5 from actor; 

-- to filter rows 
 select * from actor where actor_id = 6;

-- to find key in column..


-- can acces any column by select;;;;
select * from actor where first_name = 'NICK'; -- NOO, (" ") , here only single (' ')
select * from actor where last_name = 'STALLONE'; 
select actor_id, last_name, first_name from actor where LAST_name='DAVIS';

-- we can use aritmetic operators in SQL too (>,<,+,-,*,/).... 
select * from actor where actor_id = 5;
select * from actor where actor_id < 5;
select * from actor where actor_id > 5;

-- when there is two conditions in a statement we can use logical operators in SQL... (and, not, or)

select * from actor where first_name = 'NICK' and actor_id=44;
select * from actor where first_name = 'NICK' or actor_id=44;

-- we can use shorthand operators in SQL

select * from actor where first_name = 'NICK' and actor_id!=44;
select * from actor where first_name = 'NICK' or actor_id!=46;

select * from actor where actor_id < 2 and actor_id < 6;
select * from actor where actor_id < 2 or actor_id > 6;

-- special operator in SQl --> between 

select * from actor where actor_id between 2 and 6; -- lower to higher only

-- we can use not + between .... 

select * from actor where actor_id not between 2 and 6;

-- when we want specific value .... here: we use (in) operator 

select * from actor where actor_id in (2,34,67);
select * from actor where first_name in ('NICK', 'ED', 'DAVIS');

