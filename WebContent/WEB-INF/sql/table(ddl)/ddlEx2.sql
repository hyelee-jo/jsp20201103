-- ���̺� ����
-- ALTER TABLE 
-- �÷� �߰�, �÷� ����, �÷� ����

-- �÷� �߰�
-- ALTER TABLE table_name ADD (new_col DATATYPE,,,);

-- å ����(210��)
DESC dept20;
ALTER TABLE dept20
ADD (birth date);

-- �÷� ����
-- ALTER TABLE tname MODIFY (colName type,,,);
-- å ���� (211��)
ALTER TABLE dept20
MODIFY (ename VARCHAR2(5));
DESC dept20;
/*
INSERT INTO dept20
(ename) VALUES ('abcdefghij');
commit;
select * FROM dept20;
*/

-- �÷� ����
-- ALTER TABLE tname DROP COLUMN col_name;
ALTER TABLE dept20
DROP COLUMN ename;
DESC dept20;


