/* DISTINCT */

SELECT DISTINCT dept_no FROM dept_emp; -- 중복된거 표시 안함

SELECT DISTINCT emp_no, dept_no FROM dept_emp; 
-- emp_no와 dept_no가 모두 같은 애들 표시안함
-- null 도 뜬다.

UPDATE salaries
SET salary = NULL
WHERE emp_no = 17169
AND from_date = '1990-11-07';

SELECT DISTINCT salary FROM salaries
ORDER BY salary;

