SELECT commission, nvl(commission, 0) FROM  employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

select sum(salary) as "�޿��Ѿ�",
       avg(salary) as "�޿����",
       max(salary) as "�ִ�޿�",
       min(salary) as "�ּұ޿�"
from employee;       

select max(hiredate),
       min(hiredate)
from employee;       

SElECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
SELECT MIN(commission) FROM employee;
SELECT AVG(commission) FROM employee;

select sum(commission) as "Ŀ�̼� �Ѿ�"
from employee;

select count(*) as "����� ��"
from employee;

select count(commission) as "Ŀ�̼� �޴� ��� ��"
from employee;

select count(distinct job) as "������ ������ ����"
from employee;

SELECT COUNT(JOB) FROM employee;
SELECT DISTINCT(job) FROM employee;
SELECT COUNT (DISTINCT(job)) FROM employee;

SELECT ename, SUM(salary) FROM employee;
SELECT ename, MAX(salary) FROM employee;

SELECT ename FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);












