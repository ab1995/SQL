select * 
from emp
order by ename;

select *
from emp
order by (sysdate-hiredate) desc;

select ename, job, sal
from emp
order by job, sal;

select ename, job, sal
from emp
order by job, sal desc;

select ename, job, sal
from emp
order by job desc, sal desc;