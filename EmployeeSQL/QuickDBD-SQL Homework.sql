drop table "Dept_manager";
drop table "Dept_emp";
drop table "Salaries";
drop table "Titles";
drop table "Employees";
drop table "Departments";

CREATE TABLE Departments (
    Dept_no VARCHAR   NOT NULL,
    Dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_no
     )
);

CREATE TABLE Employees (
    Emp_no INT   NOT NULL,
    Birth_date VARCHAR   NOT NULL,
    First_name VARCHAR   NOT NULL,
    Last_name VARCHAR   NOT NULL,
    Gender VARCHAR   NOT NULL,
    Hire_date VARCHAR   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_no
     )
);

CREATE TABLE Dept_manager (
    Dept_no VARCHAR   NOT NULL,
    Emp_no INT   NOT NULL,
    From_date VARCHAR   NOT NULL,
    To_date VARCHAR   NOT NULL
);

CREATE TABLE Dept_emp (
    Emp_no INT   NOT NULL,
    Dept_no VARCHAR   NOT NULL,
    From_date VARCHAR   NOT NULL,
    To_date VARCHAR   NOT NULL
);

CREATE TABLE Salaries (
    Emp_no INT   NOT NULL,
    Salary INT   NOT NULL,
    From_date VARCHAR   NOT NULL,
    To_date VARCHAR   NOT NULL
);

CREATE TABLE Titles (
    Emp_no INT   NOT NULL,
    Title VARCHAR   NOT NULL,
    From_date VARCHAR   NOT NULL,
    To_date VARCHAR   NOT NULL
);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_Dept_no FOREIGN KEY(Dept_no)
REFERENCES Departments (Dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employees (Emp_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employees (Emp_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_Dept_no FOREIGN KEY(Dept_no)
REFERENCES Departments (Dept_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employees (Emp_no);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_Emp_no FOREIGN KEY(Emp_no)
REFERENCES Employees (Emp_no);

=============================================================================================================

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0ZqMf5
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- These statements were created directly from quickdatabasediagrams.com with the double quotes.  
-- I replaced the double quotes to make the DB much easier to work with.  (see above)


CREATE TABLE "Departments" (
    "Dept_no" VARCHAR   NOT NULL,
    "Dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_no"
     )
);

CREATE TABLE "Employees" (
    "Emp_no" INT   NOT NULL,
    "Birth_date" VARCHAR   NOT NULL,
    "First_name" VARCHAR   NOT NULL,
    "Last_name" VARCHAR   NOT NULL,
    "Gender" VARCHAR   NOT NULL,
    "Hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Dept_manager" (
    "Dept_no" VARCHAR   NOT NULL,
    "Emp_no" INT   NOT NULL,
    "From_date" VARCHAR   NOT NULL,
    "To_date" VARCHAR   NOT NULL
);

CREATE TABLE "Dept_emp" (
    "Emp_no" INT   NOT NULL,
    "Dept_no" VARCHAR   NOT NULL,
    "From_date" VARCHAR   NOT NULL,
    "To_date" VARCHAR   NOT NULL
);

CREATE TABLE "Salaries" (
    "Emp_no" INT   NOT NULL,
    "Salary" INT   NOT NULL,
    "From_date" VARCHAR   NOT NULL,
    "To_date" VARCHAR   NOT NULL
);

CREATE TABLE "Titles" (
    "Emp_no" INT   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    "From_date" VARCHAR   NOT NULL,
    "To_date" VARCHAR   NOT NULL
);

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Departments" ("Dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Departments" ("Dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

