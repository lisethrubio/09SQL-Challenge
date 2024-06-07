--QUESTION: List the employee number, last name, first name, sex, and salary of each employee.
--LEFT JOIN is used to keep all the values from the LEFT TABLE (Employees) and only adding the values from the RIGHT TABLE (Salary) that match the left one.
SELECT 
	e.Employee_No,
	e.Last_Name,
	e.First_Name,
	e.Sex,
	s.Salary
FROM Employees AS e
LEFT JOIN Salary AS s ON e.Employee_No = s.Employee_No;


--QUESTION: List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT 
	First_Name,
	Last_Name,
	Hire_Date
FROM Employees 
WHERE EXTRACT(YEAR FROM Hire_Date) = 1986;

--QUESTION: List the manager of each department along with their department number, department name, employee number, last name, and first name.
--BRIDGE TABLE = Department_Manager
--INNER JOIN is used to ensure that only the departments with managers are included in the table. 
--LEFT JOIN would add all departments even those without managers. 

SELECT 
	dm.Department_No,
	d.Department_Name,
	e.Employee_No,
	e.First_Name,
	e.Last_Name
FROM Department_Manager AS dm
INNER JOIN Departments AS d ON dm.Department_No = d.Department_No
INNER JOIN Employees AS e ON dm.Employee_No = e.Employee_No;

--QUESTION: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
--BRIDGE TABLE = Employee_Department
--INNER JOIN used to return only the rows where there are matched values in both tables.

SELECT 
	de.Department_No,
	d.Department_Name,
	e.Employee_No,
	e.Last_name,
	e.First_Name
FROM Employee_Department AS de
INNER JOIN Departments AS d ON de.Department_No = d.Department_No
INNER JOIN Employees AS e ON de.Employee_No = e.Employee_No;
	

--QUESTION: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT 
	First_Name,
	Last_Name,
	Sex
FROM Employees 
WHERE First_Name = 'Hercules' AND Last_Name LIKE 'B%';


--QUESTION: List each employee in the Sales department, including their employee number, last name, and first name.
--BRIDGE TABLE = Employee_Department 

SELECT 
	de.Employee_No,
	d.Department_Name,
	e.Last_Name,
	e.First_Name
FROM Employee_Department AS de
INNER JOIN Departments AS d ON de.Department_No = d.Department_No
INNER JOIN Employees AS e ON de.Employee_No = e.Employee_No
WHERE Department_Name = 'Sales';


--QUESTION: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
--ORDER BY (DESC) to order the departments by department name so it's more organized. 

SELECT 
	de.Employee_No,
	d.Department_Name,
	e.Last_Name,
	e.First_Name
FROM Employee_Department AS de
INNER JOIN Departments AS d ON de.Department_No = d.Department_No
INNER JOIN Employees AS e ON de.Employee_No = e.Employee_No
WHERE d.Department_Name IN ('Sales', 'Development')
ORDER BY d.Department_Name DESC;



--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
--COUNT(*) FUNCTION: counts the number of occurences of each alst name.
--GROUP BY CLAUSE: groups shared, unique last names with its count.
--ORDER BY CLAUSE: sorts by frequency in descending order. 


SELECT 
    Last_Name,
    COUNT(*) AS Frequency
FROM Employees
GROUP BY Last_Name
ORDER BY Frequency DESC;







