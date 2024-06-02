-- natural join(condition not giver) nd inner join 
-- related to finding second highest salary
use sakila;
create table ut1
(id int
);
insert into ut1 values
(10),(20),(30),(34),(76);
select * from ut1;
select max(id) from ut1 where id < (select max(id) from ut1);  #it gives second highest value 
select * from ut1 order by id desc limit 2,1;

select max(id) from ut1 where id > (select max(id) from ut1);    #for finding second lowest

-- DDL COMMAND
create database regex1;
use regex1;
create table xyz(
id int  #int have 4 byte(2^32) -2,147,483,648 to 2,147,483,648
);
insert into xyz values
(1234325);
select * from xyz;
 
-- big int =8 byte
-- unsigned jisma only positive values ati hai
create table test(
id bigint unsigned 
); 
-- tiny int (1 byte )\ -128 to 127 for signed
-- for unsigned 225 tk dal skta hai value only +ve values come
-- smallint = 2byte
-- mediumnint = 3 byte

-- string datatype = varchar or char
-- True or False also stored in tinyint
-- 
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
select id,name,length(name) from abc;   #varchar mai agar 3 space dali or z ka bad bhot white space dali toh vo 3 z or do space lega baki ko trim out ker dega

create table t2(
id int , 
name char(3)
);
insert into t2 values (10,"ndken");
select name from t2;   #jitni memory dali hai ussa jyada hai toh isliya vo print nhi keraga

-- date datatype
create table u1(
dob date);
insert into u1 values("2024-08-24");  #year-month-day
select * from u1;

-- datetime
create table u3(
dob date,
dtime time,
dob1 datetime);
insert into u3 values("2024-08-24","10:45:6",now());  #year-month-day
select * from u3;

-- timestamp it store data from now to 2038 

# oues>