SELECT * FROM employee e, department d;

SELECT * FROM employee e1, employee e2;

SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

select employees.ename as "사원이름", manager.ename as "직속상관이름"
from employee employees, employee manager
where employees.manager = manager.eno;

select employees.ename || '의 직속 상관은 ' || manager.ename
from employee employees join employee manager
on employees.manager = manager.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno
AND e2.eno = 7698;













