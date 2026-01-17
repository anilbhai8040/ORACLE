-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q2_Maximum.sql
DECLARE
    Num1 NUMBER := &Number_1;
    Num2 NUMBER := &Number_2;
    Num3 NUMBER := &Number_3;
BEGIN
	IF Num1 > Num2 AND Num1 > Num3 THEN
        DBMS_OUTPUT.PUT_LINE(Num1 || ' is Maximum');

    ELSIF Num2 > Num1 AND Num2 > Num3 THEN
        DBMS_OUTPUT.PUT_LINE(Num2 || ' is Maximum');

    ELSIF Num3 > Num1 AND Num3 > Num2 THEN
        DBMS_OUTPUT.PUT_LINE(Num3 || ' is Maximum');

    ELSE
        DBMS_OUTPUT.PUT_LINE('All numbers are equal OR two numbers are Maximum');

    END IF;
END;
/