-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q16_CusomerFetch.sql
DECLARE
    cust_id1 NUMBER(5) := &cust_id;
    var NUMBER(10);
BEGIN
    SELECT count(*) INTO var FROM customer WHERE cust_id = cust_id1;

    IF var > 0 THEN 
        DBMS_OUTPUT.PUT_LINE('Found');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not Found');
    END IF;
END;
/