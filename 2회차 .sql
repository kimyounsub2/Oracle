/*1. $3000 �̻��� ���� ����� �̸��� �޿��� ����ϼ���.*/

SELECT ename, sal
FROM emp
WHERE sal >=3000;

/*2. �̸��� S,J �Ǵ� M���� �����ϴ� ��� ����� ���ؼ� ù��° ���ڴ� �빮�ڷ�
�׸��� �������� ��� �ҹ��ڷ� ��Ÿ���� ����� �̸��� �̸� ���̸� ����ϴ�
���Ǹ� �ۼ��ϼ���.
������ ���� Name, Length��� ���̺��� �ο��ϼ���.*/

SELECT initcap(ename) Name, LENGTH(ename) Length
FROM emp
WHERE ename like 'S%'
OR ename like 'J%'
OR ename like 'm%';

/*3. ������̺��� ������ �޿��� �Ʒ��� ���� �������� ����� ������.
(����� �Ʒ��� ���� ��������)

MONTHLY
--------------------------------------
SMITH: 1 Month salary = 800
ALLEN: 1 Month salary = 1600
WARD: 1 Month salary = 1250*/

SELECT concat(concat(ename,': 1 Month salaty = '),sal) MONTHLY
FROm emp;

/*4. �л� ���̺��� �̸��� '��'���� ������, ���������� �������� �ʴ�
101�� �а� �л��� ���̵�, �̸�, �г�, �а� ��ȣ�� ����Ͽ���.*/

SELECT idnum, name, grade, studno
FROM student
WHERE name like '%��'
AND profno IS NULL
AND deptno = 101;

/*5. ��� ���̺��� 2���� �Ի��� ����� ����� ������.(substr ���)*/

SELECT hiredate
FROM emp
WHERE SUBSTR(hiredate, 4,2) = '02';

/*6. ����߿� Adams�� �ִ��� Ȯ���ϼ���.*/

 SELECT ename
FROM emp
WHERE INITCAP(ename)='Adams';