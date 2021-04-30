SHOW DATABASES;
CREATE TABLE t_exam ( # 테이블(엑셀의 시트같은)만들기
	i_exam INT auto_increment PRIMARY KEY,
	title VARCHAR(100),
	jumin CHAR(13),
	age INT(3) NOT null
	);

DROP TABLE t_exam; # 테이블 지우기

DROP DATABASE java; # 데이터베이스 지우기
CREATE DATABASE java; # 데이터베이스 만들기

INSERT INTO t_exam # t_exam 데이블의
( I_EXAM, TITLE, JUMIN, age ) # 라는 이름의 column에 순서에 맞게
VALUES # 아래 값들을
( 1, '안녕하세요', '9512192637589', 27); # 저장할꺼야

INSERT INTO t_exam
( I_EXAM, TITLE, JUMIN, age )
VALUES
( 2, '마리아', '9508082156485', 27), # 이렇게 여러개 동시 입력 가능
( 3, '하이디', '4101218549785', 593);

/* 스키마 : 열의 개수, 각 열에 들어갈 
데이터 타입등을 정해놓은 것 */
-- 이렇게도 주석
#이렇게도 주석임

SELECT * FROM t_exam; # 테이블 불러오기

/* DCL 제어어 root가 쓰는 명령어. 쓸일 거의 없음

DDL 정의어(생성, 수정, 삭제)

<CRUD> - DML (데이터조작어) - 젤 많이 쓰게 될것.
C - 쓰기 - INSERT
R - 읽기 - SELECT - 젤 어렵다
U - 수정 - UPDATE
D - 삭제 - DELETE
*/