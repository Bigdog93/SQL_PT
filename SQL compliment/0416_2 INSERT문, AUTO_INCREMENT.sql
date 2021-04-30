CREATE TABLE testtbl2 (
	id INT AUTO_INCREMENT, # 자동으로 1씩 증가, INSERT시 무시할 수 있음
	# AUTO_INCREMENT는 INT형 PK(Primary Key)에만 줄 수 있다.
	userName CHAR(3),
	age INT,
	PRIMARY KEY(id) # 이렇게 줄 수도 있다. 2개이상 줄때는 무조건 이렇게 줘야한다.
);

INSERT INTO testtbl2
(id, userName, age) VALUES (1, '지민', 25);
INSERT ignore INTO testtbl2 # ignore 이 있으면 에러가 나도 안멈추고 밑에꺼 실행시켜줌
(id, userName, age) VALUES (1, '유나', 22);
INSERT INTO testtbl2
(id, userName, age) VALUES (3, '유경', 29); 
# AUTO_INCREMENT를 넣고 해도 된다.
# 안넣고 하는게 더 좋아


INSERT INTO testtbl2
(userName, age)
VALUES
('지민', 25),
('유나', 22),
('유경', 21);
# 컬럼명 명시 안하면, 이렇게 써야한다.
INSERT INTO testtbl2
VALUES
(NULL, '지민', 25),
(NULL, '유나', 22),
(NULL, '유경', 21);

SELECT * FROM testtbl2;

# --- 가져와서 대량 INSERT
INSERT INTO testtbl2
(userName, age)
SELECT userName, age FROM testTBL2;

INSERT INTO testtbl2
(userName, age)
SELECT userName, 30 FROM testTBL2; # 한 컬럼에 고정값 다 주기

SELECT *, '안녕' AS hi FROM testTbl2; # 이렇게도 가능 ㅋㅋ

SELECT age, age + 10 FROM testtbl2; # 이런것도,
SELECT age, age + 10 AS '10년후'FROM testtbl2; #가능 ㅋ

INSERT INTO testtbl2
(userName, age)
SELECT userName, age+5 FROM testtbl2;

INSERT INTO testtbl2
(userName, age)
SELECT '홍길동', age FROM testtbl2
LIMIT 2;

SELECT age, age+10 AS agePlus10, 1+1 AS num1 FROM testtbl2;


DROP TABLE testtbl2;