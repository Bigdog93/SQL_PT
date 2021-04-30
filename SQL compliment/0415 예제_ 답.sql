SELECT * FROM employees
WHERE gender = 'F'
AND first_name LIKE 'S%'
AND hire_date >= '1990-01-01';

SELECT title FROM titles
GROUP BY title
HAVING COUNT(title) = (
	SELECT MAX(A.cnt) FROM ( # 서브쿼리문을 테이블로 취급
		SELECT COUNT(title) AS cnt # 컬럼명이 함수명이 되어 쓰기 애매해지므로 알리아스 부여
		FROM titles
		GROUP BY title
	) A
);

