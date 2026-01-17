-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q9_Sum_Odd_Even_1_To_100.sql
DECLARE
	Num NUMBER(3);
	Odd_Sum NUMBER := 0;
	Even_Sum NUMBER := 0;
BEGIN
	FOR Num IN 1..100 LOOP
		IF MOD(Num, 2) = 0 THEN
			Even_Sum := Even_Sum + Num;
		ELSE
			Odd_Sum := Odd_Sum + Num;
		END IF;
	END LOOP;

	DBMS_OUTPUT.PUT_LINE('Sum of Odd Numbers (1 to 100)  = ' || Odd_Sum);
	DBMS_OUTPUT.PUT_LINE('Sum of Even Numbers (1 to 100) = ' || Even_Sum);
END;
/
