-- addr User

SELECT * FROM tbl_addr_hobby;
SELECT * FROM tbl_hobby;

-- addr_hobby Relation Table 과 hobby Entity Table 을 Left Join 하여
-- 주소 ID, 취미 코드, 취미 이름, 취미 설명 항목을 Projection 하도록 


SELECT ah_seq, ah_aid, hb_code, hb_name, hb_descrip
FROM tbl_addr_hobby LEFT JOIN tbl_hobby ON hb_code = ah_hbcode
ORDER BY ah_seq;

-- 특정한 주소 ID 가 지정되었을 때 해당 주소 ID 의 값만 SELECTION 하기

SELECT ah_seq, ah_aid, hb_code, hb_name, hb_descrip
FROM tbl_addr_hobby LEFT JOIN tbl_hobby ON hb_code = ah_hbcode
WHERE ah_aid = 'A0001'
ORDER BY ah_seq;







