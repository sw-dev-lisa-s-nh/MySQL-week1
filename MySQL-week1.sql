--
--  MySQL week 1 Coding Assignment
--  Backend Coding Bootcamp
--  Promineo Tech
--



SELECT * FROM employees LIMIT 10;

SELECT count(*) FROM employees;


-- Requirement #1
-- Show all employees who were born before 1965-01-01
SELECT * 
FROM employees
WHERE birth_date < '1965-01-01';


-- Requirement #2
-- Show all employees who are female and were hired after 1990
SELECT *
FROM employees
WHERE gender = 'f' AND hire_date > '1990-12-31';


-- Requirement #3
-- Show the first and last name of the first 50 employees whose last name starts with F
SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'f%' LIMIT 50;


-- Requirement #4
-- Insert 3 new employees in the employees table.  
-- Their emp_nos should be 100, 101, and 102. 
-- 	Choose the rest of the data! 
--      (I added emp_no 103, Can't hire Mickey without Minnie!)
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (100, '1950-01-01', 'Mickey', 'Mouse', 'M', '1969-01-01'),
       (101, '1951-02-03', 'Daisy', 'Duck', 'F', '1970-02-02'),
       (102, '1949-03-03', 'Donald', 'Duck', 'M', '1970-03-03'),
       (103, '1951-04-04', 'Minnie', 'Mouse', 'F', '1969-02-02');

-- Confirm INSERT worked!
SELECT * FROM employees LIMIT 10;


-- Requirement #5
-- Check that the WHERE clause is correct before updating data
SELECT * FROM employees 
WHERE emp_no = 10023;

-- Change the employee's first name to Bob for the employee with the emp_no of 10023
UPDATE employees SET first_name = 'Bob' 
WHERE emp_no = 10023;

-- Confirm that UPDATE worked!
SELECT * FROM employees 
WHERE emp_no = 10023;


-- Requirement #6
-- Check that the WHERE clause is correct before updating data 
SELECT count(*) FROM employees WHERE first_name LIKE 'P%' || last_name LIKE 'P%';

SELECT * FROM employees WHERE first_name LIKE 'P%' || last_name LIKE 'P%';
-- Change all employees hire dates to 2002-01-01 whose first or last names start with P
UPDATE employees SET hire_date = '2002-01-01' WHERE first_name LIKE 'P%' || last_name LIKE 'P%';

-- Confirm that UPDATE worked!
SELECT * FROM employees WHERE first_name LIKE 'P%' || last_name LIKE 'P%' LIMIT 10;



-- Requirement #7
-- Check that the WHERE clause is correct before updating data 
SELECT * FROM employees WHERE emp_no < 10000;

-- Delete all employees who have an emp_no less than 10000;
DELETE FROM employees WHERE emp_no < 10000;

-- Confirm that DELETE worked!
SELECT * FROM employees WHERE emp_no < 10000;



-- Requirement #8
-- Check that the WHERE clause is correct before updating data 
SELECT * FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);

-- Delete all employees who have an emp_no of 10048, 10099, 10234 and 20089
DELETE FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);

-- Confirm that DELETE worked!
SELECT * FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);



--
-- End of MySQL Week 1 Coding Assignment
--
