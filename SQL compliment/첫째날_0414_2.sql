SELECT * FROM t_exam;

UPDATE t_exam
SET age = 9
WHERE i_exam = 2;
# WHERE 없이 쓰지 말자.. 데이터베이스에서는 ctrl+z 없다..ㄷㄷ
# UPDATE 랑 DELETE는 신중 또 신중하게 쓸것..

DELETE FROM t_exam
WHERE i_exam = 3; # 하면 i_exam이 3인 행 지워버리깅

/*
SQL에서 객체라는 말은 쓰지 않는다. 개체라는 말을 쓴다.

테이블명, 개체명은 영어를 사용해야 한다.

데이터베이스에서 null은 값이 없다는 뜻.
*/
