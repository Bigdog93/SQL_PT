USE java;

INSERT INTO membertbl
( memberID, memberName, memberAddress)
VALUES
('Kang', '강성헌', '대구 달서구 용산동');

DELETE FROM membertbl
WHERE memberID = 'Kang';

