-- JOINS
drop database testing;
CREATE DATABASE testing;
use testing;
CREATE TABLE product(
pid int,
pname varchar(225),
oid int 
);
insert into product values
(1,"tv",100),
(2,"mobile",200);

create table orders(
oid int,
city varchar(225)
);
insert into orders values
(100,"jaipur"),
(200,"goa"),
(300,"hp");


select * from product;
select * from orders;

select pid, pname , city from product join orders;    #condition ka bad jo join lageag usko inner join hoga

select pid, pname , city , orders.oid from product join orders where (product.oid=orders.oid);
--                                   OR
select pid, pname , city , orders.oid from product join orders using (oid);
--                                   OR
select pid, pname , city , orders.oid from product inner join orders on (product.oid=orders.oid);

-- outer join(left,right,full)
select pid, pname , city , orders.oid from product right join orders on (product.oid=orders.oid);

select pid, pname , city , orders.oid from product left join orders on (product.oid=orders.oid);

-- natural join
select pid,pname,city from product natural join orders;

-- SELF JOIN(most important join for interview point of u)
create table EMPLOYEE(
eid int,
ename varchar(225),
mid int
);
insert into EMPLOYEE values
(10,"tushar",null),
(20,"aman",30),
(30,"mayank",10),
(40,"ujjwal",20);
select * from EMPLOYEE;
SELECT emp.eid,emp.ename,emp.mid,mgr.mid,mgr.eid from EMPLOYEE as emp join EMPLOYEE as mgr ;


drop table salary;
create table salary1 (
eid int,
ename varchar(20),
mid int,
salary int
);

insert into salary1 
values
(10,"mitali",null,100),
(20,"happy",30,200),
(30,"div",10,300),
(40,"him",20,400);

select * from salary1;
-- I need to get eid ename mname only for those user where the salary of a emp should be greater than the salary of manager.
select mgr.eid, mgr.ename, mgr.mid, sal.eid, sal.ename
from salary1 as mgr join salary1 as sal
where (mgr.mid = sal.eid) and mgr.salary > sal.salary;


use sakila;
select * from actor;
select * from film_actor;
select * from film;

select a.actor_id,a.first_name,a.last_name,fa.film_id from actor as a join film_actor as fa 
where (a.actor_id=fa.actor_id);

select a.actor_id,a.first_name,a.last_name,fa.film_id , f.title from actor as a join film_actor as fa 
join film as f where (a.actor_id=fa.actor_id and fa.film_id=f.film_id);

select a.actor_id , a.first_name , a.last_name ,concat( a.actor_id,"has done"),count(a.actor_id,"movies") 
from actor as a join film_actor as f where a.actor_id=f.actor_id group by a.actor_id;