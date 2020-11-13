select * from employee;
SELECT * FROM employee WHERE ename='WARD';
SELECT * FROM employee WHERE ename LIKE 'W%';
SELECT * FROM employee WHERE ename LIKE '%W';
SELECT * FROM employee WHERE ename LIKE '%D%';
SELECT * FROM employee WHERE ename LIKE '_A__';
SELECT * FROM employee WHERE ename LIKE '_A%';

select * from employee
where ename like 'F%';

select * from employee
where ename ='F';

select * from employee
where ename like '%M%';

select * from employee
where ename like '%N';

select * from employee
where ename like '_A%';

select * from employee
where ename like'__A%';

select * from employee
where ename not like '%A%';

SELECT * FROM employee;
SELECT * FROM employee WHERE commission = NULL;
SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;

select ename, dno, commission
from employee;

select * from employee
where commission=null;

select * from employee
where commission is null;

select * from employee
where commission is not null;

SELECT * FROM employee
ORDER BY ename;
SELECT * FROM employee ORDER BY eno;
SELECT * FROM employee 
WHERE salary > 2000 
ORDER BY eno;

SELECT * FROM employee
ORDER BY eno ASC;
SELECT * FROM employee
ORDER BY eno DESC;

SELECT dno, ename FROM employee
ORDER BY dno, ename;

SELECT dno, ename FROM employee
ORDER BY dno DESC, ename ASC;

select * from employee
order by salary asc;

select * from employee
order by salary;

select * from employee
order by salary desc;

select * from employee
order by ename;

select * from employee
order by hiredate desc;

select * from employee
order by salary desc, ename asc;

--2)
select ename, salary, salary*12+100
from employee
order by salary*12+100 desc;

--3)
select ename, salary
from employee
where salary>2000
order by salary desc;

--7)
select ename, dno
from employee
where dno in(20, 30)
order by ename;

--8)
select ename, salary, dno
from employee
where salary between 2000 and 3000
and dno in(20, 30)
order by ename;

--9)
select ename, hiredate
from employee
where hiredate like '81%';

--10)
select ename, job
from employee
where manager is null;

--11)
select ename, salary, commission
from employee where
commission is not null
order by salary, commission;

--12)
select ename
from employee
where ename like '__R%';

--13)
select ename
from employee
where ename like '%A%'
and ename like '%E%';
























