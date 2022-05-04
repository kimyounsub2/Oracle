/*1. ���(emp) ���̺��� ������ Ȯ���ϼ���. (ename�� ������? : VARCHAR2(10))*/

DESC emp; 
 VARCHAR2(10)

/*2. ��� ���̺��� �̸�, ����, �޿�, �μ� ��ȣ�� ����ϼ���.*/

SELECT ename, job, SAL, deptno 
FROM emp;

/*3. �л� ���̺��� �й�, �̸� userid�� ����ϼ���.*/

SELECT studno, name, userid
FROM student;

/*4. ��� ���̺��� �ߺ��� ������ ������ ����ϼ���.*/

SELECT DISTINCT job
FROM emp;

/*5. ��� ���̺��� �����ȣ, �̸�, �޿� �׸��� 12% ���� �� �޿��� ��� ����ϼ���.
�� ���̺��� NEW SALARY�Դϴ�.
EMPNO ENAME SAL New Salary
---------- -------------------- ---------- ----------
7369 SMITH 800 896
7499 ALLEN 1600 1792*/

SELECT empno, ename, sal, sal * 1.12 "NEW Salary"
FROM emp;

/*6. 5�� �߰��Ͽ� ���ο� �޿����� ���� �޿��� ���� ���� �߰��ϼ���.
�� ���̺��� Increase�Դϴ�.

EMPNO ENAME SAL New Salary Increase
---------- -------------------- ---------- ---------- ----------
7369 SMITH 800 896 96
7499 ALLEN 1600 1792 192*/

SELECT empno, ename, sal, sal * 1.12 "NEW Salary" , sal * 1.12 - sal "increase"
FROM emp;