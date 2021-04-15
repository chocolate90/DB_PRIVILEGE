--XEPDB1 �����ͺ��̽��� SYS���� DBA�������� ����

--����� ���� ����
CREATE USER USER1
IDENTIFIED BY USER1;

--����� ���� ���� �ο� - GRANT ���� TO ����
GRANT CREATE SESSION,
      CREATE TABLE,
      CREATE VIEW,
      CREATE SEQUENCE,
      CREATE PROCEDURE
TO USER1;

--���̺� �����̽��� ���� OR ������ �ִ� ���̺� �����̽��� ����
--ALTER USER ������ DEFAULT TABLESPACE ���̺����̽��� QUOTA UNLIMITED ON ���̺����̽���
ALTER USER USER1 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--����� ������ ������ ȸ��

REVOKE CREATE SESSION,
       CREATE TABLE,
       CREATE VIEW,
       CREATE SEQUENCE,
       CREATE PROCEDURE
FROM USER1;

--------------------------------------

--���� ���� (������ ����ϴ� ��� ���̺�, ������ ��� �Բ� ����)
DROP USER USER1 CASCADE;

--2ND (���� �̿��� ����)
CREATE USER USER1
IDENTIFIED BY USER1;

GRANT CONNECT, RESOURCE /*, DBA*/ TO USER1; --DBA�� ��� ����

ALTER USER USER1 DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--���콺�ε� ��������, ���Ѻο�, ���̺����̽� ������ �����ϴ�
--���� -> DBA

--��й�ȣ ���湮
ALTER USER USER2 IDENTIFIED BY USER2;