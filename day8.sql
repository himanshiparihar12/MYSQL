-- constrain : rules (table avoid invalid)
-- 






use sakila;
create table raj(
id int ,
name varchar(20)
);
insert into raj values(10,'AMAN');
select * from raj;
insert into raj(id) values(19);
select * from raj;
insert into raj(id,name) values(14,null);

drop table raj2;
-- -------------------------------------------------------
create table raj2(
id int default 100,
name varchar(20) not null
);
insert into raj2 values(10,'AMAN');
select * from raj2;
insert into raj2(name) values("ADITYA");
select * from raj2;
-- ----------------------------------------------------------
create table raj3(
id int unique , 
name varchar(20)
);
insert into raj3(id,name) values(11,"ADITYA");  # id = 10 nhi ho skti hai
insert into raj2(id,name) values(null,"ADITYA");
select * from raj3;

-- -----------------------------------------------------------
-- check constraint
create table raj4(
id int check(id between 2 and 5)
);
insert into raj4 values(4); #id 2 sai 5 ka bich mai hi aaigi
select * from raj4;

create table raj5(
house_id int , 
selling_price int ,
purchase_price int ,
email varchar(225) unique,
constraint db_table_selling_price_chk check (selling_price>purchase_price)
);

insert into raj5 values(123,20000,50000,"doll@gmail.com");
select * from raj5;

-- PRIMARY KEY
-- constraint = unique identifier each and every record
-- all the values should be unique, not null for primary key
-- only one primary key available in table
-- diff between primary key , and unique value
-- primary key not ne null , unique have null 
-- primary key have only 1 column , unique can be more than 1


create table raj6(
id int primary key,
name varchar(225)
);
insert into raj6 values(10, "hello") ,(10,"dolly");

-- foriegn key: regulation 
-- for cross validation foreign key is use 
-- we use parent table and child table 
drop table person1;
create table person1(
pid int primary key,
pname varchar(10)
);
insert into person1 values(10,"hyyy");
drop table order1;
create table order1(
oid int,
city varchar(20),
pid int ,
foreign key (pid) references person1(pid)
);
insert into order1 values (18,"AMAN",10);
select * from order1;
-- what is the difference between super key , candidate key and composite key 
-- on del , on del set null , on del set default

