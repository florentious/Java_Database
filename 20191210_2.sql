

SELECT ename, dname, sal, grade
FROM emp e, dept d, salgrade s
WHERE d.DEPTNO = e.DEPTNO
AND sal BETWEEN losal AND hisal
ORDER BY grade;

SELECT ename, dname, grade
FROM emp e, dept d, salgrade s
WHERE d.deptno = e.DEPTNO
AND sal BETWEEN losal AND hisal
AND comm IS NULL
ORDER BY grade;