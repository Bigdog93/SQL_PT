USE java;
SHOW TABLES;

SELECT * FROM producttbl;

SELECT
	case company
		when '대우' then '탱크대우'
		when 'LG' then '사랑해요 LG'
		when '삼성' then '또 하나의 가족'
		ELSE '바보'
		END AS company, # 컬럼명이 같으면 자바에서 에러 터짐 ㅋ
		company
FROM producttbl;

SELECT
	case
		when company = '대우' then '탱크대우'
		when company = 'LG' then '사랑해요 LG'
		when company = '삼성' then '또 하나의 가족'
		ELSE '바보'
		END AS exam,
		company
FROM producttbl;

