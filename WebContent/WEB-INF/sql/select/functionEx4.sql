
SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'MM') FROM dual;
SELECT TO_CHAR(sysdate, 'DD') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;

SELECT TO_CHAR(sysdate, 'HH') FROM dual;
SELECT To_CHAR(sysdate, 'HH24') FROM dual;
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT To_CHAR(sysdate, 'HH:MI:SS') FROM dual;

SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

select ename, hiredate,
TO_CHAR(HIREDATE,'YY-MM'),
TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
from employee;

select TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS')
from dual;

-- number to char
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(9956789, '999,999,999') FROM dual;
SELECT TO_CHAR(9956789, '000,000,000') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999') FROM dual;
SELECT TO_CHAR(9956789, 'L999,999,999.999') FROM dual;

select ename, TO_CHAR(salary, 'L999,999')
from employee;

-- char to date
SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('20201113', 'YYYYMMDD') FROM dual;
SELECT TO_DATE('2020/11/13', 'YYYY-MM-DD') FROM dual;
SELECT
TO_CHAR(
TO_DATE('2020-11-13 01:30:20', 'YYYY-MM-DD HH:MI:SS')
, 'YYYY-MM-DD HH:MI:SS')
FROM dual;

-- char to number
SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;


select ename, hiredate
from employee
where hiredate=19810220;

select ename, hiredate
from employee
where hiredate=TO_DATE(19810220,'YYYYMMDD');

select '100,000' - '50,000'
from dual;

select To_NUMBER('100,000', '999,999')-TO_NUMBER('50,000','999,999')
from dual;


--1)
select SUBSTR(HIREDATE, 1, 2) ³âµµ,
SUBSTR(HIREDATE, 4, 2) ´Þ
from employee;

--2)
select * from employee
where SUBSTR(HIREDATE, 4, 2)='04';

--3)
select *
from employee
where MOD(eno, 2)=0;

--4)
select HIREDATE,
TO_CHAR(HIREDATE, 'YY/MON/DDDY')
from employee;

--5)
select TRUNC(SYSDATE - TO_DATE('2011/01/01','YYYY/MM/DD'))
from dual;






