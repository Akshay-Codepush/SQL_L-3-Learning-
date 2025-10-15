-- create database regex_db;
use regex_db;

 create table test(id int);
 insert into test values(10), (11), (12), (null);
 select *  from test;

 create table test_2(id int not null);
 insert into test_2 values(10), (11), (12), (null); --  error because of null
 select *  from test_2;

create table test_3(id int unique);
insert into test_3(id) value(10),(10), (12);
select * from test_3; -- error Duplicate entry '10'

create table test_4_1(id int, gender varchar(20)); --  here in gender there is NULL
insert into test_4_1(id) values(10);
select * from test_4_1;

create table test_4(id int, gender varchar(20) default 'male'); -- by using default male is inserted automatically
insert into test_4(id) values(10);
select * from test_4;

create table test5(id int check(id > 5), gender varchar(20) check (gender in ('male', 'female') ) ); -- check 
insert into test5(id, gender) values('10','male');
insert into test5(id, gender) values('11', 'transgender');
-- this will give error
select * from test5;

create table test6(id int check(id > 5),  gender varchar(20),
constraint db_test6_gender_chk check(gender in ('male', 'female') ) ); -- check
 
insert into test6(id, gender) values('10','male');
insert into test6(id, gender) values('11', 'transgender');
-- by using constraint we can give name to that column and check what's wrong
select * from test6;


create table test7(id int primary key not null,  gender varchar(20)); 
insert into test7 values(101, 'male');
select * from test7;


create table products(p_id int primary key, p_name varchar(20));
insert into products values(101, 'i-phone');
-- insert into products values(101, 'Mac'); -- due to primary no duplicate entries
insert into products values(102, 'i-pad');

select * from products;


-- with foreign key


create table order2(order_id int, price int, p_id int,
foreign key (p_id) references products(pid));

insert into order2 values((1981, 123, 101), (1982, 390, 102), (1983, 567, 103));
insert into order2 values(1984, 500, 108);

select * from order2;

-- without foreign key 

create table order2(order_id int, price int, p_id int);

insert into order2 values((1981, 123, 101), (1982, 390, 102), (1983, 567, 103));
insert into order2 values(1984, 500, 108);
select * from order2;

create table department(dept_id int unique, dept_name varchar(20) check (dept_name in ('Biology', 'Physics')));
insert into department values(1, 'Biology');
insert into department values(2, 'Physics');
insert into department values(null,'chemistry');

create table employees(emp_id int primary key, emp_name varchar(20), emp_email varchar(20) unique, dept_id int,
foreign key(dept_id) references department(dept_id));
insert into employees values((1, 'Rahul', 'Rahul_123@gmail.com', 1), (2, 'Amit', 'Amit_xyz@gmail.com', 2));

select * from employees;