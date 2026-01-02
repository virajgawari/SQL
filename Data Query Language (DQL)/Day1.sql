-- Display names of the employees 

SELECT ENAME FROM EMP;

-- Display all columns from the EMP table.

SELECT * FROM EMP;

-- Display only employee numbers.

SELECT EMPNO FROM EMP;

-- Display employee name, job, and hire date.

SELECT ENAME, JOB, HIREDATE FROM EMP;

-- Display all employee details with occupation shown last.

SELECT EMPNO, ENAME, MGR, HIREDATE, SAL, COMM, DEPTNO, JOB