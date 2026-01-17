-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q6_Sum_1_To_100.sql
DECLARE
	Addition NUMBER;
BEGIN
	Addition := (100 * (100 + 1)) / 2;
	DBMS_OUTPUT.PUT_LINE('Addition = ' || Addition);
END;
/
