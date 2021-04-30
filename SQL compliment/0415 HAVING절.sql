/* HAVING */
-- WHERE과 같이 조건절
-- WHERE 은 전체 레코드에서
-- HAVING 은 그룹바이로 분류한 애들 중에서 조건걸때
-- HAVING 은 GROUP BY와 한쌍이며, 위치는 GROUP BY 뒤에.

SELECT emp_no, MAX(salary), MIN(salary), SUM(salary), AVG(salary), COUNT(salary)
FROM salaries
GROUP BY emp_no
HAVING COUNT(salary) = 10
ORDER BY COUNT(salary) DESC, AVG(salary) DESC;

/* SELECT 문 작성 순서
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
*/