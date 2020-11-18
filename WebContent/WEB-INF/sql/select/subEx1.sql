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

--���� �� ���� ����
/*
IN        ���� �ϳ��� ������
ANY(SOME) �ϳ� �̻��� �����ϸ�
ALL       ��� �����ϸ�
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
--2)
--3)
--4)
--5)














                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     