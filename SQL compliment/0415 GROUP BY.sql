/* GROUP BY */

SELECT * FROM salaries;

SELECT COUNT(*) FROM salaries;	# 레코드 수

SELECT COUNT(emp_no) FROM salaries; # 그 컬럼의 레코드 수(좀 빠르데)

SELECT MAX(salary) FROM salaries; # 컬럼의 값중 가장 큰 값

SELECT MIN(salary) FROM salaries; # 최솟값

SELECT SUM(salary) FROM salaries;

SELECT SUM(salary), MAX(salary) FROM salaries;

SELECT 1 + 1; # 이런것도 되네 ㅋㅋㅋ 연산 가능

SELECT 1 + 1 FROM DUAL; # 안써줘도 되는거

SELECT SUM(salary) / COUNT(salary) AS avg_salary
FROM salaries;

SELECT AVG(salary) FROM salaries;

SELECT COUNT(DISTINCT dept_no) FROM dept_emp; # 중복된거 빼면 몇개인지

SELECT emp_no, MAX(salary) FROM salaries
GROUP BY emp_no;
-- emp_no 별로 가장 큰 salary 구하기

SELECT emp_no, salary FROM salaries
GROUP BY emp_no; # ??

SELECT emp_no, MAX(salary), MIN(salary), SUM(salary), AVG(salary), COUNT(salary)
FROM salaries
GROUP BY emp_no
ORDER BY AVG(salary) DESC;

SELECT emp_no, MAX(salary), MIN(salary), SUM(salary), AVG(salary), COUNT(salary)
FROM salaries
GROUP BY emp_no
ORDER BY COUNT(salary) DESC, AVG(salary) DESC;
-- 가장 오래다닌 순서대로 내림차순, 연차가 같다면 평균급여 높은순대로

SELECT B.first_name, B.last_name, A.emp_no, AVG(A.salary) AS avg_salary 
FROM salaries A
LEFT JOIN employees B
ON A.emp_no = B.emp_no
GROUP BY A.emp_no
ORDER BY COUNT(A.salary) DESC, AVG(A.salary) DESC;

/* HAVING */
-- WHERE과 같이 조건절
-- WHERE 은 전체 레코드에서
-- HAVING 은 그룹바이로 분류한 애들 중에서 조건걸때
-- HAVING 은 GROUP BY와 한쌍이며, 위치는 GROUP BY 뒤에.

SELECT emp_no, MAX(salary), MIN(salary), SUM(salary), AVG(salary), COUNT(salary)
FROM salaries
GROUP BY emp_no
HAVING COUNT(salary) = 10
ORDER BY COUNT(salary) DESC, AVG(salary) DESC;