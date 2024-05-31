-- GROUP BY / AGGREGATE FUNCTION
-- MULTI ROW FUNCTION
use sakila;
select * from address;
select count(address_id) from address;
select count(address2) from address;
select count(*);
select distinct (district) from address;
select count(distinct(district))from address;


select sum(address_id) from address;        #SUM FUNCTION GIVE US TOTAL OF ALL THE VALUES
select * from address where district='QLD';
select count(*) from address where district='QLD';
select count(*) from address where district='Alberta';


select district , count(*) from address group by district;
select count(*) from address group by district;

select district , count(*) , sum(city_id) from address group by district;
# the column  which is not mentioned in group by cannot be written inn select statement

select * from payment; 

select customer_id , count(*) from payment group by customer_id;

-- alias=for changing name of tabel
select customer_id , count(*) as total from payment group by customer_id;

select customer_id , count(*) as total from payment group by customer_id order by total asc;
select customer_id , count(*) as total from payment group by customer_id order by total desc;

select * from payment;
select customer_id, sum(amount) as total from payment group by customer_id ;

-- difference betweeen where and having clause
select customer_id, sum(amount) as total from payment group by customer_id having total>100;

-- kya group by mai where condition laga skta hai (haa laga skta hai)
select customer_id , sum(amount)  from payment where customer_id>5 group by customer_id;
select customer_id , sum(amount)  from payment where customer_id>5 group by customer_id having sum(amount)>100;

select customer_id , sum(amount)  from payment where customer_id>5 and sum(amount) > 100 group by customer_id;

select sum(amount) from payment where customer_id=1 and staff_id=1;
select sum(amount) from payment where customer_id=1 and staff_id=2;

-- multiple groupping
select customer_id , staff_id , sum(amount) from payment group by customer_id,staff_id;

use sakila;
SELECT * FROM payment;

# QUES->GET THE AVERAGE VALUE FOR THE AMOUNT WHOSE PAYMENT_ID IS GRATER THAN 10
SELECT avg(amount) FROM payment where payment_id>10 group by amount;

# QUES->GET THE TOTAL NUMBER OF AMOUNT FOR EACH MONTH OF PAYMENT_DATE FOR MAY,JUNE,AND JULY.
select month(payment_date) , sum(amount) from payment where month(payment_date) in (5,6,7) group by month(payment_date);