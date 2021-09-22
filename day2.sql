-- where clause
 
select * from student s,department d where s.D_id=d.D_id;

select * from student where d_id>1;



select * from department where Department_name='ise';


-- subqueries

select * from student where D_id=(select D_id from department where Department_name='cse');


-- in keyword is used when we have to check the data for multiple rows.

select * from student where D_id in (select D_id from department where Department_name='ise'||department_name='cse');


-- update command

UPDATE student SET marks=500 WHERE name='santhosh';


-- delete command

delete from department where id=3;


-- alter command - used to add or remove columns in a table

alter table student add result varchar(20);

alter table student drop result;


create table sales(

sales_id int primary key,

salesname varchar(20),

address varchar(20)
);


-- applying foreign key and primary key

create table order_sales(

id int primary key,

product_name varchar(20),

address varchar(30),

sales_id int,

constraint fk_sales foreign key(sales_id)
references sales(sales_id)
);


select * from order_sales;

select * from sales;

insert into sales values(1,'suresh','Bangalore'),(2,'ramesh','mysore'),(3,'rohit','mumbai');

insert into order_sales values(1,'a','Bangalore',3),(2,'b','bangalore',3),(3,'c','mumbai',1);


-- join clauses

select * from sales s inner join order_sales p on s.address=p.address;

select * from sales s left join order_sales p on s.address=p.address;
select * from sales s right join order_sales p on s.address=p.address;