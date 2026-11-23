1.List the records in the EMPLOYEES table by sorting the salary in 
descending order.

SELECT * FROM Employees 
ORDER BY Salary DESC;

2. Display only those employees whose department number is 30

SELECT * FROM Employees
 WHERE DepartmentID = 30;


3. Display the unique department numbers from EMPLOYEES table

SELECT DISTINCT DepartmentID 
FROM Employees;


4. List the employee name, salary and 15% rise in salary. Label the column as 
“pay_hike”. 

SELECT FirstName, LastName, Salary, Salary * 0.15 AS Pay_Hike FROM Employees;


5. Display the rows whose salary ranges from 5000 to 7500.

SELECT * FROM Employees
 WHERE Salary BETWEEN 5000 AND 7500;


6.Display all the employees in department 10 or 20 in alphabetical order of 
employee names.


SELECT FirstName + ' ' + LastName AS EmployeeName FROM Employees 
WHERE
DepartmentID IN (10, 20) 
ORDER BY EmployeeName ASC;

7. List the employee names who do not earn commission. 

SELECT FirstName + ' ' + LastName AS EmployeeName FROM Employees
 WHERE
CommissionPct IS NULL;


8. Display all the details of the employees with 5-character names with ‘S’ as 
starting character

SELECT * FROM Employees 
WHERE FirstName LIKE 'S____'; 


9. Display joining date of all employees in the year of 1998

SELECT FirstName + ' ' + LastName AS EmployeeName, HireDate 
FROM Employees 
WHERE YEAR(HireDate) = 1998;



10. List out the employee names whose salary is greater than 5000 and less 
than 6000. 
CODE
SELECT FirstName + ' ' + LastName AS EmployeeName, Salary 
FROM Employees 
WHERE Salary > 5000 AND Salary < 6000;