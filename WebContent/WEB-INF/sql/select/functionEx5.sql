SElECT * FROM employee;
SELECT ename, salary, commission, salary + commission as sum
FROM employee;
SELECT ename, commission, NVL(commission, 0) FROM employee;

select ename, salary, commission,
NVL(commission,0),
salary*12+NVL(commission,0)
from employee
order by job;

SELECT ename, commission, NVL2(commission, commission, 0)
FROM employee;

select ename, salary, commission,
NVL2(commission, salary*12+commission, salary*12)
from employee
order by job;

SELECT nullif('a','a') from dual;
SELECT nullif('a','b') from dual;

SELECT COALESCE('a','b',null,'c') from dual;
SELECT COALESCE(null,'b',null,'c') from dual;
SELECT COALESCE(null,null,'d','c') from dual;

select ename, salary, commission,
COALESCE(commission, salary, 0)
from employee
order by job;


SELECT ename, dno, DECODE(dno, 10, 'ACC', 20, 'RES','DEF')
FROM employee;

select ename, dno,
    DECODE(dno, 10, 'ACCOUNTING',
                20, 'RESEARCH',
                30, 'SALES',
                40, 'OPERATIONS',
                'DEFAULT') AS DNAME
from employee
order by dno;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                           WHEN salary >= 0 THEN 'LOW'
                           ELSE '0'
                      END
FROM employee;

SELECT ename, dno,
    CASE WHEN dno=10 THEN 'ACCOUNTING'
         WHEN dno=20 THEN 'RESEARCH'
         WHEN dno=30 THEN 'SALES'
         WHEN dno=40 THEN 'OPERATIONS'
         ELSE 'DEFAULT'
    END AS DNAME
from employee
order by dno;
         
--6)
select eno, ename,
       NVL2(manager, manager, 0) AS MANAGER
from employee;       

--7)
select eno, ename, job, salary,
    DECODE(JOB,'ANALYST', salary+200,
               'SALESMAN', salary+180,
               'MANAGER', salary+150,
               'CLERK', salary+100,
               salary) as update_salary
from employee;               















