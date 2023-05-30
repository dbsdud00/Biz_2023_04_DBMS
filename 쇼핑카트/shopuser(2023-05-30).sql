
DROP TABLE tbl_product;

CREATE TABLE tbl_product (
    pCode	VARCHAR2(13)		PRIMARY KEY,
    pName	nVARCHAR2(50)	NOT NULL	,
    pItem	nVARCHAR2(10)	NOT NULL	,
    pIPrice	NUMBER	NOT NULL	,
    pOPrice	NUMBER	NOT NULL	
);

DROP TABLE tbl_buyer;
CREATE TABLE tbl_buyer (
    buId	VARCHAR2(10)		PRIMARY KEY,
    buName	nVARCHAR2(20)	NOT NULL,
    buTel	VARCHAR2(20),
    buAddr	nVARCHAR2(125)		
);

CREATE TABLE tbl_iolist (
    ioSEQ	NUMBER		PRIMARY KEY,
    ioDate	VARCHAR2(10)	NOT NULL	,
    ioTime	VARCHAR2(10)	NOT NULL	,
    ioBuId	VARCHAR2(10)	NOT NULL	,
    ioPCode	VARCHAR2(13)	NOT NULL	,
    ioQuan	NUMBER	NOT NULL	,
    ioPrice	NUMBER	NOT NULL	
);


CREATE SEQUENCE seq_num
START WITH 1 INCREMENT BY 1;


SELECT * FROM tbl_product ORDER BY pCode;

SELECT * FROM tbl_buyer ORDER BY buName;

SELECT * FROM tbl_iolist ORDER BY ioSEQ;



INSERT INTO tbl_product (
    pCode,
    pName,
    pItem,
    pIPrice,
    pOprice
) VALUES ('2023053000001','가위','문구','500','1000');

COMMIT;


