-- UPDATE
-- 데이터를 변경하는 명령문
-- UPDATE tname SET col1=val1, col2=val2, , , WHERE ,,
DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department;

SELECT * FROM dept_copy;

-- 책 (232쪽)
UPDATE dept_copy
SET dname='HR';

-- 책 (233쪽)
UPDATE dept_copy
SET dname='PROGRAMMING', loc='SEOUL'
WHERE dno=10;
SELECT * FROM dept_copy;

COMMIT;

UPDATE dept_copy
SET loc=(
        SELECT loc
        FROM dept_copy
        WHERE dno=20
)
WHERE dno=10;
SELECT * FROM dept_copy;

-- 책 234쪽
UPDATE dept_copy
SET dname=(SELECT dname 
            FROM dept_copy
            WHERE dno=30
),
loc=(SELECT loc
     FROM dept_copy
     WHERE dno=30)
WHERE dno=10;
SELECT * FROM dept_copy;

COMMIT;


-- (242쪽 혼자해보기)

-- 4
create table emp_copy
as
select* from employee;

-- 5
update emp_copy
set dno=10
where eno=7788;

-- 6
update emp_copy
set(job,salary) = (select job, salary
                  from emp_copy
                  where eno=7499)
where eno=7788;                  

-- 7
update emp_copy
set dno =(select dno
         from emp_copy
         where eno=7369)
where job = (select job
            from emp_copy
            where eno=7369);
            
SELECT * FROM emp_copy; 


-- DELETE 
-- DELETE FROM tname WHERE
SELECT * FROM dept_copy;

DELETE dept_copy
WHERE dno=10;

DELETE dept_copy;

COMMIT;

DROP TABLE emp_copy;
CREATE TABLE emp_copy
AS SELECT * FROM employee;
SELECT * FROM emp_copy;


DELETE emp_copy
WHERE dno=(SELECT dno
           FROM department
           WHERE dname='SALES');


-- 8
drop table dept_copy;
create table dept_copy
as
select * from department;

-- 9
delete from dept_copy
where dname='RESEARCH';

select * from dept_copy;

-- 10
delete from dept_copy
where dno in(10,40);

select * from dept_copy;

commit;
ROLLBACK;










