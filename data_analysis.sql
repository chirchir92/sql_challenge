--1
select employees.first_name, employees.last_name, employees.sex, salaries.salary
from employees
inner join salaries on
employees.emp_no=salaries.emp_no

--2
select first_name, last_name, hire_date
from employees
where hire_date 
between '1/1/1986' and '31/12/1986'
order by hire_date;

--3
