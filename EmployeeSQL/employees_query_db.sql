--Querys
--1. List the following details of each employee: employee number, last name, first name, sex and salary.
	
--preform inner join on the employee and salary table
SELECT "Employees"."emp_no",
	"Employees"."last_name",
	"Employees"."first_name",
	"Employees"."sex",
	"Employees"."hire_date",
	"Salaries"."salary"
FROM "Employees"
INNER JOIN "Salaries" ON
"Salaries"."emp_no" = "Employees"."emp_no";

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT "first_name",
	"last_name",
	"hire_date"
FROM "Employees"
WHERE "hire_date" BETWEEN '1986-01-01' AND '1986-12-31';

--3. List the manager of each department with the following information: department number, derpartment name,  the manager's employee number, last name and first name.
SELECT "Departments"."dept_no",
	"Departments"."dept_name",
	"DepartmentManager"."emp_no",
	"Employees"."last_name",
	"Employees"."last_name"
FROM "Departments"
INNER JOIN "DepartmentManager" ON
"DepartmentManager"."dept_no" = "Departments"."dept_no"
INNER JOIN "Employees" ON
"Employees"."emp_no" = "DepartmentManager"."emp_no";

--4. List the department of each employee with the following information: employee number, last name, first name and department name.
SELECT "DepartmentEmployees"."emp_no",
	"Employees"."last_name",
	"Employees"."first_name",
	"Departments"."dept_name"
FROM "DepartmentEmployees"
INNER JOIN "Departments" ON 
"Departments"."dept_no" = "DepartmentEmployees"."dept_no"
INNER JOIN "Employees" ON 
"Employees"."emp_no" = "DepartmentEmployees"."emp_no";

--5. List first name, last name and sex for employees whose first name is "Hercules" and last names begin with "B".
SELECT "first_name",
	"last_name",
	"sex"
FROM "Employees"
WHERE "first_name" = 'Hercules' AND
	"last_name" LIKE 'B%';

--6. List all employees in the sales department, including their employee number, last name, first name and department name.
SELECT "DepartmentEmployees"."emp_no",
	"Employees"."last_name",
	"Employees"."first_name",
	"Departments"."dept_name"
FROM "DepartmentEmployees"
INNER JOIN "Departments" ON 
"Departments"."dept_no" = "DepartmentEmployees"."dept_no"
INNER JOIN "Employees" ON 
"Employees"."emp_no" = "DepartmentEmployees"."emp_no"
WHERE "dept_name" = 'Sales';

--7. List all employees in the sales and development departments, including their employee number, last name, first name and department name.
SELECT "DepartmentEmployees"."emp_no",
	"Employees"."last_name",
	"Employees"."first_name",
	"Departments"."dept_name"
FROM "DepartmentEmployees"
INNER JOIN "Departments" ON 
"Departments"."dept_no" = "DepartmentEmployees"."dept_no"
INNER JOIN "Employees" ON 
"Employees"."emp_no" = "DepartmentEmployees"."emp_no"
WHERE "dept_name" = 'Sales' OR "dept_name" = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT "last_name", COUNT(*)
FROM "Employees"
GROUP BY "last_name"
ORDER BY COUNT(*) DESC ;


