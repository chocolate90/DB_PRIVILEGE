--XEPDB1 데이터베이스에 SYS계정 DBA권한으로 접속

--사용자 계정 생성
CREATE USER USER1
IDENTIFIED BY USER1;

--사용자 계정 권한 부여 - GRANT 권한 TO 계정
GRANT CREATE SESSION,
      CREATE TABLE,
      CREATE VIEW,
      CREATE SEQUENCE,
      CREATE PROCEDURE
TO USER1;

--테이블 스페이스를 생성 OR 기존에 있는 테이블 스페이스를 지정
--ALTER USER 계정명 DEFAULT TABLESPACE 테이블스페이스명 QUOTA UNLIMITED ON 테이블스페이스명
ALTER USER USER1 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--사용자 계정에 권한을 회수

REVOKE CREATE SESSION,
       CREATE TABLE,
       CREATE VIEW,
       CREATE SEQUENCE,
       CREATE PROCEDURE
FROM USER1;

--------------------------------------

--계정 삭제 (계정이 사용하는 모든 테이블, 시퀀스 등등 함께 삭제)
DROP USER USER1 CASCADE;

--2ND (롤을 이용한 권한)
CREATE USER USER1
IDENTIFIED BY USER1;

GRANT CONNECT, RESOURCE /*, DBA*/ TO USER1; --DBA는 모든 권한

ALTER USER USER1 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--마우스로도 계정생성, 권한부여, 테이블스페이스 지정이 가능하다
--보기 -> DBA

--비밀번호 변경문
ALTER USER USER2 IDENTIFIED BY USER2;