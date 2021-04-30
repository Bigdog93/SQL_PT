/* 테이블 생성
DDL 사용

CREATE TABLE 테이블명 (
	컬럼명 타입(길이) 옵션,
	컬럼명 타입(길이) 옵션,
	...
);
 */
 SHOW DATABASES;
 SELECT * FROM mambertbl;
 SELECT * FROM producttbl;
 CREATE TABLE mamberTBL (
 	memberID CHAR(8) PRIMARY KEY, # 프라이머리 키는 기본적으로 NOT NULL
 	# 프라이머리 키는 하나 무조건 있어줘야하며 UNIQUE, NOT NULL, INDEX 옵션이 기본 포함
 	# UNIQUE - 중복값 사용 금지, INDEX - 한마디로 목차로 만든다. 검색속도 UP
 	# 줄여서 PK
 	memberName CHAR(5) NOT NULL,
 	# CHAR 는 문자타입. 문자열 구분 따로 안함. 길이는 몇자까지 넣을수 있는지
 	# VARCHAR와의 차이는 메모리 사용의 차이.
 	# CHAR(8)은 무조건 8자만큼의 메모리를 사용함. 속도는 얘가 더 빨라
 	# VARCHAR(8)는 쓴만큼만 메모리 사용
 	memberAddress CHAR(20) NULL # null 혀용, 기본값이므로 안적어줘도 된다.
 );
 
 INSERT INTO mamberTBL
 (memberID, memberName, memberAddress)
 values
 ('Dang', '당탕이', '경기 부천시 중동'),
 ('Jee','지운이','서울 은평구 증산동'),
 ('Han', '한주연', '인천 남구 주안동'),
 ('Sang', '상길이', '경기 성남구 분당구');
 
 DELETE FROM mambertbl;
 
 CREATE TABLE productTBL (
 	productName CHAR(4) PRIMARY key,
 	cost INT NOT NULL,
 	makeDate DATE,
 	company CHAR(5),
 	amount INT NOT null
 );
 
 /*
  DATE 타입
  TIME 타입
  TIMESTAMP 타입 : 날짜와 시간 포함, 정수형으로 저장
  DATETIME : 
 */
 
 DROP TABLE producttbl;
 
 INSERT INTO producttbl
 (productName, cost, MAKEDATE, company, amount)
 values
 ('컴퓨터', 10,'2017-01-01','삼성',17),
 ('세탁기', 20, '2018-09-01', 'LG', 3),
 ('냉장고', 5, '2019-02-01', '대우', 22);
 /*
 데이터베이스에서 순서(정렬)는 아무 상관 없다.
 */
 
 
 