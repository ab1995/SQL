select * 
from emp
where to_char(HIREDATE,'mm')=2;

select * 
from emp
where HIREDATE=last_day(HIREDATE);

select * 
from emp
where (to_char(sysdate,'yyyy')-(to_char(HIREDATE,'yyyy')))>12;

select *
from emp
where job='MANAGER' and to_char(HIREDATE,'yyyy')=2007;

select ename||', '||job
from emp;

select empno, ename
from emp
where ename=(initcap(ename));

select lpad(ename, 15) as Name
from emp;

select lpad(ename, 15, '-') as Name
from emp;

select lpad(rpad(ename,10),20) 
from emp;

select ename, length(ename)
from emp;

select * 
from emp
where lower(ename) not like 'a%';

select * 
from emp
where lower(ename) not like '%r';

select substr(ename,1,3)
from emp;

select substr(ename,-3), ename
from emp;

select replace(upper(ename),upper('a'), upper('e')), ename
from emp;

select ename, instr(ename, 'AR')as Start_Index
from emp
where ename like '%AR%';

select ename, sal,  round(sal, -3) as Rounded_Sal
from emp;

select ename, round(sal/30,2) as Daily_Sal,  round(sal, -3) as Rounded_Sal
from emp;

select sal, (case when (20/100*sal)<=500
                  then (20/100*sal)
                  else 500
                  end) as bonus 
from emp;

select ename, sal, (case when (20/100*sal)<=200
                  then (20/100*sal)
                  else 200
                  end) as bonus 
from emp;


select ceil(sysdate-hiredate)
from emp;

select ceil(MONTHS_BETWEEN(sysdate,hiredate))
from emp;

select ename,
  trunc(months_between(sysdate,hiredate) / 12) as years,
  trunc(months_between(sysdate,hiredate)-(trunc(months_between(sysdate,hiredate) / 12) * 12)) as months,
  trunc(sysdate)-add_months(hiredate, trunc(months_between(sysdate,hiredate))) as days
from emp;


select ename||' joined on  '||to_char(hiredate,'ddsp')||' of '|| to_char(hiredate,'month') ||' of the year '|| to_char(hiredate,'year') as Join_Date
from emp;


