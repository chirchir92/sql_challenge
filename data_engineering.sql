--CREATE TABLES AND IMPORT CSV
--DECLARE PRIMARY KEY/COMPOSITE KEY
-----------------------------------
--departments table
create table department (
    dept_no varchar,
    dept_name varchar,
    constraint pk_department primary key(dept_no)
);

select*from department
-------------------------------------
--dept_emp table
create table dept_emp (
    emp_no int,
    dept_no varchar
);

select*from dept_emp
--------------------------------------
--dept_manager table
create table dept_manager(
dept_no varchar,
emp_no int
);

select*from dept_manager;
--------------------------------------
--employees table
create table employees (
    emp_no int not null,
    emp_title_id varchar,
    birth_date varchar not null,
    first_name varchar,
    last_name varchar,
    sex varchar not null,
    hire_date varchar not null,
    constraint pk_employeees primary key(emp_no)
);

select*from employees;
--------------------------------------
--salaries table
create table salaries (
    emp_no int,
    salary int
);

select*from salaries
--------------------------------------
--titles table
create table title (
    title_id varchar not null,
    title varchar,
    constraint pk_title primary key (title_id)
);

select*from title
------------------------------------------



