--  Display employee names and salaries of employees working in department 30.

SELECT ENAME, SAL
FROM EMP
WHERE DEPTNO = 30;

-- Display employee names who earn a salary greater than 2500.

SELECT ENAME
FROM EMP
WHERE SAL > 2500;

-- Display all employees whose job is MANAGER.

SELECT *
FROM EMP
WHERE JOB = 'MANAGER';

-- Display unique job titles in the EMP table.

SELECT DISTINCT JOB
FROM EMP;

-- Display employee names and job roles, ordered by salary in descending order.

SELECT ENAME, JOB
FROM EMP
ORDER BY SAL DESC;
