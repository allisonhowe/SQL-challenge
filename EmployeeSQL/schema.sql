CREATE TABLE titles (
  title_ID varchar primary key,
  title varchar not null
);

CREATE TABLE employees (
  emp_no integer primary key,
  emp_title_ID varchar not null,
  birth_date date not null,
  first_name varchar not null,
  last_name varchar not null,
  sex varchar not null,
  hire_date date not null,
  FOREIGN KEY (emp_title_ID) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
  emp_no integer not null,
  salary integer not null,
  foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE departments (
  dept_no varchar primary key,
  dept_name varchar not null
);

CREATE TABLE dept_emp (
  emp_no int not null,
  dept_no varchar not null,
  primary key (emp_no, dept_no)
);

CREATE TABLE dept_manager (
  dept_no varchar not null,
  emp_no int not null
);