/*1. 사원(emp) 테이블의 구조를 확인하세요. (ename의 유형은? : VARCHAR2(10))*/

DESC emp; 
 VARCHAR2(10)

/*2. 사원 테이블에서 이름, 직업, 급여, 부서 번호를 출력하세요.*/

SELECT ename, job, SAL, deptno 
FROM emp;

/*3. 학생 테이블에서 학번, 이름 userid를 출력하세요.*/

SELECT studno, name, userid
FROM student;

/*4. 사원 테이블에서 중복을 제외한 직업을 출력하세요.*/

SELECT DISTINCT job
FROM emp;

/*5. 사원 테이블에서 사원번호, 이름, 급여 그리고 12% 증가 된 급여를 모두 출력하세요.
열 레이블은 NEW SALARY입니다.
EMPNO ENAME SAL New Salary
---------- -------------------- ---------- ----------
7369 SMITH 800 896
7499 ALLEN 1600 1792*/

SELECT empno, ename, sal, sal * 1.12 "NEW Salary"
FROM emp;

/*6. 5에 추가하여 새로운 급여에서 예전 급여를 빼는 열을 추가하세요.
열 레이블은 Increase입니다.

EMPNO ENAME SAL New Salary Increase
---------- -------------------- ---------- ---------- ----------
7369 SMITH 800 896 96
7499 ALLEN 1600 1792 192*/

SELECT empno, ename, sal, sal * 1.12 "NEW Salary" , sal * 1.12 - sal "increase"
FROM emp;