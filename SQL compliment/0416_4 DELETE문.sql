DELETE FROM 테이블명
WHERE 조건식;

DELETE FROM testtbl2
WHERE id = 10;
# 비워진 부분은 땡길수는 있는데 PK값은 웬만하면 건들지 말자.

CREATE TABLE testTBL3 SELECT * FROM testtbl2; 
# 테이블 복사, PK스키마는 안옮겨진다.

CREATE TABLE testTBL3 AS SELECT * FROM testtbl2; 

CREATE TABLE testTBL4 ( SELECT * FROM testtbl2); 
# 이것도 복사

DELETE FROM testtbl3; # 테이블의 데이터 모두 삭제(스키마는 살아있다)
TRUNCATE testtbl2; # 이것도 데이터 삭제

DROP TABLE testtbl4; # DROP은 테이블,데이터베이스 자체를 날리는것

SELECT * FROM testtbl3;

DROP TABLE if exists testtbl4;
# 있으면 DROP해라. 에러방지

SHOW CREATE TABLE testtbl2;
# testtbl2 테이블 만드는 코드 보기