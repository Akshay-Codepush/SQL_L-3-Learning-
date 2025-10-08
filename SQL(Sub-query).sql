use sakila;

select * from actor;

select first_name from actor where actor_id = 3;
select first_name from actor where first_name='ED';

select * from actor where first_name=(select first_name from actor where actor_id = 3);

select * from payment;

select amount from payment where payment_id = 3;
select * from payment where amount = 5.99;
select * from payment where amount =(select amount from payment where payment_id = 7);
select amount from payment where rental_id = 1476;
select payment_id, amount, payment_date from payment where amount = (select amount from payment where rental_id = 1476);

select * from payment where payment_id = 4;
select  month(payment_date) from payment where payment_id = 4;
select payment_id, amount, payment_date from payment where month(payment_date) = 6;
select payment_id, amount, payment_date from payment where month(payment_date) = (select  month(payment_date) from payment where payment_id = 4);

select max(amount) from payment;

select payment_id, amount from payment where amount = (select max(amount) from payment);