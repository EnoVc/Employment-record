## ALL FROM ENPLOYESS
SELECT 
    *
FROM
    employees;
    
## ALL FROM DEPARTMENTS
SELECT 
    *
FROM
    departments;
    
## ALL FRIST_NAME = ELVIS FROM EMPLOYEES
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';
    
## ALL F GENDER WHOSE FRIST_NAME IS KELLIE FROM EMPLOYEES

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F' AND first_name = 'Kellie';
    
    
## ALL FRIST_NAME = KELLIE OR ARUNA FROM EMPLOYEES
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie'
        OR first_name = 'Aruna';
        
        
## ALL F GENDER WHOSE FIRST NAME IS EITHER KELLIE OR ARUNA FROM EMPLOYEES

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = 'Aruna');
        
        
## ALL FRIST_NAME = ELVIS FROM EMPLOYEES

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND first_name IN ('Kellie' , 'Aruna');

## ALL FRIST NAME THAT IS NOT LIKE MAR

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE 'mar%';
    

##  ALL SALARY BETWEEN 66000 AND 70000

SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN 66000 AND 70000;
SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NOT NULL;
    
## ALL F GENDER WHOSE HIRE DATE IS 2000 AND ABOVE

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= '2000-01-01';
        
## ALL HIRE DATE

SELECT DISTINCT
    hire_date
FROM
    employees;
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 10000;
    
##  ALL HIRE DATE IN DESCENDING ORDER
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;
## EACH NUMBER OFF EMPLOYEES WITH SALARY ABOVE 60000
SELECT 
    salary, COUNT(emp_no) AS count_emp
FROM
    salaries
WHERE
    salary > 60000
GROUP BY salary
ORDER BY salary;


## ALL EMPLOYEES WITH AVERAGE SALARIES ABOVE 12000
SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

SELECT 
    emp_no, COUNT(emp_no) AS count_emp
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1;

## FIRST TEN EMPLOYEE
SELECT 
    *
FROM
    dept_emp
LIMIT 10;

## INSERTING INTO A TABLE
SELECT 
    *
FROM
    titles;
Insert into titles(emp_no, title,from_date, to_date)values('99999','uantity surveyor' , '2000-02-02','2010-01-01');
INSERT INTO departments VALUES ('d010', 'Business Analysis');

## UPDATING A TABLE
SELECT 
    *
FROM
    departments;
UPDATE departments 
SET 
    dept_name = 'Data analysis'
WHERE
    dept_no = 'd010';
