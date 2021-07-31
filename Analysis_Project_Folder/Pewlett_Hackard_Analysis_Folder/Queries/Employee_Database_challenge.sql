SELECT emp_no,first_name, last_name
FROM employees;

SELECT title, from_date, to_date
FROM titles;

SELECT e.emp_no, e.first_name, e.last_name,
		t.title, t.from_date, t.to_date	
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM retirement_titles;

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles 
ORDER BY emp_no asc, to_date DESC;

SELECT * FROM unique_titles;

select  count(title), title
into retiring_titles
from unique_titles
group by title
order by count(title) desc;

select * from retiring_titles;

SELECT emp_no,first_name, last_name, birth_date FROM employees;
 
SELECT from_date, to_date FROM dept_emp;

SELECT title FROM titles;

--Joining Tables to create mentorship_eligibilty.csv
SELECT  e.emp_no, e.first_name, e.last_name,e.birth_date,
		de.from_date, de.to_date,
		t.title
INTO emp_title
FROM employees as e
INNER JOIN dept_emp as de 
	ON (e.emp_no = de.emp_no)
INNER JOIN titles as t 
	ON (t.emp_no = e.emp_no);

select * from emp_title;

--Filter Table to create mentorship_eligibilty.csv
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
birth_date,
from_date,
to_date,
title
INTO mentorship_eligibilty
FROM emp_title
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
		AND (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM mentorship_eligibilty;

SELECT count(title) FROM unique_titles;

SELECT count(emp_no) FROM mentorship_eligibilty;