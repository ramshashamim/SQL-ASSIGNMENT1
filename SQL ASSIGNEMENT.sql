
use softwarehousee;
CREATE TABLE dept (
  deptno INT NOT NULL,
  dname VARCHAR(14),
  loc VARCHAR(13)
);



INSERT INTO dept VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES(20, 'RESEARCH', 'DALLAS');
INSERT INTO dept VALUES(30, 'SALES', 'CHICAGO');
INSERT INTO dept VALUES(40, 'OPERATIONS', 'BOSTON');





CREATE TABLE emp (
  empno INT PRIMARY KEY,
  ename VARCHAR(10),
  job VARCHAR(9),
  mgr INT NULL,
  hiredate DATE,
  sal NUMERIC(7,2),
  comm NUMERIC(7,2) NULL,
  dept INT
);

INSERT INTO EMP VALUES
  (7369, 'SMITH', 'CLERK', 7902, '07-12-1980', 800, NULL, 20);
INSERT INTO EMP VALUES
  (7499, 'ALLEN', 'SALESMAN', 7698, '02-20-1981', 1600, 300, 30);
INSERT INTO EMP VALUES
  (7521, 'WARD', 'SALESMAN', 7698, '02-22-1981', 1250, 500, 30);
INSERT INTO EMP VALUES
  (7566, 'JONES', 'MANAGER', 7839, '04-02-1981', 2975, NULL, 20);
INSERT INTO EMP VALUES
  (7654, 'MARTIN', 'SALESMAN', 7698, '09-28-1981', 1250, 1400, 30);
INSERT INTO EMP VALUES
  (7698, 'BLAKE', 'MANAGER', 7839, '05-01-1981', 2850, NULL, 30);
INSERT INTO EMP VALUES
  (7782, 'CLARK', 'MANAGER', 7839, '06-06-1981', 2450, NULL, 10);
INSERT INTO EMP VALUES
  (7788, 'SCOTT', 'ANALYST', 7566, '12-12-1982', 3000, NULL, 20);
INSERT INTO EMP VALUES
  (7839, 'KING', 'PRESIDENT', NULL, '11-11-1981', 5000, NULL, 10);
INSERT INTO EMP VALUES
  (7844, 'TURNER', 'SALESMAN', 7698, '09-09-1981', 1500, 0, 30);
INSERT INTO EMP VALUES
  (7876, 'ADAMS', 'CLERK', 7788, '01-01-1983', 1100, NULL, 20);
INSERT INTO EMP VALUES
  (7900, 'JAMES', 'CLERK', 7698, '03-12-1981', 950, NULL, 30);
INSERT INTO EMP VALUES
  (7902, 'FORD', 'ANALYST', 7566, '03-12-1981', 3000, NULL, 20);
INSERT INTO EMP VALUES
  (7934, 'MILLER', 'CLERK', 7782, '03-01-1982', 1300, NULL, 10);

CREATE TABLE SALGRADE (
  GRADE NUMERIC,
  LOSAL NUMERIC,
  HISAL NUMERIC
);

INSERT INTO SALGRADE VALUES (1, 700, 1200);
INSERT INTO SALGRADE VALUES (2, 1201, 1400);
INSERT INTO SALGRADE VALUES (3, 1401, 2000);
INSERT INTO SALGRADE VALUES (4, 2001, 3000);
INSERT INTO SALGRADE VALUES (5, 3001, 9999);


-- By using query fetch the details of persons whose designation is manager--

select * from emp where job = "MANAGER";

 -- update the column of empno => ID, ename => Name.--
 
 alter table emp change empno ID int ;
 
  alter table emp change ename NAME VARCHAR(30) ;
  
  -- update the column named hiredate and add the random value into add.--
  
  UPDATE emp set hiredate = "02-6-1999" where ID = "7369";
  UPDATE emp set hiredate = "05-7-2003" where ID = "7499";
  UPDATE emp set hiredate = "10-5-2002" where ID = "7521";
  UPDATE emp set hiredate = "22-9-2000" where ID = "7654";

-- add the column named age after the department and assign the random value into it.--

ALTER TABLE emp ADD COLUMN age INT AFTER dept;

UPDATE emp SET age = FLOOR(RAND(25) * 100) where ID = 7369;


-- RENAME-- 
rename table  SALGRADE to SERVICES;