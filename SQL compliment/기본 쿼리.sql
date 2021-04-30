/* 기본 쿼리 */

CREATE DATABASE Practice;

USE Practice;

SHOW TABLES; # 전체 테이블 조회

SHOW INDEX FROM t_score; # PK는 기본적으로 인덱스가 걸려있다.
SHOW INDEX FROM t_customer; # INDEX 조회

# 뷰 보기
SHOW FULL TABLES WHERE TABLE_TYPE LIKE 'view';

SHOW FULL TABLES;

USE practice;
CREATE TABLE T_ORDER (
	o_no INT PRIMARY KEY,
	cus_no INT,
	o_date DATETIME DEFAULT NOW(),
	o_price INT DEFAULT 0,
	FOREIGN KEY (cus_no) REFERENCES T_CUSTOMER(cus_no)
);
CREATE TABLE T_CUSTOMER (
	cus_no INT PRIMARY KEY,
	nm CHAR(10) NOT NULL
);

DROP TABLE t_order;
DROP TABLE t_customer;

INSERT INTO  t_customer
(cus_no, nm)
VALUES
(3, '홍길동'),
(5, '이순신');

INSERT INTO t_order
(o_no, cus_no, o_price)
VALUES
(1, 3, 55000),
(2, 5, 70000),
(3, 3, 60000);

UPDATE t_customer
SET nm = '장보고'
WHERE cus_no = 5;

DELETE FROM t_order
WHERE o_no = 2;

SELECT * FROM t_order;

SELECT * FROM t_order
WHERE cus_no = 3;

SELECT o_no, o_price FROM t_order
WHERE cus_no = 3;

CREATE INDEX idx_customer_nm
ON t_customer(nm);

DROP INDEX idx_customer_nm ON t_customer;

CREATE VIEW view_order_info AS
SELECT A.o_no, A.o_date, A.o_price, B.nm
FROM t_order A
INNER JOIN t_customer B
ON A.cus_no = B.cus_no;

DROP VIEW view_order_info;

CREATE DATABASE boardDB;

USE boardDB;

CREATE TABLE board {
	board_idx INT AUTO_INCREMENT PRIMARY KEY,
	title CHAR NOT NULL,
	ctnt CHAR,
	viewcnt INT DEFAULT 0,
	likecnt INT DEFAULT 0,
	dislike INT DEFAULT 0
}

