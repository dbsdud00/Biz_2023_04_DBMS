CREATE TABLE tbl_memo (
    m_seq	NUMBER		PRIMARY KEY,
    m_writer	nVARCHAR2(20)	NOT NULL,
    m_date	VARCHAR2(10)	NOT NULL,
    m_subject	nVARCHAR2(20),
    m_content	nVARCHAR2(400)	
);

CREATE SEQUENCE seq_num
START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_memo 
ORDER BY m_seq;

INSERT INTO tbl_memo (m_seq, m_writer, m_date, m_subject, m_content)
VALUES (seq_num.NEXTVAL, '홍길동', '2023-05-26', '첫번쨰','가나다라');

INSERT INTO tbl_memo (m_seq, m_writer, m_date, m_subject, m_content)
VALUES (seq_num.NEXTVAL, '성춘향', '2023-05-26', '두번쨰','마바사');

COMMIT;




UPDATE tbl_memo
SET m_writer = '김꺽정'
SET m_subject = '수정'
WHERE m_seq = 2;





