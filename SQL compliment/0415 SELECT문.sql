/* SELECT 문 */

-- SELECT 컬럼명 FROM 테이블명  - 기본형태

SELECT * FROM producttbl;
SELECT cost, company FROM producttbl;
SELECT amount, cost, company
FROM producttbl;

SELECT * FROM producttbl
WHERE company = 'LG'; -- WHERE 절은 SQL의 조건절


SELECT * FROM membertbl
WHERE memberName = '지운이';

SELECT * FROM producttbl
WHERE cost <= 10 AND company = '대우';

SELECT * FROM producttbl
WHERE cost >= 10 OR amount > 5;

# `이사이에` 넣으면 공백도 넣을 수 있는데 웬만하면 쓰지 말자.

# DDL - CREATE, DROP, ALTER
# UPDATE, DROP, DELETE 는 항상 조심! 무조건 백업 먼저 ctrl+z 안된다..

DROP TABLE t_exam;