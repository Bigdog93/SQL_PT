USE employees;

SELECT * FROM employees;

SELECT if(gender = 'M', '남성', '여성'), gender FROM employees;
# if문은 자바의 3항식 처럼 쓰면 된다.

SELECT if(gender = 'M', '남성', if(gender = 'F', '여성', '외계인')), gender FROM employees;
# if문에서 조건이 여러개면.. 거짓부분에 또 if문..

SELECT case when gender = 'M' 
	then '남성' ELSE '여성' END 
	AS '성별',
	gender
FROM employees; # 조건이 하나밖에 없으면

SELECT case 
	when gender = 'M' 
	then '남성' 
	when gender = 'F'
	then '여성' 
	ELSE '외계인'
	END 
	AS '성별',
	gender
FROM employees; # 조건이 여러개면, when then when then 등



# IFNULL - 자주쓰이는 친구. NULL이면 뒤에꺼 아니면 앞에꺼
SELECT *, IFNULL(salary, 0), NULLIF(salary, 77057)
FROM salaries
WHERE salary IS NULL
OR emp_no = 17170; 
# NULLIF - 앞에 컬럼의 데이터가 뒤에 값일 경우 NULL로


# --- CASE WHEN 다시
SELECT
	case 10
	when 1 then '일'
	when 5 then '오'
	when 10 then '십'
	ELSE '뭐지'
	END AS c_case;
	
SELECT
	case company
		when '대우' then '탱크대우'
		when 'LG' then '사랑해요 LG'
		when '삼성' then '또 하나의 가족'
		ELSE '바보'
		END AS company, # 컬럼명이 같으면 자바에서 에러 터짐 ㅋ
		company
FROM producttbl;

USE employees;
SELECT case
	when salary >= 80000 then '최고급인력'
	when salary >= 70000 then '고급인력'
	ELSE '저급인력' END AS 'LEVEL'
	, salary
FROM salaries;