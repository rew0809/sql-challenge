--Query 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
inner join salaries s on e.emp_no = s.emp_no

--Query 2
select first_name, last_name, hire_date
from employees
where hire_date > '12/31/1985'
and hire_date < '1/1/1987'

--Query 3
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
inner join dept_manager dm on e.emp_no = dm.emp_no
inner join departments d on dm.dept_no = d.dept_no

--Query 4
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments d on d.dept_no = de.dept_no

--Query 5
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'

--Query 6
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments d on d.dept_no = de.dept_no
where dept_name = 'Sales'

--Query 7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments d on d.dept_no = de.dept_no
where dept_name = 'Sales'
or dept_name = 'Development'

--Query 8
select last_name, count(*) as "Last Name Count"
from employees
group by last_name
order by count(*) desc





