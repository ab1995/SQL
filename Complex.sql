select ename, sal, dname
from  emp join dept
on emp.sal in (select min(sal) from emp) and emp.deptno=dept.deptno;

select deptno, min(sal)
from emp
group by deptno order by deptno;

select empno, ename, job, sal, emp.deptno, dname
from  emp join dept
on emp.empno in (select empno from emp where sal in (select min(sal) from emp group by deptno)) and emp.deptno=dept.deptno;

select * 
from emp 
where deptno=(select deptno from emp where ename='FORD');

select * 
from emp 
where deptno=(select deptno from emp where ename='WARD') and sal>(select sal from emp where ename='MARTIN');

select empno, ename, sal, dname, loc
from  emp join dept
on emp.deptno=dept.deptno;

select  emp.deptno, dname , ename
from  emp join dept
on emp.deptno=dept.deptno order by deptno;


select  emp.deptno, dname , ename
from  emp join dept
on emp.deptno=dept.deptno and  dept.loc='NEW YORK';

select empno, ename, job, sal, emp.deptno, dname
from  emp join dept
on emp.empno in (select empno from emp where sal in (select min(sal) from emp group by deptno)) and emp.deptno=dept.deptno;

select empno, job, sal, mgr, dname
from  emp join dept
on emp.empno in (select empno from emp where sal in (select max(sal) from emp group by deptno)) and emp.deptno=dept.deptno;

select  e2.ename, count(e2.ename)
from emp e1 join emp e2
on e1.mgr=e2.empno  group by e2.ename;


select  e1.ename, e1.job, e1.sal, e2.ename as MANAGER_NAME, e2.job as MANAGER_JOB, e2.sal as MANAGER_SAL
from emp e1 join emp e2
on e1.mgr=e2.empno;

select min(sal)
from emp
where sal>(select min(sal) from emp) ;

select * from
( 
  select sal, row_number() over (order by sal desc) as rn
  from emp
)
where rn <4;

create table orders
(
  id numeric(3) CONSTRAINT ORDER_ID_PK PRIMARY KEY,
  orderdate date,
  ordernumber number(4)
);

create table product
(
  prod_id numeric(3) CONSTRAINT PRODUCT_ID_PK PRIMARY KEY,
  prodname char(30)
);

CREATE TABLE ORDER_ITEM
(
	order_item_id NUMERIC(3) CONSTRAINT ORDER_ITEM_PK PRIMARY KEY,
  ORDERID NUMERIC(3) CONSTRAINT ORDERS_FK REFERENCES ORDERS(ID),  
  PRODUCTID NUMERIC(3) CONSTRAINT PRODUCT_FK REFERENCES PRODUCT(prod_id),  
  UNITPRICE   NUMERIC(7,2), 
  QUANTITY   NUMERIC(3)
);


select *
from orders;


select distinct prodname, quantity, unitprice
from order_item, product, orders where order_item.PRODUCTID=product.prod_id;


select dept.deptno, count(*),
case  when count(*)>3 then sum(sal) end
from emp e1 join dept on dept.deptno=e1.deptno group by dept.deptno;

CREATE TABLE EMP2
(
	 EMPNO NUMERIC(4) CONSTRAINT EMPNO_EMP_PK1 PRIMARY KEY,
	 ENAME VARCHAR(10),
	 JOB   VARCHAR(9),
	 MGR   NUMERIC(4), 
	 HIREDATE DATE,
	 SAL NUMERIC(7,2),        
	 COMM NUMERIC(7,2),        
	 DEPTNO NUMERIC(2) CONSTRAINT DEPTNO_DEPT_FK1 REFERENCES DEPT(DEPTNO)      
);

INSERT INTO EMP2 VALUES (7369,'SMITH','CLERK',7902,'17-DEC-00',800,NULL,20);

select * 
from emp2
  intersect
select *
from emp;


