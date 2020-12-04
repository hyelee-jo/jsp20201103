-- 제약 사항 추가
DROP TABLE emp_copy;

CREATE TABLE emp_copy
AS
SELECT * FROM employee;

SELECT * FROM emp_copy;

SELECT * FROM user_constraints
WHERE table_name='EMPLOYEE';

SELECT * FROM user_constraints
WHERE table_name='EMP_COPY';

ALTER TABLE emp_copy
ADD PRIMARY KEY (eno);

DROP TABLE dept_copy;

CREATE TABLE dept_copy
AS
SELECT * FROM department;

ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY (dno);

SELECT * FROM user_constraints
WHERE table_name='DEPT_COPY';

-- FOREIGN KEY 제약 조건 추가하기
alter table emp_copy
add constraint emp_copy_dno_fk
foreign key(dno) references dept_copy(dno);

select table_name, constraint_name from user_constraints where table_name in ('EMP_COPY', 'DEPT_COPY');

-- 책 (260 쪽)
ALTER TABLE emp_copy
MODIFY ename CONSTRAINT emp_copy_ename_nn NOT NULL;

select table_name, constraint_name
from user_constraints where table_name in('EMP_COPY');

-- 제약사항 삭제

ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

select * FROM user_constraints
WHERE table_name='DEPT_COPY';

ALTER TABLE emp_copy
DROP CONSTRAINT SYS_C007393;

-- dept_copy primary 제약사항 삭제
ALTER TABLE dept_copy
DROP CONSTRAINT DEPT_COPY_DNO_PK;

ALTER TABLE emp_copy
DROP CONSTRAINT EMP_COPY_DNO_FK;

ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE;

-- 265쪽 혼자해보기

-- 1번
drop table emp_sample;

create table emp_sample
as
select * from employee where 1=0;

alter table emp_sample
add constraint my_emp_pk primary key(eno);

select table_name, constraint_name from user_constraints where table_name in ('EMP_SAMPLE');

-- 2번
drop table dept_sample;
create table dept_sample
as
select * from department where 1=0;

alter table dept_sample
add constraint my_dept_pk primary key(dno);

select table_name, constraint_name from user_constraints where table_name in ('DEPT_SAMPLE');

-- 3번
alter table emp_sample
add constraint my_emp_dept_fk
foreign key(dno) references department(dno);

select table_name, constraint_name
from user_constraints where table_name in ('EMP_SAMPLE');

-- 4번
alter table emp_sample
add constraint emp_commission_min check (commission > 0);

select table_name, constraint_name from user_constraints where table_name in('EMP_SAMPLE');




