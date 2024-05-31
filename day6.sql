
use  sakila;
select * from payment;

-- subquery : query within a query
select amount from payment where payment_id=1;

select * from payment where rental_id=573;

-- amount=5.99
select * from payment where amount=(select amount from payment where payment_id=3);

-- amount=0.99
select * from payment where amount=(select amount from payment where payment_id=4);

select * from payment where amount=(select amount from payment where payment_id=3);

select * from payment where amount=(select amount from payment where rental_id=573);  #no. of column equal hona chaiya jissa ap compare ker rha ho

select * from payment;
# i need to get those user whose staff id is equal to the staff_id of payment_id 10
select staff_id from payment where payment_id=10;
select * from payment where staff_id=(select staff_id from payment where payment_id=10);

# i need to get the payment_id , staff_id , amount , payment_date and where the month of payment_date should be equal to  the payment_id=5
select payment_id,staff_id,amount,payment_date from payment where payment_id=5;
select month(payment_date) from payment where payment_id=5;
select * from payment where month(payment_id)=(select month(payment_date) from payment where payment_id=5);


select payment_id , amount from payment where payment_id in (2,3);

# type of subquery = 1. single row subquery=jb output mai ek row ko return kerta hai
#2. multi row subquery = >,<,=, aisa sign use nhi kerta only (in , any and all )  use kerta hai

select * from payment where amount in (select amount from payment where payment_id in (2,3));
select * from payment where amount not in (select amount from payment where payment_id in (2,3));

# in =andar wali har row ko match keraga

#  = any 
select * from payment where amount=any (select amount from payment where payment_id=2 or payment_id=3);
# >any = greater then the minimum value of result set
select * from payment where amount>any (select amount from payment where payment_id=2 or payment_id=3);
select * from payment where amount>=any (select amount from payment where payment_id=2 or payment_id=3);
select * from payment where amount<=any (select amount from payment where payment_id=2 or payment_id=3);


# all operator
select * from payment where amount>all (select amount from payment where payment_id=2 or payment_id=3);  # give the values which are greater than 5.99
select * from payment where amount<any (select amount from payment where payment_id=2 or payment_id=3);  #give the values which are less than 5.99

