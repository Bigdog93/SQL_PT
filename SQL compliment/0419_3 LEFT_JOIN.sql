CREATE TABLE t_board (
	iboard INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100) NOT NULL,
	ctnt VARCHAR(500) NOT NULL,
	r_dt DATETIME DEFAULT NOW() # DEFAULT 값 : 안쓰면 값 넣어줌
);

-- DROP TABLE t_board;

CREATE TABLE t_cmt (
	icmt INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	iboard INT UNSIGNED,
	ctnt VARCHAR(100) NOT NULL,
	r_dt DATETIME DEFAULT NOW()
);

-- DROP TABLE t_cmt;



INSERT INTO t_board
(title, ctnt)
VALUES
('안녕하세요', '철이 없었죠...'),
('Hello', 'I didn\'t have Iron..'),
('MariaDB 사용법', '잘 사용하세요...'),
('WTF 뜻??', 'What The Fuck? 의 줄임말.. 시이팔?? 이란 뜻');

INSERT INTO t_cmt
(iboard, ctnt)
VALUES
(1, '저도 철이 없었어요..'),
(1, '철이 없으신가요? 철물점 ㄱㄱ');


SELECT * FROM t_board;
SELECT * FROM t_cmt;

SELECT A.*, B.*
FROM t_board A
INNER JOIN t_cmt B # 둘 다 가지고 있는 애만 표시!!(FROM TABLE과 JOIN TABLE)
ON A.iboard = B.iboard;

SELECT A.*, B.*, IFNULL(B.ctnt, '댓글 없음')
FROM t_board A
LEFT JOIN t_cmt B # FROM TABLE 이 가지고 있는 애는 다 표시!!
ON A.iboard = B.iboard;

SELECT A.*, B.*, IFNULL(B.ctnt, '댓글 없음')
FROM t_board A
RIGHT JOIN t_cmt B # JOIN TABLE 이 가지고 있는 애는 다 표시!!
ON A.iboard = B.iboard;

# 댓글 없는 글만 보기
SELECT A.title, B.ctnt
FROM t_board A
LEFT JOIN t_cmt B
ON A.iboard = B.iboard
WHERE B.icmt IS null;