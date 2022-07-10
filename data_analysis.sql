--1
select e.first_name, e.last_name, e.sex, s.salary
from employees e
inner join salaries s on
e.emp_no=s.emp_no

--2
select first_name, last_name, hire_date
from employees
where hire_date 
between '1/1/1986' and '31/12/1986'
order by hire_date;

--3
select d.dept_no as "department number", d.dept_name as "department name", dm.emp_no,e.first_name, e.last_name
from department d
join dept_manager dm on
d.dept_no=dm.dept_no
join employees e on
dm.emp_no=e.emp_no;

--4
select e.last_name, e.first_name, d.dept_name as "department name"
from employees e
join dept_emp dm on
e.emp_no=dm.emp_no
join department d on
d.dept_no=dm.dept_no;

--5
select first_name, last_name, sex
from employees
where first_name='Hercules' 
or last_name='B%';

--6
select e.emp_no as "employee number", e.first_name, e.last_name, d.dept_name as "department name"
from employees e
join dept_emp dm on
e.emp_no=dm.emp_no
join department d on 
d.dept_no=dm.dept_no
where dept_name='Sales';

--7
select e.emp_no as "employee number", e.first_name, e.last_name, d.dept_name as "department name"
from employees e
join dept_emp dm on
e.emp_no=dm.emp_no
join department d on 
d.dept_no=dm.dept_no
where dept_name='Sales' 
or dept_name='Development';

--8
select last_name, count (last_name) as "name frequency"
from employees
group by last_name
order by "name frequency" desc;
