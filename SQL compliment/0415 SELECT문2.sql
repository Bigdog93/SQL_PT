/*SELECT 옵션들
ALL
DISTINCT - 중복 제거
DISTINCTROW

SELECT DISTINCT
컬럼명 | *
FROM 테이블명
WHERE 조건식(AND OR 이용해 무한대)
GROUP BY 컬럼명, 컬럼명, ...
HAVING(GROUP BY의 조건식)
ORDER BY 레코드의 순서 조정
LIMIT 레코드 수 제한
*/

/* 주로 사용하는애는
SELECT 컬럼명
FROM 테이블명
WHERE 조건;
*/

/* USE문
USE 데이터베이스명;
*/
USE employees; # employees 데이터베이스로..
SELECT * FROM titles;
USE java;
SELECT * FROM indextbl
LIMIT 100;

SHOW DATABASES; # 데이터베이스들 보여줘
SHOW TABLES; # 테이블들 보여줘
SHOW TABLE STATUS; # 테이블 자세히 보여줘

/* InnoDB vs MyISAM
InnoDB는 트랜잭션이 걸리고 MyISAM은 트랜잭션이 안걸린다.*/

SELECT A.emp_no, emp_no AS 'eno', emp_no # 별칭 alias. 컬럼명을 다르게 표시
FROM titles AS A; # AS 생략가능

SELECT * FROM titles
WHERE emp_no >= 10600 AND title = 'Staff';

SELECT * FROM titles
WHERE emp_no >= 10500 AND emp_no <= 20000;

SELECT * FROM titles
WHERE emp_no BETWEEN 10500 AND 20000;

SELECT * FROM titles
WHERE title = 'Engineer' OR title = 'Staff'
OR title = 'Senior Staff';

SELECT * FROM titles
WHERE title IN ('Engineer', 'Staff', 'Senior Staff');
# IN 은 속도가 쬐끔 느리다고 한다.

SELECT * FROM employees
WHERE first_name LIKE 'G%'; # 대략 G 뭐시기인 애들 찾기

SELECT * FROM employees
WHERE last_name LIKE '%m';

SELECT * FROM employees
WHERE first_name LIKE '%ma%'; # 걍 ma 들어가는 애들 다 찾아

SELECT * FROM employees
WHERE first_name LIKE '_MA%'; # ma앞에 무조건 한문자

SELECT * FROM employees
WHERE first_name LIKE '%_MA__%'; # ma 앞에 최소 한글자, 뒤에 최소 두글자

SELECT * FROM employees
WHERE gender = 'M';

SELECT * FROM employees
WHERE gender = 
(SELECT gender FROM employees
WHERE emp_no = 10066);
-- 서브쿼리 : 쿼리 안의 쿼리. 안쪽의 SELECT문의 결과는 스칼라값이어야 한다.
-- 스칼라값 : row(레코드)도 한개, 컬럼도 한개

SELECT 'M' AS gender; # 이것도 스칼라 값;;