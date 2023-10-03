/* Learn Sql the Right Way this is DAy to of Studying SQL fro Data analyze*/
/* CRUD Operations
Create - insert Statments
read - Selected Statement
Update- Updates Statment
Delete - Delete Selected statment 
*/
CREATE TABLE Employee(FirstName varchar(50),
MiddleName varchar(50), LastName varchar(30),
Age int,Salary varchar(40),Location varchar(20) );

describe Employee;
/* Insert somedata into the Employee table */
insert into Employee values("Kapil",'kapoor',
'sharma',30,10000,'Bangalore'),('meera',
'mohan','nandana',25,30000,'mumbai'),('adil',
'muhammed','shareef',28,45000,'kerala');

/* View the table using Select command*/

select * from Employee;

# Droping the current table that means deleting the tableusing DROP commennd

drop table Employee;

#creating another table with NOT NULL constraint 


CREATE TABLE Employee(FirstName varchar(50) NOT NULL,
MiddleName varchar(50), LastName varchar(30) NOT NULL,
Age int NOT NULL,Salary varchar(40)NOT NULL,Location varchar(20) default 'Bangalore');

describe  Employee;

insert into Employee values("Kapil",'kapoor','sharma',30,10000,'Bangalore');
INSERT INTO Employee(FirstName,LastName,Age,Salary,Location) VALUES
	('meera','nandana',25,30000,'mumbai');
insert into Employee values('adil','muhammed','shareef',28,45000,'kerala'),
	('muhammed','aizaan','salih',26,89000,'Kerala');
INSERT INTO Employee(FirstName,LastName,Age,Salary) VALUES('alex','mathew',45,39000);
INSERT INTO Employee(FirstName,LastName,Age,Salary) VALUES('ameen','rahman',29,24000);

select * from Employee;
INSERT INTO Employee(FirstName,LastName,Age,Salary) VALUES( 'meera','nandana',25,30000);
