INSERT INTO testtbl2
(id, userName, age) VALUES (1, '지민', 25);
INSERT ignore INTO testtbl2 # ignore 이 있으면 에러가 나도 안멈추고 밑에꺼 실행시켜줌
(id, userName, age) VALUES (1, '유나', 22);
INSERT INTO testtbl2
(id, userName, age) VALUES (3, '유경', 29); 