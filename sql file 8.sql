create database  regex123;
use regex123;
create table product(pid  int,  pname  varchar(20), price int);
insert into product values(100,'iphone',4000), (101,'mi tv', 3000),
(102,'fridge',5000), (103,'cover',500);


create table orders( orderid int, city varchar(20), productid int);
insert into orders values(994,'jaipur', 100), (995,'goa',102), (996,'J&K', 100), (997,'japan',102), (998,'bhutan', 110);

select * from product;
select * from orders;

-- pid is primary key

select prd.pid, prd.pname from product as prd;

-- productid is primary key it is a foreign key that refers to primary key of product table
-- it wil make relationship with pid of product table

select ord.productid, ord.city from orders as ord;

select distinct prd.pid, prd.pname, prd.price, ord.city from product as prd
join orders as ord where prd.pid = ord.productid;

select distinct prd.pid, prd.pname, ord.city from product as prd 
inner join orders as ord on  prd.pid = ord.productid;

select distinct prd.pid, prd.pname, ord.productid, ord.city from product as prd
left join orders as ord on prd.pid = ord.productid;

select distinct ord.productid, ord.city, prd.pid, prd.pname from orders as ord
right join product as prd on ord.productid=prd.pid;