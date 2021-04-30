# --- SELECT문 개요
SELECT 컬럼명( , )
FROM 테이블명
JOIN 테이블 조인
WHERE 조건식(레코드 수 관련)(AND, OR)
GROUP BY ~~별 (통계 낼 때 주로 사용)( , )
HAVING 그룹바이의 조건식 (AND, OR)
ORDER BY 뽑아낸 레코드의 순서( , )
LIMIT (처음부터 몇개), (몇번인덱스부터,몇개) 뽑아낼지

# --- AS alias
USE 데이터베이스명 - 데이터베이스 선택
컬럼명 AS 'alias, 별칭' : 컬럼명 바꾸기 (WHERE절에선 안되고, HAVING절과 ORDER BY 절에서는 변수처럼 사용가능)
FROM 테이블명 '별칭' : 이 알리아스는 나중에 별칭.컬럼명으로 쓸 수 있다.(편의상)

SELECT emp_no AS numb, AVG(salary) AS 'avg_salary' FROM salaries
GROUP BY numb
HAVING avg_salary >= 90000
ORDER BY avg_salary;

# --- 관계연산자
관계연산자 : <, >, <=, >=, != = <>(이것도 같지않다.);

SELECT * FROM titles
WHERE title != 'Staff'; # 웬만하면 이거 쓰자

SELECT * FROM titles
WHERE title <> 'Staff'; 

# --- LIKE
WHERE (문자형)컬럼명 LIKE '%_X_%' # X 좌우 최소 한글자 있는
'_X%' X앞 딱 한글자
'X%' X자로 시작;


# --- BETWEEN
WHERE 컬럼명 >= 최소 AND  컬럼명 <= 최대
 =
WHERE 컬럼명 BETWEEN 최소 AND 최대; ( 최소, 최대 모두 포함);


# --- IN
SELECT * FROM titles
WHERE title = 'Staff' OR title = 'Engineer';

SELECT * FROM titles
WHERE title IN('Staff', 'Engineer'); # OR대신 이렇게 쓸 수 있다.

# -----------서브쿼리 - 괄호로 감싸기
SELECT * FROM employees
WHERE gender = ( # = 쓸때 서브쿼리문은 무조건 스칼라값)
	SELECT gender FROM employees
	WHERE emp_no = 10110
	);

SELECT * FROM titles
WHERE title IN ( # IN 쓸때는 해당 컬럼에 여러값 가능
	SELECT title FROM titles
	WHERE emp_no = 10007
);

# --- ORDER BY
SELECT * FROM salaries
ORDER BY emp_no DESC, salary; 
-- emp_no 기준으로 내림차순, emp_no가 같을경우 salary기준으로 오름차순

# --- DISTINCT
SELECT DISTINCT title FROM titles;
-- 중복된 값은 제외하고 보여준다.
SELECT DISTINCT emp_no, title FROM titles;
-- 둘다 중복된 경우 제외
SELECT emp_no, title FROM titles
GROUP BY emp_no, title
HAVING COUNT(emp_no) > 1;
-- 중복된 값 찾기

# --- LIMIT
SELECT * FROM dept_emp
ORDER BY emp_no ASC
LIMIT 10; # LIMIT 는 ORDER BY 와 한세트라 생각

SELECT * FROM dept_emp
ORDER BY emp_no ASC
LIMIT 2, 5; # 이걸로 페이징 처리 할꺼얌
