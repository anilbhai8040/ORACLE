DECLARE
    amount NUMBER;
    custId NUMBER := &cust_id;
BEGIN
    amount := get_bill_amount(custId);

    IF amount IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Bill Amount = ' || amount);
    END IF;
END;
/



-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q10_Customer_Data_Fetch.sql
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q10_Execute.sql