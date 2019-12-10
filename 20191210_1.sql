CREATE TABLE dept2
(deptno int PRIMARY KEY,
dname VARCHAR(15) DEFAULT '영업부',
loc CHAR(1) CHECK(loc IN('1', '2')));

INSERT INTO dept2(deptno, dname, loc) VALUES(10,'개발부','1');

INSERT INTO dept2(deptno, loc) VALUES(20,'1');

# 원래 들어가지 않음 // check 제약조건이 걸리지 않음
INSERT INTO dept2(deptno, dname, loc) VALUES(30,'총무부','3');


CREATE TABLE dept2 (
deptno TINYINT PRIMARY KEY,
dname VARCHAR(15) NOT NULL);

CREATE TABLE emp2 (
empno SMALLINT PRIMARY KEY,
ename VARCHAR(15) NOT NULL,
deptno TINYINT,
FOREIGN KEY(deptno) REFERENCES dept2(deptno));

INSERT INTO dept2(deptno, dname) VALUES(10,'aaa');
INSERT INTO dept2(deptno, dname) VALUES(20,'bbb');

INSERT INTO emp2(empno, ename, deptno) VALUES(1,'a',10);
INSERT INTO emp2(empno, ename, deptno) VALUES(2,'b',20);
INSERT INTO emp2(empno, ename, deptno) VALUES(3,'c',30); #실패함
INSERT INTO emp2(empno, ename) VALUES(4,'d');


SELECT empno, ename, dname
FROM emp2 e LEFT join dept2 d ON d.deptno = e.deptno;

ALTER TABLE emp2 ADD(sal INT);
ALTER TABLE emp2 MODIFY eNAME VARCHAR(20);
ALTER TABLE emp2 CHANGE ename emp2_name VARCHAR(20);


CREATE TABLE dept4( deptno TINYINT PRIMARY KEY,
dname VARCHAR(14) NOT NULL,
loc VARCHAR(13));
# 생성된 테이블에 자료 복사
INSERT INTO dept4 SELECT * FROM dept;

SELECT *
FROM dept4;
#테이블 생성시 내용까지 복사
CREATE TABLE dept5 AS SELECT * FROM dept;

# 테이블 생성시 데이터 조건이 항상 거짓을 이용하여 구조만 복사
CREATE TABLE dept6 AS SELECT* FROM dept WHERE 1=2;


SELECT *
FROM dept5;



CREATE TABLE test1(
NAME VARCHAR(16383));

DROP TABLE test2;
CREATE TABLE test2(
NAME VARCHAR(3));   #varchar(i) , i : 글자 수, 영문 한글무시 글자갯수


SHOW TABLES;

INSERT INTO dept(deptno, dname, loc) VALUES(50, 'DEVELOPERS','TEXAS');

UPDATE dept
SET dname = 'MININGS', loc = 'SILICON VALLEY'
WHERE deptno = 60;

ALTER TABLE dept MODIFY loc VARCHAR(20);

DESC dept;

SELECT *
FROM dept;

DROP TABLE bonus;

SELECT *
FROM salgrade;