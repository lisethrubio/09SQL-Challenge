# SQL-Challenge

## __Usage:__ 

1. Data management pgAdmin 4 needs to be installed to manage PostgreSQL.

2. There are six CSV files utilized for this analysis:
    -   departments: dept_no, dept_name

    -   dept_emp: emp_no, dept_no

    -   dept_manager: dept_no, emp_no

    -   employees: emp_no, emp_title_id, birth_date, first_name,  last_name, sex, hire_date

    -   salaries: emp_no, salary
    
    -   titles: title_id, title

3. The ERD-Image shows the entity relationship diagram of all the tables from the CSV files.

4. The two SQL files "Schemata" and "Queries" contain the creation of the tables and the queries to extract the data, respectively. 

## __Description:__ 

This SQL challenge involves analyzing employee data spanning the 1980s and 1990s from Pewlett Hackard company. The dataset consists of six CSV files that require importation into a SQL database. The challenge includes tasks such as data modeling and the creation of an Entity-Relationship Diagram (ERD), as well as the engineering of data specifications including data types, primary keys, foreign keys, and constraints. Additionally, it encompasses the process of importing CSV files into new tables within the SQL database.
Finally, for the data analysis portion, the challenge aims to answer the following questions:

-   List the employee number, last name, first name, sex, and salary of each employee.

-   List the first name, last name, and hire date for the employees who were hired in 1986.

-   List the manager of each department along with their department number, department name, employee number, last name, and first name.

-   List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-   List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-   List each employee in the Sales department, including their employee number, last name, and first name.

-   List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-   List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## __References:__

-   Xpet Learning Assitant
-   Tutor
-   Curriculum content