/* VIEW */
/* SELECT 문으로 만든 가상테이블  */

CREATE VIEW view_abcd AS
SELECT * FROM membertbl
WHERE memberName LIKE '%이%';

SELECT * FROM view_abcd;

SELECT * FROM view_abcd
WHERE memberID = 'Dang';