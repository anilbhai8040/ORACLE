-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\Q2_Maximum.sql
DECLARE
	Num1 NUMBER(3);
	Num2 NUMBER(3);
BEGIN
	Num1 := &Number_1;
	Num2 := &Number_2;
	
	IF Num1 > Num2 THEN	
		DBMS_OUTPUT.PUT_LINE(Num1||' is Maximum');
	ELSIF Num1 < Num2 THEN
		DBMS_OUTPUT.PUT_LINE(num2||' is Maximum');
	ELSE
		DBMS_OUTPUT.PUT_LINE(Num1||' And '||Num2||' are equals');
	END IF;
END;
/