
1.  
SELECT e.Emp_no, e.Last_name, e.First_name, e.Gender, s.Salary 
FROM Employees e
JOIN Salaries s ON (e.Emp_no = s.Emp_no);

2. 
SELECT Emp_no, Last_name, First_name, hire_date 
FROM Employees
WHERE hire_date LIKE '1986%';

3. 
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, e.hire_date, m.from_date, m.to_date 
FROM departments d
JOIN dept_manager m ON d.dept_no = m.dept_no
	JOIN employees e ON m.emp_no = e.emp_no;

4. 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no
	JOIN departments d ON d.dept_no = de.dept_no;

5. 
SELECT First_name, Last_name 
FROM Employees
WHERE First_name = 'Hercules'
 and Last_name LIKE 'B%';

6. 
SELECT e.emp_no, e.last_name, e.first_name, dept_name 
FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no
	JOIN departments d ON de.dept_no = d.dept_no
		WHERE d.dept_name = 'Sales';

7.
SELECT e.emp_no, e.last_name, e.first_name, dept_name 
FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no
	JOIN departments d ON de.dept_no = d.dept_no
		WHERE d.dept_name = 'Sales'
		  or d.dept_name = 'Development'; 

8.
SELECT last_name, count(last_name) AS "Total Count"  
FROM employees 
GROUP BY last_name
ORDER BY last_name DESC; 