SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee
GROUP BY job;

SELECT job, avg(salary) FROM employee
GROUP BY job;

SELECT job, avg(salary) FROM employee
WHERE job = 'CLERK'
GROUP BY job;

select dno as "부서번호", avg(salary) as "급여평균"
from employee
group by dno;

select avg(salary) as "급여평균"
from employee
group by dno;

select dno, ename, avg(salary)
from employee
group by dno;

select dno, job, count(*), sum(salary)
from employee
group by dno, job
order by dno, job;

--불가
SELECT job, avg(salary) FROM employee
WHERE avg(salary) >= 3000
GROUP By job;

SELECT job, avg(salary) FROM employee
GROUP By job
HAVING avg(salary) >= 3000;

select dno, max(salary)
from employee
group by dno
having max(salary) >=3000;

select job, count(*), sum(salary)
from employee
where job not like '%MANAGER%'
group by job
having sum(salary)>=5000
order by sum(salary);

select max(avg(salary))
from employee
GROUP by dno;

--1)
select max(salary) as "Maximum",
       min(salary) as "Minimum",
       sum(salary) as "SUM",
       round(avg(salary)) as "Average"
from employee;       

--2)
select job as "job",
       max(salary) as "Maximum",
       min(salary) as "Minimum",
       sum(salary) as "SUM",
       round(avg(salary)) as "Average"
from employee
group by job;

--3)
select job, count(*)
from employee
group by job;

--4)
select count(manager)
from employee;

--5) 
select max(salary)-min(salary) as difference
from employee;

--6)
select job, min(salary)
from employee
group by job
having not min(salary)<2000
order by min(salary) desc;

--7)
select dno,
       count(*) as "Number of People",
       round(avg(salary),2) as "Salary"
from employee
group by dno
order by dno asc;

--8)
select decode(dno, 10, 'ACCOUNTING',
                   20, 'RESEARCH',
                   30, 'SALES',
                   40, 'OPERATIONS') as "dname",
       decode(dno, 10, 'NEWYORK',
                   20, 'DALLAS',
                   30, 'CHICAGO',
                   40, 'BOSTON') as "Location",
     count(*) as "Number of People",
     round(avg(salary)) as "Salary"
from employee
group by dno;

--9)
select job, dno,
       decode(dno, 10, sum(salary)) as "부서 10",
       decode(dno, 20, sum(salary)) as "부서 20",
       decode(dno, 30, sum(salary)) as "부서 30",
       sum(salary) as "총액"
from employee
group by job, dno
order by dno;

