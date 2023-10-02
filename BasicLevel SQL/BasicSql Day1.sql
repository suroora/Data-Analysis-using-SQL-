use Learn_datase;

create table Employees(
EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int, 
Gender varchar(50)
);

create table Employee_salary(
EmployeeID int,
JobTitile varchar(50),
salary int
);

insert into Employees values(
1001,'jim','jhon',30,'Male');
insert into Employees values(
1002,'aliya','may',28,'Female');
insert into Employees values(
1003,'anna','karim',33,'Female');
insert into Employees values(
1004,'Alex','josh',27,'Male');
insert into Employees values(
1005,'jay','jo',30,'Male');
insert into Employees values(
1006,'fiana','any',30,'Female');
insert into Employees values(
1007,'mohammed','Salih',29,'Male');
insert into Employees values(
1008,'Aizaan','Salih',25,'Male');
insert into Employees values(
1009,'Fathima','Suroora',23,'Female');
insert into Employees values(
1010,'amia','azim',27,'Female');


insert into Employee_salary values(
1001,'Salesmen',10000);
insert into Employee_salary values(
1002,'Superviser',25000);
insert into Employee_salary values(
1003,'accountent',15000);
insert into Employee_salary values(
1004,'Data analyst',45000);
insert into Employee_salary values(
1005,'Salesmen',10000);
insert into Employee_salary values(
1006,'HR',20000);
insert into Employee_salary values(
1007,'CEO',100000);
insert into Employee_salary values(
1008,'Managing Directer',90000);
insert into Employee_salary values(
1009,'Data scientist',80000);
insert into Employee_salary values(
1010,'Acountent',15000);

select * from Employee_salary;

select * from Employees;

select distinct (Gender) from Employees;

select distinct (FirstName) from Employees;

select COUNT(LastName) as LAST_NAME_COUNT from Employees;

select MAX(Salary) from Employee_salary;
select avg(Salary) from Employee_salary;
select Min(Salary) from Employee_salary;

/* Where Clause in sql */

select * from Employees where FirstName='mohammed';
select * from Employees where FirstName <> 'jim';

select * from Employee_salary where salary > 30000;
select * from Employees where Age >= 30;

select * from Employees where LastName like 'a%';

select * from Employees where FirstName in ('Mohammed', 'Aizaan','Fathima');


/*Group By  */

select Gender,Age ,
count(Gender)as CountedValues from Employees group by Gender, Age;

select Gender,
count(Gender)as CountedValues from Employees 
where Age >= 30
group by Gender
order by CountedValues;

select * from Employees order by Age,Gender DESC ;