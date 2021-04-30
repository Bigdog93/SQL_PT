SELECT *
	, CONCAT(first_name,' ', last_name, ', ', gender) AS 'NAME'
FROM employees;

SELECT *
	, CONCAT_WS(' ', first_name, last_name, gender) AS name_gender
FROM employees;
# CONCAT_WS : 맨앞의 문자열을 그다음 문자열부터 문자열사이마다 넣어줄꺼야
