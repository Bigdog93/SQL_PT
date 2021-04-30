숫자형 데이터타입에서 양수만 저장할 경우, UNSIGNED 옵션
-21억 ~ 21억이면
0 ~ 42억까지 저장할 수 있다.;

SELECT NOW(); # 현재 날짜 시간

SELECT CAST('2020-10-19 12:35:29' AS DATE) AS DATE;
SELECT CAST('2020-10-19 12:35:29' AS DATETIME) AS DATETIME;
# 자바의 형변환 같은 애. AS 앞의 데이터를 AS 뒤의 타입으로

SELECT CAST('10' AS INT(3)), '10';

SELECT CAST('10' AS INT) + 10, '10' + 10;
# 데이터베이스는 숫자형 우선

SELECT CAST('10' AS INT) + 10, 'ab10' + 10;
# DB에서는 문자열 끼리 + 연산자 작동안함

SELECT CONCAT('10', '10');
# 문자열로서 합치고 싶을땐 CONCAT( , )

SELECT date_FORMAT(NOW(), '%y년 %m월 %d일'); # y - 21년

SELECT date_FORMAT(NOW(), '%Y년 %m월 %d일 %h:%i:%s'); # Y - 2021년

SELECT date_FORMAT(NOW(), '%Y년 %m월 %d일 %H:%i:%s'); # H - 13시

SELECT DATE_FORMAT('2020-10-19 12:35:29', '%Y년 %m월 %d일 %H:%i:%s');
# DATE_FORMAT 안에는 알아서 형변환 해준다.