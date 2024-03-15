--Import CSV files to each table after its creation.

create table Departments (
dept_no varchar(4) primary key,
dept_name varchar(100) not null

);

create table Titles (
    title_id VARCHAR(5) primary key,
    title VARCHAR(100) NOT NULL
);

create table Employees (
    emp_no INT primary key,
    emp_title_id VARCHAR(100),
    birth_date DATE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);
CREATE TABLE Salaries (
    emp_no INT,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_Emp (
    emp_no INT,
    dept_no VARCHAR(4),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

create table Dept_Manager(
dept_no varchar(4),
	emp_no int,
foreign key (dept_no) references Departments(dept_no),
foreign key (emp_no) references Employees(emp_no)
	
);

-- make sure each table is imported correctly

select *
From departments;

Select *
from dept_emp;

select *
from dept_manager;

select *
from employees;

select *
from salaries;

select *
from titles;


