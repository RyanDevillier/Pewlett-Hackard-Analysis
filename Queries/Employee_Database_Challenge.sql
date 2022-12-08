-- Creating a table from Employees and Titles that holds the the emp_no, fist_name, last_name, title, from_date, and to_date columns
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	tl.title,
	tl.from_date,
	tl.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS tl
	ON e.emp_no = tl.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31');


-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;


-- Creating a table that holds the number of employees who are about to retire (categorized on their most recent job title)
SELECT COUNT(ut.title),
	ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;


-- Creating the mentorship eligibility table
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	tl.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS tl
	ON (de.emp_no = tl.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND tl.to_date = '9999-01-01'
ORDER BY e.emp_no ASC;


-- Creating table to answer "How many roles will need to be 
-- filled as Pewlett Hackard employees begin rapidly retiring?" (total number of retiring employees)
SELECT COUNT (ut.title)
INTO sum_of_retiring_emp
FROM unique_titles AS ut;


-- Creating table to answer "Are there enough qualified, retirement_Ready employees
-- in the departments to mentor the next generation of Pewlett Hackard employees?" (total number of eligible mentors)
SELECT COUNT(me.emp_no)
INTO sum_of_mentors
FROM mentorship_eligibility as me;