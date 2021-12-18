SELECT DISTINCT ON(employees.emp_no)employees.emp_no,
employees.first_name,
employees.last_name,
employees.birth_date,
dept_emp.from_date,
dept_emp.to_date,
titles.title
--DISTINCT ON(emp_no)
INTO mentor_eligibility
FROM employees
INNER JOIN dept_emp 
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN titles 
ON (employees.emp_no = titles.emp_no)
WHERE (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (dept_emp.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT * FROM mentor_eligibility;