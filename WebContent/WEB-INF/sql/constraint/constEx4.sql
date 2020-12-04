-- NOT NULL
-- CHECK
-- UNIQUE
-- FOREIGN KEY
-- PRIMARY KEY

SELECT * FROM user_constraints;

-- å (252 ��)
drop table customer;
CREATE TABLE customer (
    id VARCHAR2(20) CONSTRAINT customer_id_uk UNIQUE,
    pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR2(100));   

SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';

-- å (253��)
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

-- FOREIGN KEY �������� �����ϱ�
create table emp_second (
  eno number(4) constraint emp_seconde_eno_pk primary key,
  ename varchar2(10),
  job varchar2(9),
  dno number(2) constraint emp_seconde_dno_fk references department);

insert into emp_second values (8000, '����ȭ', 'FC', 50);

-- CHECK ���� ���� �����ϱ�
DROP TABLE emp_second;
create table emp_second (
   eno number(4) constraint emp_seconde_eno_pk primary key,
   ename varchar2(10),
   salary number(7,2) constraint emp_second_salary_min check (salary > 0));

insert into emp_second values(8000, '����ȭ', -200);










