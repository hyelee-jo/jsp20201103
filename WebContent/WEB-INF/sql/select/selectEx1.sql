SELECT * FROm employee;
SELECT * FROM bonus;
SElECT * FROM department;
SELECT * FROM salgrade;

SELECT ename FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee;
SELECT ename, salary, salary*12 FROM employee;
SElECT ename, salary / 100 FROM employee;
SELECT ename, salary + 100 FROM employee;
SELECT ename, salary - 100 FROM employee;
SELECT ename, salary, salary*12 AS ���� FROM employee;
SELECT ename, salary, salary*12 ���� FROM employee;
-- �� �� �ּ�
/* 
    ������ �ּ�
*/
SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission FROM employee;
SElECT ename, salary, commission, NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) �� FROM employee;


select *
from employee;

select eno, ename
from employee;

select ename, salary, salary*12
from employee;

select ename, salary, job, dno, commission,
    salary*12, salary*12+commission
from employee;

select ename, salary, job, dno, nvl(commission,0),
    salary*12, salary*12+nvl(commission,0)
from employee;

select ename, salary*12+nvl(commission,0) ����
from employee;

select ename, salary*12+nvl(commission,0) as ����
from employee;

select ename, salary*12+ nvl(commission,0)"��  ��"
from employee;

SELECT distinct(dno) FROM employee;

select 
    distinct dno 
from EMPLOYEE;




































