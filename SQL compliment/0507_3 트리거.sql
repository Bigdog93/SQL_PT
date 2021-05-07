-- 트리거
-- 어떤 명령문이 주어졌을때 같이 수행할 친구

CREATE TABLE t_cus (
	cus_no INT PRIMARY KEY AUTO_INCREMENT, # PK의 기본 속성 : UNIQUE, NOT NULL, INDEX
	nm VARCHAR(13) NOT NULL
);

DROP TABLE t_cus;

CREATE TABLE t_order (
	o_no INT PRIMARY KEY AUTO_INCREMENT,
	cus_no INT,
	o_date DATETIME DEFAULT NOW(),
	o_price INT,
	FOREIGN KEY (cus_no) REFERENCES t_cus (cus_no)
);

DROP TABLE t_order;

INSERT INTO t_cus
(nm)
VALUES
('대조영');

INSERT INTO t_order
(cus_no, o_price)
VALUES
(1, 1300),
(3, 3000),
(2, 19000),
(1, 9800);

DELETE FROM t_cus
WHERE cus_no = 1;

DROP TRIGGER if EXISTS trg_DEL_CUSTOMER;
DELIMITER $$
CREATE TRIGGER trg_DEL_CUSTOMER # 트리거 이름
BEFORE DELETE ON t_cus # t_cus 에 delete 문이 날아가면 수행 전에
FOR EACH ROW # 각 행 별로
BEGIN
	DELETE FROM t_order
	WHERE cus_no = OLD.cus_no; # OLD. -> 위에서 지우라고 한 레코드의 속성값
END $$
DELIMITER ; 