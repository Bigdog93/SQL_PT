CREATE DATABASE boardver5;

USE boardver5;

CREATE TABLE t_board (
	iboard INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(20) NOT NULL,
	ctnt VARCHAR(200),
	regdt DATETIME DEFAULT NOW(),
	viewcnt INT UNSIGNED DEFAULT 0,
	likecnt INT UNSIGNED DEFAULT 0,
	dislike INT UNSIGNED DEFAULT 0
);

CREATE TABLE t_cmt (
	iboard INT UNSIGNED,
	icmt INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	cmt VARCHAR(50) NOT NULL,
	cmtID VARCHAR(12) DEFAULT '익명',
	cmt_regdt DATETIME DEFAULT NOW(),
	likecnt INT UNSIGNED DEFAULT 0,
	dislike INT UNSIGNED DEFAULT 0
);

SELECT MAX(iboard) AS maxiboard FROM t_board;

SELECT A.iboard, A.title, A.regdt, A.viewcnt, A.likecnt, A.dislike, COUNT(B.icmt) AS cmtcnt 
FROM t_board A LEFT JOIN t_cmt B 
ON A.iboard = B.iboard 
GROUP BY A.iboard
ORDER BY A.iboard DESC;

SELECT * FROM t_cmt WHERE iboard = 5;
