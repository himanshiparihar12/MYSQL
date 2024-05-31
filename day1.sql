#sql=ddl,dml,dql,Tcl,dcl.
#ddl=data query language,dml=data manipulation language,dql=data query language,dcl=data control languag,tcl=transaction control language
#dql is very imp languagae in sql it is higly recommended in companies
use sakila;
select database();
show tables;
describe actor;
desc actor;
desc sakila.actor;
/*for multi line commenting*/
#select statement(DQL)
select * from actor;
select actor_id,first_name,actor_id+4 from actor;
#sql is not case censitive but data is case sensitive

#	WHERE CLAUSE
-- selection
-- projection
select * from actor where actor_id=2;
select * from actor where actor_id>2;
select first_name from actor where actor_id!=2;
select actor_id from actor where first_name='NICK';
select actor_id from actor where actor_id between 2 and 5;

-- in operator
select * from actor where actor_id in(5,2);
select * from actor where actor_id not in(5,2);

select * from actor where first_name='ED';
select * from actor where first_name!='ED';

-- PATTERN FIND KERO(LIKE OPERATION)
select * from actor where first_name LIKE "%E";     #%=0 or more characters
select * from actor where first_name LIKE "E%";
select * from actor where first_name LIKE "%E%";  
select * from actor where first_name LIKE "_D";     #_=ONLY ONE CHARACTER
select * from actor where first_name LIKE "__%";
