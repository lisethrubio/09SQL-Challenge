-- # Question: are there unique or duplicate values ? 
---Unique : no duplicaque, hence PK.
---FK: referencing a PK in the originating table (Exact match) 
---Duplicates: no key at all.
---When designing a database, create the table thinking of all the possibilities in the future.
---In this activity all the tables needed a PK, hence the brinde tables have composite PK and they're FK at the same time. 

---When creating the tables, the order matters. Start with the onces that have only PK.
---When importing data, follow the order of step above.


CREATE TABLE Departments (
	Department_No VARCHAR NOT NULL,
	Department_Name VARCHAR NOT NULL,
	PRIMARY KEY (Department_No)
);

CREATE TABLE Title (
	Title_ID VARCHAR NOT NULL,
	Title_Name VARCHAR NOT NULL,
	PRIMARY KEY (Title_ID)	
);

CREATE TABLE Employees (
	Employee_No INT NOT NULL,
	Employee_Title_ID VARCHAR NOT NULL, 
	Birth_Date DATE NOT NULL,
	First_Name VARCHAR NOT NULL,
	Last_Name VARCHAR NOT NULL,
	Sex VARCHAR NOT NULL,
	Hire_Date DATE NOT NULL,
	FOREIGN KEY (Employee_Title_ID) REFERENCES Title (Title_ID),
	PRIMARY KEY (Employee_No)
	
);

CREATE TABLE Salary (
	Employee_No INT NOT NULL,
	Salary NUMERIC NOT NULL,
	FOREIGN KEY (Employee_No) REFERENCES Employees (Employee_No),
	PRIMARY KEY (Employee_No)
);

CREATE TABLE Employee_Department (
	Employee_No INT NOT NULL,
	Department_No VARCHAR NOT NULL,
	FOREIGN KEY (Employee_No) REFERENCES Employees (Employee_No),
	FOREIGN KEY (Department_No) REFERENCES Departments (Department_No),
	PRIMARY KEY (Employee_No, Department_No)
	
);

CREATE TABLE Department_Manager (
	Department_No VARCHAR NOT NULL,
	Employee_No INT NOT NULL,
	FOREIGN KEY (Department_No) REFERENCES Departments (Department_No),
	FOREIGN KEY (Employee_No) REFERENCES Employees (Employee_No),
	PRIMARY KEY (Department_No, Employee_No)
	
);





