/*1. $3000 이상을 버는 사원의 이름과 급여를 출력하세요.*/

SELECT ename, sal
FROM emp
WHERE sal >=3000;

/*2. 이름이 S,J 또는 M으로 시작하는 모든 사원에 대해서 첫번째 문자는 대문자로
그리고 나머지는 모두 소문자로 나타나는 사원의 이름과 이름 길이를 출력하는
질의를 작성하세요.
각각의 열에 Name, Length라는 레이블을 부여하세요.*/

SELECT initcap(ename) Name, LENGTH(ename) Length
FROM emp
WHERE ename like 'S%'
OR ename like 'J%'
OR ename like 'm%';

/*3. 사원테이블의 사원명과 급여를 아래와 같은 포맷으로 출력해 보세요.
(결과가 아래와 같이 나오도록)

MONTHLY
--------------------------------------
SMITH: 1 Month salary = 800
ALLEN: 1 Month salary = 1600
WARD: 1 Month salary = 1250*/

SELECT concat(concat(ename,': 1 Month salaty = '),sal) MONTHLY
FROm emp;

/*4. 학생 테이블에서 이름이 '진'으로 끝나고, 지도교수가 배정되지 않는
101번 학과 학생의 아이디, 이름, 학년, 학과 번호를 출력하여라.*/

SELECT idnum, name, grade, studno
FROM student
WHERE name like '%진'
AND profno IS NULL
AND deptno = 101;

/*5. 사원 테이블에서 2월에 입사한 사원을 출력해 보세요.(substr 사용)*/

SELECT hiredate
FROM emp
WHERE SUBSTR(hiredate, 4,2) = '02';

/*6. 사원중에 Adams가 있는지 확인하세요.*/

 SELECT ename
FROM emp
WHERE INITCAP(ename)='Adams';