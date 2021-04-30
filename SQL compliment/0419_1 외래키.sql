USE java;

CREATE TABLE t_student (
	s_id INT UNSIGNED PRIMARY KEY, # unsigned : 양수값만 쓴다.
	nm VARCHAR(3) NOT NULL,
	ph CHAR(13)
);

SELECT * FROM t_student;
SELECT * FROM t_class;
SELECT * FROM t_score;

INSERT INTO t_student
(s_id, nm)
VALUES
(1111, '갑');

INSERT INTO t_student
(s_id, nm, ph)
VALUES
(1112, '을', '010-1111-1111'),
(1113, '병', '010-2222-2222');

CREATE TABLE t_class (
	c_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	cls VARCHAR(5) NOT NULL,
	teacher VARCHAR(5) NOT NULL	
);

INSERT INTO t_class
(cls, teacher)
VALUES
('수학', '김하나'),
('과학', '판테온'),
('국어', '오징어');

DROP TABLE t_score;
CREATE TABLE t_score (
	s_id INT UNSIGNED,
	c_id INT UNSIGNED,
	score INT,
	PRIMARY KEY(s_id, c_id),
	CONSTRAINT FK_sid FOREIGN KEY (s_id) REFERENCES t_student(s_id),
	# 이게 FM : FK_sid는 레이블링 (나중에 외래키 삭제하거나 할때
	FOREIGN KEY (c_id) REFERENCES t_class(c_id)
	# 외래키 걸때는 타입옵션까지(갈색) 완전히 똑같아야 한다.
);


INSERT INTO t_score
(s_id, c_id, score)
VALUES
(1111, 1, 100);



INSERT INTO t_student
(s_id, nm)
VALUES
(1114, '홍길동');

INSERT INTO t_score
(s_id, c_id, score)
VALUES
(1114, 2, 90);

INSERT INTO t_class
(cls, teacher)
VALUES
('사회', '김둘');

INSERT INTO t_score
(s_id, c_id, score)
VALUES
(1114, 4, 90);


