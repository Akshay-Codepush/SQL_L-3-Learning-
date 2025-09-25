-- like operator ( data filter according to pattern )... 
-- ( % ) is used to define pattern 
-- [ % ] --> zero or more character

use sakila;
select * from actor where first_name like 'A%';
select * from actor where first_name like '%S%';
select * from actor where first_name like 'S%';

-- ( _ ) : only 1 character... 
-- any character at ( _ ) not further.. 

select * from actor where first_name like 'E_';
select * from actor where first_name like 'A__%';
select * from actor where first_name like '_A%';
select * from actor where first_name like '_D%';

-- FUNCTIONSSS..... 

-- .IN-BUILT - FUNTIONS 
-- There are manly 2 type of funtions ..
-- SCALAR FUNTIONS(ROW FUNCTIONS)  ||   MULTI-ROW FUNCTIONS...
-- |
-- ----> apply on each row and return the output for each row
-- 
select first_name, char_length(first_name), lower(first_name) from actor;

select first_name, last_name, concat(first_name,' ',last_name) from actor;

select first_name, last_name, concat_ws(' ', ' MR.',first_name, last_name) from actor;


