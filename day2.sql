use sakila;
select * from actor;
select * from actor where actor_id=2;
select * from actor where actor_id between 2 and 5;

-- FUNCTION AND LOGICAL OPERATOR
SELECT actor_id , first_name from actor where actor_id = 2 OR actor_id=7;
--                               OR
SELECT actor_id , first_name from actor where actor_id in (2,5);

SELECT * FROM actor where first_name='NICK' or actor_id=44;   -- ISMA SARA NICK WALA AIGA OR 44 JISMA NICK HAI VO BHI AIGA 

select * from actor where first_name='NICK' and actor_id=44;   -- ISMA SARA NICK WALA NHI AIGA SIRF 44 JISMA NICK HAI VO HI AIGA
-- acto_id and first name starts from id or nick or and actor id > 3
SELECT * from actor where (first_name='NICK' or first_name='ED') and actor_id>=3;    -- HUMSHA AND BAD MAI SOLVE HOGA BRACKET PHALA SOLVE 

 -- function string ==> output
 -- SINGLE ROW FUNCTION
 -- STRING FUNCTION 
 SELECT first_name,lower(first_name) from actor;
 
 -- dual table (dummy table)
 select first_name , 4 from actor;
 select upper("ac") from dual;
 