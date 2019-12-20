SELECT * FROM memberManager;

SELECT * FROM dept;

SELECT deptno, dname, loc
FROM dept
ORDER BY deptno
LIMIT 0,5


SELECT COUNT(deptno) FROM dept;

SELECT * FROM dept;

INSERT INTO dept(deptno, dname, loc) VALUES(1,'name1','loc1');

DELETE FROM dept WHERE deptno = 1;

UPDATE dept 
SET dname = ?, loc =?
WHERE deptno = ?

SELECT * FROM emp ORDER BY hiredate desc;

DELETE FROM emp WHERE empno =1

SELECT MAX(empno) FROM emp

INSERT INTO emp(empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES(1,1,1,1,CURDATE(),1,1,10);

SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp WHERE empno = ? 

SELECT empno, ename, job, mgr, hiredate, sal, comm, e.deptno, dname FROM emp e JOIN dept d ON e.DEPTNO=d.DEPTNO ORDER BY hiredate DESC, empno desc;

UPDATE emp 
SET ename ='사람3', job = '직업3', mgr =9001, sal =1000, comm=200,deptno=20
WHERE empno = 9003;

DELETE FROM emp WHERE empno = 9003;

CREATE TABLE bitcoin(
bitcoin_date VARCHAR(15) PRIMARY KEY,
bitcoin_open FLOAT,
bitcoin_high FLOAT,
bitcoin_low FLOAT,
bitcoin_close FLOAT,
bitcoin_volume BIGINT,
bitcoin_marketCap BIGINT
);

SELECT * FROM bitcoin


DELETE FROM bitcoin

