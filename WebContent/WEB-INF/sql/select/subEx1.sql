SELECT manager FROM employee
WHERE eno = '7499';

SELECT ename FROM employee
WHERE eno = 7698;

SELECT ename FROM employee
WHERE eno = (SELECT manager
            FROM employee
            WHERE eno = '7499');

select ename, dno
from employee
where dno = (select dno
            from employee
            where ename='SCOTT');
            
select ename, job, salary
from employee
where salary = (select min(salary)
                from employee);
                
select dno, min(salary)
from employee
group by dno
having min(salary) > (select min(salary)
                     from employee
                     where dno=30);
                     
SELECT ename FROM employee
WHERE salary > (SELECT salary
               FROM employee
               WHERE eno = 7499);
                     
SELECT ename FROM employee
WHERE salary > (SELECT salary
               FROM employee);

--다중 행 서브 쿼리
/*
IN        값이 하나라도 있으면
ANY(SOME) 하나 이상이 만족하면
ALL       모두 만족하면
*/

SELECT dno 
FROM department
WHERE dno <= 20;

SELECT ename, dno
FROM employee
WHERE dno IN (SELECT dno 
             FROM department
             WHERE dno <= 20);

select eno, ename
from employee
where (dno, salary) in (select dno, min(salary)
                from employee
                group by dno);

SELECT dno, MIN(salary)
FROM employee
GROUP By dno;

--1)
select ename, job
from employee
where job = (select job
            from employee
            where eno=7788);
--2)
select ename, job
from employee
where salary > (select salary
               from employee
               where eno=7499);
--3)
select ename, job, salary
from employee
where salary=(select
             min(salary)
             from employee);
--4)
select job, round(avg(salary),1)
from employee
group by job
having round(avg(salary),1)=(select min(round(avg(salary),1))
                            from employee
                            group by job);
--5)
select ename, salary, dno
from employee
where salary in(select min(salary)
               from employee
               group by dno);













                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     