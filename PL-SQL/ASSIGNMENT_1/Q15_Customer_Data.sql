-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q15_Customer_Data;

DECLARE
    cust_id1 NUMBER(5) := &cust_id;
    cust_name1 VARCHAR2(20) := '&cust_name';
    cust_area1 VARCHAR2(20) := '&cust_area';
    cust_phone1 NUMBER(10) := &cust_phone;
BEGIN
    INSERT INTO customer (cust_id,cust_name,cust_area,cust_phone) VALUES (cust_id1,cust_name1,cust_area1,cust_phone1);
END;
/

-- CREATE TABLE customer(
--     cust_id NUMBER(5),
--     cust_name VARCHAR2(20),
--     cust_area VARCHAR2(20),
--     cust_phone NUMBER(10)
-- );