SELECT emp_no, AVG(salary) FROM salaries
GROUP BY emp_no
HAVING AVG(salary) >= 90000
ORDER BY AVG(salary);

SELECT title, count(title) FROM titles
GROUP BY title
ORDER BY COUNT(title) DESC
LIMIT 1;


SELECT * FROM employees
WHERE gender = 'F' 
AND first_name LIKE 'S%'
AND hire_date >= '1990-01-01';