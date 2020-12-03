-- ������(record, row) �߰�
-- INSERT INTO tname (col1, col2) VALUES (val1, val2);
-- å (227��)
CREATE TABLE dept_copy
AS
SELECT * FROM department WHERE 0=1;

DESC dept_copy;
INSERT INTO dept_copy -- (dno, dname, loc)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO dept_copy (dno, dname, loc)
VALUES (20, 'DALLAS', 'RESEARCH');

INSERT INTO dept_copy (dname, dno, loc)
VALUES ('DALLAS', 20, 'RESEARCH');

SELECT * FROM dept_copy;

COMMIT;

-- NULL
-- ���� �ȳִ� ���
-- å (228)
DESC dept_copy;
INSERT INTO dept_copy (dno, dname)
VALUES (30, 'SALES');
SELECT * FROM dept_copy;

INSERT INTO dept_copy (dno, dname, loc)
VALUES (40, 'OPERATIONS', NULL);

COMMIT;

-- ORACLE : NULL ''
-- å (229 ��)
DESC dept_copy;
INSERT INTO dept_copy
VALUES (50, 'COMPUTING', '');
SELECT * FROM dept_copy;
COMMIT;

