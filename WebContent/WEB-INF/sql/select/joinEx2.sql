SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT * FROM employee e, salgrade s;
SELECT * FROM employee e, salgrade s
WHERE e.salary BETWEEN s.losal AND s.hisal;

select * from salgrade;

select ename, salary, grade
from employee, salgrade
where salary between losal and hisal;

select e.ename, d.dname, e.salary, s.grade
from employee e, department d, salgrade s
where e.dno = d.dno
and salary between losal and hisal;