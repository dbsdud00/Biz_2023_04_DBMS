-- 여기는 myuser로 접속한 화면
DROP TABLE tbl_accList;
CREATE TABLE tbl_accList  (
     aioSEQ	NUMBER		PRIMARY KEY,
     acNum	VARCHAR2(20)	NOT NULL	,
     aioDate	VARCHAR2(10)	NOT NULL	,
     aioTime	VARCHAR2(10)	NOT NULL	,
     aioDiv	VARCHAR2(1)	NOT NULL	,
     aioInput	NUMBER	DEFAULT 0	,
     aioOutput	NUMBER	DEFAULT 0	,
     aioREM	VARCHAR2(30)		
);

DESC tbl_accList;
/*
DBMS table의 일련번호 문제
table에 PK 를 임의의 일련번호로 설정을 했을 경우
데이터를 insert 할때마다 새로운 일련번호를 생성하여 값을 추가해야 한다.
DBMS 엔진에 따라 insert를 할 때 자동으로 일련번호를 생성하는 기능이 있는데
오라클에는 없다(11 이하 버전), 오라클도 12 이상에서는 자동생성하는 기능이 있는데
다른 DBMS 에 비하여 상당히 불편하다.

오라클에서는 일련번호를 자동으로 생성해주는 도구를 만들어야 한다.
*/


DROP SEQUENCE seq_accList;
CREATE SEQUENCE seq_accList
START WITH 1 INCREMENT BY 1;

SELECT seq_accList.NEXTVAL 
FROM dual;

INSERT INTO tbl_accList(aioSEQ, acNUM, aioDate, aiotime, aiodiv, aioinput, aiooutput)
VALUES(seq_accList.NEXTVAL, '2023052401','2023-05-24','11:10:00','1',10000,0);

SELECT * FROM tbl_accList;

SELECT aioSEQ, acNUM, aioDate, aiotime, aiodiv, aioinput, aiooutput,aiorem
FROM tbl_accList
WHERE acNum = '2023052301';

SELECT * FROM tbl_acc;


COMMIT;



















