-- �⺻�� ����
CREATE TABLE const12 (
id NUMBER DEfAULT 0,
name VARCHAR2(30)
);
INSERT INTO const12 (id, name)
VALUES (3, 'jone');
INSERT INTO const12 (name)
VALUES ('jane');
INSERT INTO cnost12 (id, name)
VALUES (null, 'donald');

SELECT * FROM const12;

SELECT * FROM user_constraints
WHERE table_name='CONST12';

SELECT * FROM USER_TAB_COLUMNS
WHERE table_name='CONST12';