--inner join 
SELECT e1.eno, e1.manager, e2.eno
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

-- inner join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 JOIN employee e2
ON e1.manager = e2.eno;

-- left outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 LEFT OUTER JOIN employee e2
ON e1.manager = e2.eno;

-- left outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+);

-- right outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 RIGHT OUTER JOIN employee e2
ON e1.manager = e2.eno;

-- right outer join 
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager(+) = e2.eno;

-- full outer join
SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1 FULL OUTER JOIN employee e2
ON e1.manager = e2.eno;

select * from employee;

select employees.ename || '의 직속 상관은 ' || manager.ename
from employee employees join employee manager
on employees.manager = manager.eno(+);

select employees.ename || '의 직속 상관은 ' || manager.ename
from employee employees left outer join employee manager
on employees.manager = manager.eno;

--7)
select emp.ename as "Employee",
    emp.manager as "Emp#",
    mgr.eno as "Manager",
    mgr.ename as "Mgr#"
from employee emp, employee mgr
where emp.manager=mgr.eno;

--8)
select emp.ename as "Employee",
       emp.manager as "Emp#",
       mgr.eno as "Manager",
       mgr.ename as "Mgr#"
from employee emp, employee mgr
where emp.manager=mgr.eno(+)
order by emp.eno desc;

--9)
select me.ename as 이름, me.dno as 부서번호, other.ename as 동료
from employee me, employee other
where me.dno=other.dno
and me.ename='SCOTT'
and other.ename!='SCOTT';

--10)
select other.ename, other.hiredate
from employee ward, employee other
where other.hiredate>ward.hiredate
and ward.ename='WARD'
order by hiredate;

--11)
select other.ename, other.hiredate, mgr.ename, mgr.hiredate
from employee mgr, employee other
where other.manager=mgr.eno
and other.hiredate<=mgr.hiredate;