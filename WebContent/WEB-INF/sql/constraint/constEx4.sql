-- NOT NULL
-- CHECK
-- UNIQUE
-- FOREIGN KEY
-- PRIMARY KEY

SELECT * FROM user_constraints;

-- 책 (252 쪽)
drop table customer;
CREATE TABLE customer (
    id VARCHAR2(20) CONSTRAINT customer_id_uk UNIQUE,
    pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR2(100));   

SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';

-- 책 (253쪽)
DROP TABLE customer;
CREATE TABLE customer (
  id VARCHAR2(20),
  pwd VARCHAR2(20) CONSTRAINT customer_pwd NOT NULL,
  name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
  phone VARCHAR2(30),
  address VARCHAR2(100),
  CONSTRAINT customer_id_pk PRIMARY KEY (id)
  
  );
SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';

-- FOREIGN KEY 제약조건 지정하기
create table emp_second (
  eno number(4) constraint emp_seconde_eno_pk primary key,
  ename varchar2(10),
  job varchar2(9),
  dno number(2) constraint emp_seconde_dno_fk references department);

insert into emp_second values (8000, '윤정화', 'FC', 50);

-- CHECK 제약 조건 지정하기
DROP TABLE emp_second;
create table emp_second (
   eno number(4) constraint emp_seconde_eno_pk primary key,
   ename varchar2(10),
   salary number(7,2) constraint emp_second_salary_min check (salary > 0));

insert into emp_second values(8000, '윤정화', -200);










