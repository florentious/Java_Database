SELECT ename, job, sal, dname, hiredate
FROM emp e, dept d
WHERE d.DEPTNO = e.DEPTNO AND sal >= 1000
ORDER BY dname;

SELECT ename, e.deptno,sal, dname
FROM emp e,dept d
WHERE sal BETWEEN 3000 AND 5000
and d.DEPTNO = e.DEPTNO 
ORDER BY dname;


SELECT ename, DATE_FORMAT(hiredate,'%Y/%m/%d') hireStartDate, e.deptno, dname
FROM emp e, dept d
WHERE dname = 'ACCOUNTING' 
AND e.DEPTNO = d.DEPTNO
ORDER BY ename;

SELECT ename, DATE_FORMAT(hiredate,'%Y/%m/%d') hireStartDate, dname, comm
FROM emp e,dept d
WHERE comm IS NOT null
AND e.DEPTNO = d.DEPTNO
ORDER BY ename;

SELECT * FROM emp;

UPDATE emp
SET deptno = null
WHERE empno = 7369;

SELECT ename, hiredate, dname
FROM emp e LEFT JOIN dept d
ON d.DEPTNO = e.DEPTNO;


SELECT e.deptno, dname, ename, sal
FROM emp e, dept d
WHERE e.DEPTNO = d.DEPTNO;

SELECT dname
FROM emp e JOIN dept d ON e.DEPTNO = d.DEPTNO
WHERE ename = 'ALLEN';

SELECT ename, e.deptno , dname, sal
FROM emp e LEFT JOIN dept d ON e.DEPTNO = d.DEPTNO

SELECT ename, sal, grade
FROM emp e, salgrade s
WHERE sal BETWEEN losal AND hisal;


SELECT ename, dname, sal, grade
FROM emp e LEFT JOIN dept d ON e.deptno = d.DEPTNO, salgrade s
WHERE sal BETWEEN losal AND hisal
ORDER BY grade;

