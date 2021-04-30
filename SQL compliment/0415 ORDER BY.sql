/* ORDER BY */

SELECT * FROM salaries
ORDER BY salary ASC;
-- salary값을 기준으로 '오름차순(기본값)'으로 정렬해서 보여줘

SELECT * FROM salaries
ORDER BY emp_no ASC, salary DESC;
-- emp_no 기준으로 오름차순 정렬한 후, 같은 emp_no안에서 salary 기준으로 내림차순.

SELECT * FROM dept_emp
ORDER BY dept_no DESC, emp_no;