SELECT commission, nvl(commission, 0) FROM  employee;

SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

select sum(salary) as "급여총액",
       avg(salary) as "급여평균",
       max(salary) as "최대급여",
       min(salary) as "최소급여"
from employee;       

select max(hiredate),
       min(hiredate)
from employee;       

SElECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
SELECT MIN(commission) FROM employee;
SELECT AVG(commission) FROM employee;

select sum(commission) as "커미션 총액"
from employee;

select count(*) as "사원의 수"
from employee;

select count(commission) as "커미션 받는 사원 수"
from employee;

select count(distinct job) as "직업의 종류의 개수"
from employee;

SELECT COUNT(JOB) FROM employee;
SELECT DISTINCT(job) FROM employee;
SELECT COUNT (DISTINCT(job)) FROM employee;

SELECT ename, SUM(salary) FROM employee;
SELECT ename, MAX(salary) FROM employee;

SELECT ename FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);













