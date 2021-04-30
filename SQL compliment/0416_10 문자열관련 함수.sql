SELECT *, insert(dept_no, 2, 2, 'i')
FROM dept_emp;
# SELECT 안의 insert(컬럼명, 몇번째부터, 몇칸지우고, '채울문자열')

SELECT *, LEFT(first_name, 2), upper(RIGHT(first_name,3))
FROM employees;
# LEFT(컬럼명, 왼쪽에서 몇자까지)
# RIGHT 오른쪽부터 몇자까지

# upper(문자열) 대문자로 = ucase()
# lower(문자열) 소문자로 = lcase()

SELECT first_name
, LPAD(first_name, 10, '#')
FROM employees;

# LPAD(컬럼명, 차지할 공간, 남은공간에 왼쪽에 채울 문자열)
# RPAD 오른쪽에 채워줌

SELECT TRIM('     안 녕    ') AS hi;
# TRIM( 문자열 ) : 문자열의 좌우 공백을 없애준다.

SELECT TRIM('      안 녕      ') AS hi;

SELECT REPLACE('    하   하      ', ' ', '') FROM employees;

SELECT birth_date,
LEFT(birth_date, 4),
SUBSTRING(birth_date, 6, 2) AS mon,
MID(birth_date, 6, 2) AS mon2,
SUBSTR(birth_date, 6, 2) AS mon3,
RIGHT(birth_date, 2) AS day,
CAST(RIGHT(birth_date,2) AS INT) AS day_int
FROM employees;