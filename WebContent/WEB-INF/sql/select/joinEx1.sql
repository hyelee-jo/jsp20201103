--14개행, 8개열
SELECT * FROM employee;
--4개행, 3개열
SELECT * FROM department;

SELECT * FROM employee, department;

SELECT eno, ename, dname FROM employee, department;
SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname
FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;


select *
from employee, department
where employee.dno=department.dno;

select eno, ename, dname
from employee, department
where employee.dno = department.dno
and eno = 7788;

select eno, ename, dname, dno
from employee, department
where employee.dno = department.dno
and eno = 7788;

select employee.eno, employee.ename, department.dname, employee.dno
from employee, department
where employee.dno = department.dno
and employee.eno=7788;

select eno, ename, dname, employee.dno
from employee, department
where employee.dno = department.dno
and eno=7788;

-- equi join
SELECT * FROM employee, department
WHERE employee.dno = department.dno;

SELECT * FROM employee, department7369
WHERE employee.dno = department.dno
AND eno = 7369;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno
AND e.eno = 7369;

SELECT e.eno, e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno;

select e.eno, e.ename, d.dname, e.dno
from employee e, department d
where e.dno = d.dno
and e.eno=7788;

--1)
select e.ename, e.dno, d.dname
from employee e, department d
where e.dno = d.dno
and e.ename='SCOTT';

--5)
select e.ename, d.dname
from employee e, department d
where e.dno=d.dno
and e.ename like '%A%';


--join
SELECT * FROM employee natural join department;
SELECT * FROM employee natural join department
WHERE eno = 7788;

--join using
SELECT * FROM employee join department USING(dno);
SELECT * FROM employee join department USING(dno)
WHERE eno = 7788;

--join on
SELECT * FROM employee e JOIN department d On e.dno = d.dno;
SELECT * FROM employee e JOIN department d On e.dno = d.dno
WHERE eno = 7788;


select e.eno, e.ename, d.dname, e.dno
from employee e natural join department d
where e.eno = 7788;

select e.eno, e.ename, d.dname, dno
from employee e natural join department d
where e.eno = 7788;

select e.eno, e.ename, d.dname, dno
from employee e join department d
using(dno)
where e.eno=7788;

select e.eno, e.ename, d.dname, e.dno
from employee e join department d
on e.dno = d.dno
where e.eno=7788;

--2)
select ename, dname, loc
from employee e join department d
on e.dno = d.dno;

--3)
select dno, job, loc
from employee inner join department
using(dno)
where dno = 10;

--4)
select ename, dname, loc
from employee natural join department
where commission>0;

--6)
select ename, job, dno, dname
from employee natural join department
where loc = 'NEW YORK'; 





