-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\Q10_Fibonacci.sql
DECLARE
	Step NUMBER(3);
	A NUMBER(5) := 1;
	B NUMBER(5) := 1;
	Sum NUMBER(5) := 0;
	Count NUMBER(3);
BEGIN
	Step := &Step;

	DBMS_OUTPUT.PUT_LINE('Fibonacci Series:');

	FOR Count IN 1..Step LOOP
		DBMS_OUTPUT.PUT_LINE(Sum);
		A := B;
		B := Sum;
		Sum := A + B;
	END LOOP;
END;
/
 