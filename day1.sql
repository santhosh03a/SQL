use db1;
-- creating a table
create table student(
id int primary key,
name varchar(20),
marks varchar(20),
dept_id int
);
create table student(
dept_id int primary key,
D_name varchar(20)
);

-- entering the data into a table
insert into department values(1,'CSE'),(2,'ISE'),(3,'ECE');
insert into department values(4,'EEE'),(5,'AE'),(6,'ME');
insert into student values(4,'raju',600,4),(5,'John',350,4),(6,'Kevin',550,6);
insert into student values(7,'raju',600,5);

-- select command
select * from student;
select * from department;

select distinct id ,name from student;

select * from student where marks>500 and marks<800;

select count(*) from student where marks>500;
select count(*) from student where marks<400;
