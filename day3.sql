use sakila;
-- date time function
-- year , month , quater , week of year
select curdate() from dual;
select current_date() from dual;
select curtime() from dual;
select current_timestamp() from dual;
select now() from dual;
select adddate(now(),15) from dual;
select adddate(now() , INTERVAL 15 day) from dual;
select adddate(now(),INTERVAL 15 month) from dual;

select dayname(now()) from dual;
select date_format(now(),'%y') from dual;
select date_format(now(),'%M') from dual;    #m,M tell us abbreviations
select date_format(now(),'%m--%y') from dual;

-- NUMERIC FUNCTION
-- round , truncate , mod
select round(10.4) from dual;
select round(10.63423,1) from dual;
select round(11.50) from dual;
select round(17.3455,2) from dual;
select truncate(17.55,2) from dual;    # it will give u same value and isma round of nhi hota hai
-- mod
select mod(11,2) from dual;

-- conditional statements
use sakila;
select * from actor;
-- condition , true, false
select if(True,10,20) from dual;
select actor_id , first_name, 
if(actor_id=2,actor_id+10,actor_id) from actor;

select actor_id , first_name ,
if(actor_id=10 , actor_id + 10 , 
	if(actor_id=4 , actor_id+20 , actor_id)) from actor;

-- CASE STATEMENT
/*
select col , case expression /col
					when condition then what_type_work
                    end
                    from tabale
*/


select actor_id , first_name , 
		case actor_id
				when 2 then actor_id+10
						end  "new_col" 
								from actor;
                                
                                
                                
select actor_id , first_name , 
		case actor_id
			when 2 then actor_id+10
            when 3 then actor_id+20
		else actor_id
		end  "new_col" from actor;
        
        
        
select actor_id , first_name , 
		case actor_id
			when actor_id=2 then actor_id+10
            when actor_id=3 then actor_id+20
		else actor_id
		end  "new_col" from actor;
        
        
        
#if a person has actor_id has a value more than five add 10
#15 add 25 
#30 add 50
#otherwise add 5

select actor_id , first_name,
		case actor_id
			when actor_id>30 then actor_id+50
			when actor_id>15 then actor_id+25
            when actor_id>5 then actor_id+10
		else actor_id+5
        end "column" from actor; 
        
#groupby / diff groupby vc tistinct / diff having clause vc 