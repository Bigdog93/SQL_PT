/* INNER JOIN */

SELECT STU.nm, SCR.score, cls.cls
FROM t_score SCR
INNER JOIN t_student STU
ON SCR.s_id = STU.s_id
INNER JOIN t_class cls
ON SCR.c_id = cls.c_id;

SELECT * FROM t_score;

SELECT B.nm, C.cls, A.score, C.teacher
FROM t_score A
INNER JOIN t_student B
ON A.s_id = B.s_id
INNER JOIN t_class C
ON A.c_id = C.c_id;

SELECT C.teacher, C.cls, AVG(A.score)
FROM t_score A
INNER JOIN t_student B
ON A.s_id = B.s_id
INNER JOIN t_class C
ON A.c_id = C.c_id
GROUP BY C.teacher;

/* LEFT JOIN */
