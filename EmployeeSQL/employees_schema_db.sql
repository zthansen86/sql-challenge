--Create table for departments
CREATE TABLE "Departments" (
    "dept_no" varchar(4)   NOT NULL,
    "dept_name" varchar(25)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no")
);

--import csv file
--view table
SELECT * FROM "Departments"

--Create table for titles
CREATE TABLE "Titles" (
    "title_id" varchar(5)   NOT NULL,
    "title" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id")
);

--import csv file
--view table
SELECT * FROM "Titles"

--Create table for employees
CREATE TABLE "Employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" varchar(5)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(20)   NOT NULL,
    "sex" varchar(5)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no")
);

--import csv file
--view table
SELECT * FROM "Employees"

--create table for salaries
CREATE TABLE "Salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no")
);

--import csv file
--view table
SELECT * FROM "Salaries"

--create table for department manager
CREATE TABLE "DepartmentManager" (
    "dept_no" varchar(4)   NOT NULL,
    "emp_no" INT   NOT NULL
);

--import csv file
--view table
SELECT * FROM "DepartmentManager"

--create table for department employees
CREATE TABLE "DepartmentEmployees" (
    "emp_no" INT   NOT NULL,
    "dept_no" varchar(5)   NOT NULL
);

--import csv file
--view table
SELECT * FROM "DepartmentEmployees"


ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "DepartmentEmployees" ADD CONSTRAINT "fk_DepartmentEmployees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "DepartmentEmployees" ADD CONSTRAINT "fk_DepartmentEmployees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");


