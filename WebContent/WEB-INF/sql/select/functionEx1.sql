SELECT sysdate FROM dual;

SELECT LOWER(ename) AS name FROM employee;
SELECT UPPER(ename) AS name FROM employee;
SElECT INITCAP(ename) AS name FROM employee;
SElECT INITCAP('oracle mania') AS name FROM dual;

select 'Oracle mania',
UPPER('Oracle mania'),
LOWER('Oracle mania')
from dual;

select ename, lower(ename),job, initcap(job)
from employee;

select eno, ename, dno
from employee
where ename='scott';

select eno, ename, dno
from employee
where lower(ename)='scott';

select eno, ename, dno
from employee
where INITCAP(ename)='Scott';

SELECT * FROM employee WHERE LOWER(ename) LIKE '%a%';

SELECT ename, LENGTH(ename) length FROM employee;
SELECT LENGTH('웹프로그래밍') FROM dual;

SELECT ename, LENGTHB(ename) len FROM employee;
SELECT LENGTHB('웹프로그래밍') FROM dual;

select length('OraclaMania'), length('오라클매니아')
from dual;

select lengthb('OracleMania'), lengthb('오라클매니아')
from dual;

SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;
SELECT ename || ', ' || job FROM employee;

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;

select 'Oracle','mania',concat('Oracle', 'mania')
from dual;

select substr('Oracle mania', 4, 3),
substr('Oracle mania', -4, 3)
from dual;

select * 
from employee
where substr(ename, -1, 1)='N';

select *
from employee
where substr(hiredate, 1, 2)='87';
SELECT * FROM employee
WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-MM-DD'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'AL') FROM employee;
SELECT ename, INSTR(ename, 'T', 2, 2) FROM employee;
SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual;

select INSTR('Oracle mania', 'a')
from dual;

select INSTR('Oracle mania', 'a', 5, 2)
from dual;

select INSTR('오라클매니아','라'),
       INSTRB('오라클매니아', '라')
from dual;

select *
from employee
where instr(ename, 'R', 3, 1)=3;

SELECT ename, LPAD(ename, 10, '#') FROM employee;
SELECT ename, RPAD(ename, 10, '*') FROM employee;

select LPAD(salary, 10, '*')
from employee;

select RPAD(salary, 10, '*')
from employee;

SELECT TRIM('  ABC  ') FROM dual;
SELECT RTRIM('  ABC  ') FROM dual;
SELECT LTRIM('  ABC  ') FROM dual;

select 'Oracle mania ',
LTRIM(' Oracle mania '),
RTRIM(' Oracle mania ')
from dual;

select 'Oracle mania',
TRIM('O'FROM'Oracle mania')
from dual;

select TRIM(' Oracle mania ')
from dual;















