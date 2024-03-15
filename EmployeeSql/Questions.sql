--Question # 1
--List the employee number, last name, first name, sex, and salary of each employee.
select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex,  Salaries.salary 
from Employees
join Salaries using (emp_no); -- since the joining variable is same name, we coded with 'using'function.

--Question # 2 
--List the first name, last name, and hire date for the employees who were hired in 1986.
select Employees.first_name, Employees.last_name, Employees.hire_date
from Employees
where hire_date = 1986; --HOW TO GET THE YEAR ONLY?
-- 
-- Question # 3 
--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select Departments.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employees.last_name,Employees.first_name
from Departments
join Dept_Manager using (dept_no)
join Employees using (emp_no);	
	
-- Question # 4 
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select Dept_Emp.dept_no, Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
from Employees
join Dept_Emp using (emp_no)
join Departments using (dept_no);

-- Question # 5
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select Employees.first_name, Employees.last_name, Employees.sex 
from Employees
where Employees.first_name = 'Hercules' AND Employees.last_name LIKE 'B%';

--Question # 6
--List each employee in the Sales department, including their employee number, last name, and first name.
select Employees.emp_no, Employees.last_name, Employees.first_name
from Employees
join Dept_Emp using (emp_no)
join Departments using (dept_no)
where Departments.dept_name = 'Sales';

-- Question #7 
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- Question # 8 
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
