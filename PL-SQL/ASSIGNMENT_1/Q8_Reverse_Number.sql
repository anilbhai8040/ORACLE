-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q8_Reverse_Number.sql
DECLARE
	Num NUMBER(3);
	Rev NUMBER(3);
	Rem NUMBER(3);
BEGIN

	Num := &Num;
	Rev := 0;

	WHILE Num > 0
	LOOP
	Rem := MOD(Num,10);
	Rev := (Rev * 10) + Rem;
	Num := FLOOR(Num / 10);
	END LOOP;
		DBMS_OUTPUT.PUT_LINE('Reverse Number : ' || Rev);
END;
/