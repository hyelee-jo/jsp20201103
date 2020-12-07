--------------------------------------------------------
--  ?????? ?????? - ?????-11??-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "C##MYDBMS"."EMPLOYEE" 
   (	"ENO" NUMBER(4,0), 
	"ENAME" VARCHAR2(10 BYTE), 
	"JOB" VARCHAR2(9 BYTE), 
	"MANAGER" NUMBER(4,0), 
	"HIREDATE" DATE, 
	"SALARY" NUMBER(7,2), 
	"COMMISSION" NUMBER(7,2), 
	"DNO" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##MYDBMS.EMPLOYEE
SET DEFINE OFF;
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7369,'SMITH','CLERK',7902,str_to_date('1980,12,17','%Y,%m,%d'),800,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7499,'ALLEN','SALESMAN',7698,str_to_date('1981,02,20','%Y,%m,%d'),1600,300,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7521,'WARD','SALESMAN',7698,str_to_date('1981,02,22','%Y,%m,%d'),1250,500,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7566,'JONES','MANAGER',7839,str_to_date('1981,04,02','%Y,%m,%d'),2975,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7654,'MARTIN','SALESMAN',7698,str_to_date('1981,09,28','%Y,%m,%d'),1250,1400,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7698,'BLAKE','MANAGER',7839,str_to_date('1981,05,01','%Y,%m,%d'),2850,null,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7782,'CLARK','MANAGER',7839,str_to_date('1981,06,09','%Y,%m,%d'),2450,null,10);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7788,'SCOTT','ANALYST',7566,str_to_date('1987,07,13','%Y,%m,%d'),3000,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7839,'KING','PRESIDENT',null,str_to_date('1981,11,17','%Y,%m,%d'),5000,null,10);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7844,'TURNER','SALESMAN',7698,str_to_date('1981,09,08','%Y,%m,%d'),1500,0,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7876,'ADAMS','CLERK',7788,str_to_date('1987,07,13','%Y,%m,%d'),1100,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7900,'JAMES','CLERK',7698,str_to_date('1981,12,03','%Y,%m,%d'),950,null,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7902,'FORD','ANALYST',7566,str_to_date('1981,12,03','%Y,%m,%d'),3000,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7934,'MILLER','CLERK',7782,str_to_date('1982,01,23','%Y,%m,%d'),1300,null,10);
--------------------------------------------------------
--  DDL for Index PK_EMP
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##MYDBMS"."PK_EMP" ON "C##MYDBMS"."EMPLOYEE" ("ENO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "C##MYDBMS"."EMPLOYEE" ADD CONSTRAINT "PK_EMP" PRIMARY KEY ("ENO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "C##MYDBMS"."EMPLOYEE" ADD CONSTRAINT "FK_DEPTNO" FOREIGN KEY ("DNO")
	  REFERENCES "C##MYDBMS"."DEPARTMENT" ("DNO") ENABLE;