select *
from dept;

select *
from emp;

select *
from emp
where dept_no=3;

select name, dept_no
from emp
where role='Clerk';

select name, dept_no
from emp
where dept_no>=2;

select id, name
from emp
where commission>salary;

select id, name
from emp
where commission>(60*salary/100);

select id, name
from emp
where commission>(50*salary/100);

select name, role, salary
from emp
where dept_no=2 and salary>2000;

select name, role, salary
from emp
where dept_no=(select id from dept where name='Sales') and salary>=1500;

select EMPNO, ENAME, job 
from emp
where job in ('MANAGER','President');

select *
from emp
where job in ('MANAGER','CLERK') and DEPTNO=20 ;


select *
from emp
where job='MANAGER' or (job='CLERK' and DEPTNO=20) ;

select *
from emp
where (job='MANAGER' and deptno=10) or (job='CLERK' and DEPTNO=20) ;

select *
from emp
where job not in ('MANAGER','CLERK') and sal>=2000;

select *
from emp
where sal between 1200 and 1400;

select * 
from emp
where job in ('SALESMAN','CLERK', 'ANALYST' );

select * 
from emp
where job not in ('SALESMAN','CLERK', 'ANALYST' );

select *
from emp
where comm is null;

select *
from emp
where comm=0;

select distinct job 
from emp
where comm is not null;

select *
from emp
where (comm is  null) or comm<100;


select empno, ename, sal, comm, sal+ nvl(comm, 250)"total"
from emp;


select empno, ename
from emp
where (sal+nvl(comm,0))>2000;

select empno, ename
from emp
where ename like 'M%';

select empno, ename
from emp
where ename like '%M';

select empno, ename
from emp
where ename like '%M%';

select empno, ename
from emp
where ename like '____N';

select empno, ename
from emp
where ename like '__R%';
