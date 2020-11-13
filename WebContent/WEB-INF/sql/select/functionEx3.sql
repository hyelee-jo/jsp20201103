SELECT sysdate FROM dual;
SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

SELECT ename, hiredate, sysdate - hiredate FROM employee;
SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;

select sysdate
from dual;

select SYSDATE-1 어제,
SYSDATE 오늘,
SYSDATE+1 내일
from dual;

select ROUND(SYSDATE-HIREDATE) 근무일수
from employee;

SELECT ROUND(sysdate) FROM dual;
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

SELECT MONTHS_BETWEEN(SYSDATE, hiredate) FROM employee;

SELECT 
MONTHS_BETWEEN(SYSDATE, TO_DATE('2019-10-13', 'yyyy-mm-dd'))
FROM dual;

SELECT 
MONTHS_BETWEEN(TO_DATE('2019-10-13', 'yyyy-mm-dd'), SYSDATE)
FROM dual;

select hiredate,
TRUNC(HIREDATE, 'MONTH')
from employee;

select ename, sysdate hiredate,
TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE))
from employee;

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;

select ename, hiredate,
ADD_MONTHS(HIREDATE, 6)
from employee;

SELECT NEXT_DAY(sysdate, '토요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_DAY(sysdate, 6) FROM dual;

select * from employee;

SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;

select SYSDATE,
NEXT_DAY(SYSDATE,'토요일')
from dual;

select ename, hiredate,
LAST_DAY(HIREDATE)
from employee;









