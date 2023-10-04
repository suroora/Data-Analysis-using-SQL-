#Q1. Print product, price, sum of quantity more than 5 sold during all three months.  
select * from bank_inventory_pricing;
select Product,price from bank_inventory_pricing where Quantity >= 5  ;

#Q2.Print product, quantity , month and count of records for which estimated_sale_price is less than purchase_cost
select product,Quantity,Month  from bank_inventory_pricing where Estimated_sale_price < purchase_cost ;

#Q3. Extarct the 3rd highest value of column Estimated_sale_price from bank_inventory_pricing dataset
select distinct Estimated_sale_price from bank_inventory_pricing order by Estimated_sale_price DESC limit 3 offset 3;

#Q4. Count all duplicate values of column Product from table bank_inventory_pricing
select Product, count(*) as total_Product 
from bank_inventory_pricing
group by Product 
having count(*) >= 1;

#Q5. Create a view 'bank_details' for the product 'PayPoints' and Quantity is greater than 2 
create view bank_detail as select * from bank_inventory_pricing;
select * from bank_detail;

create view bank_details as select Product,Quantity from bank_inventory_pricing where Product='SuperSave' and Quantity >= 7 ;
select * from bank_detail;

# rename view name
RENAME TABLE bank_details 
TO bank_details1;

#Q6 Update view bank_details1 and add new record in bank_details1.
UPDATE bank_detail set Product='PayPoint', Quantity=3, Price=410.67;
SET SQL_SAFE_UPDATES = 0;

#
