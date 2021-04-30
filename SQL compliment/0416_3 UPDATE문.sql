SELECT * FROM testtbl2;

UPDATE 테이블명
SET 컬럼명 = 수정값
, 컬럼명 = 수정값
, ...
WHERE 조건식 ( 레코드 지정);

UPDATE testtbl2
SET userName = '이주찬', age = 29
WHERE id = 3; # UPDATE나 DELETE문에 WHERE절에는 PK값을 많이 쓴다.

# WHERE, FROM 절 앞에 , 하지마
# WHERE 절에 조건 추가시엔 , 아니고 AND | OR
SET 할때는 서브쿼리 사용 가능. (스칼라값);
# 스칼라값은 속도가 느려지기 때문에 남발하지 말것