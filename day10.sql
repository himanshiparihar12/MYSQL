use sakila;
create database abc2;
use abc2;
drop table abc;
create table abc(
id int , 
name varchar(20)
);
insert into abc values
(1,"naman"),
(2,"aman");
select * from abc;
-- dml operation
delete from abc where id=2;

-- ddl (crete , drop , truncate , alter)
show tables;
-- drop delete everything and delete only del column

drop table abc;

select * from u1;
truncate u1;   -- it drop data or column and then recreate structure
-- DIFF BETWEEN DROP , DEL AND TRUNCATE

use sakila;
select * from actor;

create table o1 as select * from actor;
select * from o1;

create table o2 as select actor_id , last_name from actor;
select * from o2;

create table o3 as select actor_id as ID , last_name as NAME from actor;
select * from o3;

-- QUES> ALTER , GROUP CONCAT , WHAT IS TRANSACTION , WHY IT IS NECESSARY , HOW IT IS MANAGE BY TCL ?
