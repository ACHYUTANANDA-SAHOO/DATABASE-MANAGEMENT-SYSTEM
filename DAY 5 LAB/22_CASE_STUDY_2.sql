USE SSE;

-- Use the Table in Exp 21.
-- 1. Retrieve the name of each dept and number of employees working in each department
-- which has at least 2 employees
	SELECT DEPT_NUM, EMP_COUNT FROM(
	SELECT EMPLOYEE.DNO AS EMP_DEPT ,DEPT.DNAME AS DEPT_NUM ,COUNT(EMPLOYEE.DNO) AS EMP_COUNT
    FROM EMPLOYEE JOIN DEPT
    ON DEPT.DNUMBER = EMPLOYEE.DNO 
    GROUP BY EMPLOYEE.DNO ) AS EMPLOYEE_C
    WHERE EMP_COUNT > 2;
-- 2. Retrieve the name of employees who born in the year 1990’s
	SELECT * FROM EMPLOYEE WHERE BDATE > "1989-12-31" AND BDATE < "1991-01-01";
    
-- 3. Retrieve the name of employees and their dept name (using JOIN)
	SELECT CONCAT(EMPLOYEE.FNAME, " ", EMPLOYEE.LNAME) AS NAME, DEPT.DNAME AS DEPT_NAME
    FROM EMPLOYEE JOIN DEPT
    ON DEPT.DNUMBER = EMPLOYEE.DNO ;
