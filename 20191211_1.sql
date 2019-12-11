SELECT *
FROM emp;

DESC emp;

ALTER TABLE emp MODIFY ename VARCHAR(15);
ALTER TABLE emp MODIFY job VARCHAR(15);

UPDATE emp 
SET hiredate = CURDATE() 
WHERE empno = 9000;

SELECT empno, ename, job, mgr, date_format(hiredate,'%Y/%m/%d') hiredate, sal, comm, deptno
FROM emp
ORDER BY hiredate DESC
LIMIT 0, 10;

