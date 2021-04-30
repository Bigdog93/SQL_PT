/* LIMIT */
-- LIMIT문은 SELECT 문의 마지막에 와야한다.
-- ORDER BY 는 LIMIT 바로 위.(LIMIT 없으면 ORDER BY가 마지막)
SELECT * FROM dept_emp
ORDER BY emp_no;

SELECT * FROM dept_emp
ORDER BY emp_no
LIMIT 5; # 처음부터 5개

SELECT * FROM dept_emp
ORDER BY emp_no
LIMIT 4, 5;	 # (0부터 시작) 4번째 부터 5개
