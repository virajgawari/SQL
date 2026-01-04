-- Display the job titles that have more than 3 employees.

SELECT JOB
FROM EMP
GROUP BY JOB
HAVING COUNT(*) > 3;

-- Display the department numbers where the average salary is greater than 2500.

SELECT DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) > 2500;

-- Display the employee(s) who earn the highest salary.

SELECT *
FROM EMP
WHERE SAL = (SELECT MAX(SAL) FROM EMP);

-- Display the employee(s) who earn more than the average salary.

SELECT *
FROM EMP
WHERE SAL > (SELECT AVG(SAL) FROM EMP);

-- Display the employee names who work in the same department as ‘SMITH’.

SELECT ENAME
FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'SMITH'
);
