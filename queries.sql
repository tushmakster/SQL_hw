--Task 1
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON s.emp_no = e.emp_no;
--300,024 rows



--Task 2
select * from employees
where left(hire_date,4) = '1986';
--36,150 rows




--Task 3
select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, e.hire_date, s.to_date
from dept_manager as dm
left join departments as d on dm.dept_no = d.dept_no
left join salaries as s on dm.emp_no = s.emp_no
left join employees as e on dm.emp_no = e.emp_no;
--24 rows



--Task 4
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
left join departments as d on d.dept_no = de.dept_no
left join employees as e on e.emp_no = de.emp_no
order by e.emp_no
;
--331,603 rows




--Task 5
select * from employees
where first_name = 'Hercules' and left(last_name,1) = 'B';
--20 rows


--Task 6
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
left join departments as d on d.dept_no = de.dept_no
left join employees as e on e.emp_no = de.emp_no
where d.dept_name = 'Sales'
order by e.emp_no;
--52,245 rows




--Task 7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
left join departments as d on d.dept_no = de.dept_no
left join employees as e on e.emp_no = de.emp_no
where d.dept_name in ('Sales', 'Development')
order by e.emp_no;
--137,952 rows



--Task 8
select last_name, count(*)
from employees
group by last_name
order by count(*) desc;
--1,638 rows
