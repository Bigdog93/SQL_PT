/* 인덱스 */

# 인덱스 붙이기
CREATE INDEX 레이블명
ON 테이블명(컬럼명);

# INDEX 삭제
ALTER TABLE 테이블명 DROP INDEX 인덱스명;
DROP INDEX 인덱스명 ON 테이블명; # 둘 다 된다.


CREATE TABLE indextbl (
	first_name VARCHAR(16),
	last_name VARCHAR(16),
	hire_date DATE
);

DROP TABLE indextbl;

INSERT INTO indextbl
(first_name, last_name, hire_date)
SELECT first_name, last_name, hire_date
FROM employees.employees
LIMIT 1000;
# value 대신 select 문을 넣으면 select문 이하의 자료들을 테이블에 넣을 수 있다.

explain SELECT * FROM indextbl;

explain SELECT * FROM indextbl
WHERE first_name = 'Mary';
# explain - 쿼리문이 실행되는 과정..? 보여주는 것
# type이 ALL이면 전수조사 한다는 뜻

SELECT * FROM indextbl;

CREATE INDEX idx_indexTBL_firstname
ON indextbl(first_name);

/* 
INDEX를 붙여놓으면 메모리 내부적으로 정리를 해놓는다.
WHERE 등의 조건식을 쓸때 INDEX를 이용해 빠르게 읽을수 있다.
ex) age >= 30 이면 INDEX를 이용해 30언저리인 값부터 검색.
varchar, char형 자료에도 INDEX 가능.
DB에서는 char형 자료도 모두 정수로 저장.(인코딩)
*/
SELECT 'b' > 'a';



CREATE INDEX idx_Name
ON membertbl(memberName);

SHOW INDEX FROM membertbl;



ALTER TABLE membertbl DROP INDEX idx_Name;