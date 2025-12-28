-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\Q7_Digit_Sum.sql
DECLARE
	Num NUMBER(3);
	Rem NUMBER(3);
	Addition NUMBER(3);
BEGIN

	Num := &Num;
	Addition := 0;

	WHILE Num > 0
	LOOP
	Rem := MOD(Num,10);
	Addition := Addition + Rem;
	Num := FLOOR(Num / 10);
	END LOOP;
		DBMS_OUTPUT.PUT_LINE('Sum Of Digits : ' || Addition);
END;
/