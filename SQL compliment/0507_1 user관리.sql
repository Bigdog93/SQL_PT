-- 유저 계정 생성
CREATE USER 'joe'@'%' IDENTIFIED BY 'black';
# % 하면 외부 접근 혀용

CREATE USER 'joe'@'localhost'; 
# localhost 하면 데이터베이스가 있는 디바이스에서만 접속 허용 

-- 계정 권한 확인
SHOW GRANTS FOR 'joe';

-- 권한 부여
GRANT ALL PRIVILEGES ON test2.* TO 'joe'@'%';
-- 외부에서 접속하는 joe 에게 모든 test2 데이터베이스의 모든 테이블에 모든 권한을 허용한다.

--권한 삭제
REVOKE ALL ON test.* FROM 'joe'@'%';


FLUSH PRIVILEGES;
-- 변경된 권한정보 등을 바로 메모리에 적용

USE mysql;
-- UPDATE user SET PASSWORD=PASSWORD('white') WHERE user='joe';
SET PASSWORD FOR 'joe'@'%' = PASSWORD('white');
-- joe 계정 비밀번호 변경

-- 보기
SELECT USER, PASSWORD FROM USER;

-- 유저 삭제
DROP user 'joe'@'%';