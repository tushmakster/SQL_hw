CREATE TABLE employees
(
    emp_no integer NOT NULL,
    birth_date character varying(50),
    first_name character varying(50) NOT NULL,
    last_name character varying(50),
    gender character varying(1) NOT NULL,
    hire_date character varying(50) NOT NULL,
    PRIMARY KEY (emp_no)
);



CREATE TABLE departments
(
    dept_no character varying(4) NOT NULL,
    dept_name character varying(50) NOT NULL,
    PRIMARY KEY (dept_no)
);




CREATE TABLE dept_emp
(
    emp_no integer NOT NULL,
    dept_no character varying(5) NOT NULL,
    from_date character varying(50) NOT NULL,
    to_date character varying(50) NOT NULL,
    CONSTRAINT emp_no FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (dept_no)
        REFERENCES departments (dept_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);





CREATE TABLE titles
(
    emp_no integer NOT NULL,
    title character varying(50) NOT NULL,
    from_date character varying(50) NOT NULL,
    to_date character varying(50) NOT NULL,
    CONSTRAINT emp_no FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);





CREATE TABLE salaries
(
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    from_date character varying(50) NOT NULL,
    to_date character varying(50) NOT NULL,
    CONSTRAINT emp_no FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);



CREATE TABLE dept_manager
(
    dept_no character varying(5) NOT NULL,
    emp_no integer NOT NULL,
    from_date character varying(50) NOT NULL,
    to_date character varying(50) NOT NULL,
    CONSTRAINT emp_no FOREIGN KEY (emp_no)
        REFERENCES employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (dept_no)
        REFERENCES departments (dept_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);