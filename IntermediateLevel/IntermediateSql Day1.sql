use data_analysis;
select * from bank_customer;
select * from bank_account_details;
select * from bank_account_transaction;
select * from bank_inventory_pricing;
 drop table bank_inventory_pricing;

#Inner join query in sql

select bank_account_details.Account_Number,bank_customer.customer_id,bank_customer.customer_name ,
bank_account_details.Balance_amount ,bank_account_details.Account_type 
from bank_account_details inner join bank_customer on bank_account_details.customer_id=bank_customer.customer_id ;

# create a view with inner join

create view bank_customer_details as select bank_account_details.Account_Number,bank_customer.customer_id,bank_customer.customer_name ,
bank_account_details.Balance_amount ,bank_account_details.Account_type 
from bank_account_details inner join bank_customer on bank_account_details.customer_id=bank_customer.customer_id ;
select * from bank_customer_details;
 
#create a new table with an Exixisting datas as customer_detils
create table customer_details as select bc.customer_id,bc.customer_name, bad.Account_Number from bank_customer as bc inner join bank_account_details bad on  bad.customer_id=bc.customer_id;

#displying sum of quantity with product 
select Product ,sum(Quantity) as total_sale
from bank_inventory_pricing
group by Product order by total_sale ;

#Aggregation functions, also known as aggregate functions or simply aggregates, 
SELECT SUM(Price) FROM bank_inventory_pricing;
SELECT avg(Price) FROM bank_inventory_pricing;
SELECT count(*) FROM bank_inventory_pricing;
SELECT VARIANCE(Price) FROM bank_inventory_pricing;





 
