CREATE OR REPLACE FUNCTION get_bill_amount(custId IN NUMBER) RETURN NUMBER
IS
    amount CUSTOMER.bill_amount%TYPE;
BEGIN
    SELECT bill_amount INTO amount FROM CUSTOMER WHERE cust_id = custId;

    RETURN amount;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Customer Not Found');
        RETURN NULL;

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error Occurred');
        RETURN NULL;
END;
/

-- CREATE TABLE CUSTOMER
-- (
--     cust_id NUMBER(5) PRIMARY KEY,
--     cust_name VARCHAR2(30),
--     city VARCHAR2(20),
--     bill_amount NUMBER(10,2)
-- );

-- INSERT INTO CUSTOMER (cust_id,cust_name,city,bill_amount) VALUES (101, 'Anil', 'Rajkot', 2500);
-- INSERT INTO CUSTOMER (cust_id,cust_name,city,bill_amount) VALUES (102, 'Kalpesh', 'Ahmedabad', 4200);
-- INSERT INTO CUSTOMER (cust_id,cust_name,city,bill_amount) VALUES (103, 'Avani', 'Surat', 3150);
-- INSERT INTO CUSTOMER (cust_id,cust_name,city,bill_amount) VALUES (104, 'Dhruv', 'Baroda', 2800);
-- INSERT INTO CUSTOMER (cust_id,cust_name,city,bill_amount) VALUES (105, 'Janvi', 'Mumbai', 5000);

-- COMMIT;

-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q10_Customer_Data_Fetch.sql
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q10_Execute.sql
