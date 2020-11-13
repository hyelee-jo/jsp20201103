select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission <500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= 2000;
SELECT * FROM employee WHERE ename <= 'G';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate = '1981/02/20';
--SELECT * FROM employee WHERE hiredate = '81/02/20';

select * from employee
where salary >= 1500;

select * from employee
where dno=10;

select * from employee
where ename='SCOTT';

select * from employee
where hiredate<='1981/01/01';

SELECT * FROM employee 
WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM employee 
WHERE hiredate >= '1981/01/01' OR salary >3000;

SELECT * FROM employee
WHERE NOT salary > 3000;

SELECT * FROM employee
WHERE ename > 'C' AND salary > 2000 AND dno <> 30;

select * from employee
where dno=10 and job='MANAGER';

select * from employee
where dno=10 or job='MANAGER';

select * from employee
where not dno=10;

select * from employee
where dno <> 10;

select * from employee
where salary >=1000 and salary<=1500;

select * from employee
where salary<1000 or salary>1500;

select * from employee
where commission=300 or commission=500 or commission=1400;

SELECT * FROM employee
WHERE salary >=3000 AND salary <=5000;

SELECT * FROM employee
WHERE salary BETWEEn 3000 AND 5000;

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary < 3000 OR salary > 5000;

SELECT * FROM employee 
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE dno = 10 OR dno = 20;

SELECT
    *
FROM employee
WHERE dno IN (10, 20);

SELECT 
    * 
FROM employee
WHERE dno NOT IN (20);

select * from employee
where salary between 1000 and 1500;

select * from employee
where salary >=1000 and salary<=1500;

select * from employee
where salary not between 1000 and 1500;

select * from employee
where salary<1000 or salary >1500;

select * from employee
where hiredate between '1982/01/01' and '1982/12/31';

select * from employee
where commission in(300, 500, 1400);

select * from employee
where commission=300 or commission=500 or commission=1400;

select * from employee
where commission<>300 and commission<>500 and commission<>1400;

select * from employee
where commission not in(300, 500, 1400);

--1)
select ename, salary, salary+300
from employee;

--4)
select ename, dno
from employee
where eno=7788;

--5)
select ename, salary
from employee
where salary not between 2000 and 3000;

--6)
select ename, job, hiredate
from employee
where hiredate between '81/02/20' and '81/05/01';

--14)
select ename, job, salary
from employee
where job in('CLERK', 'SALESMAN')
and salary not in (1600, 950, 1300);

--15)
select ename, salary, commission
from employee
where commission >=500;

SELECT ename FROM employee WHERE eno = 7499;














































