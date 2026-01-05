-- Display the employee names who earn the minimum salary in the company.
SELECT ENAME
FROM EMP
WHERE SAL = (SELECT MIN(SAL) FROM EMP);

-- Display the department numbers that have more than 5 employees.
SELECT DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) > 5;

-- Display employee names who report to the same manager as ‘ALLEN’.
SELECT ENAME
FROM EMP
WHERE MGR = (
SELECT MGR
FROM EMP
WHERE ENAME = 'ALLEN'
);

-- Display the job titles where the maximum salary is greater than 4000.
SELECT JOB
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 4000;

-- Display the employee(s) who earn the second highest salary.
SELECT *
FROM EMP
WHERE SAL = (
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL) FROM EMP)
);