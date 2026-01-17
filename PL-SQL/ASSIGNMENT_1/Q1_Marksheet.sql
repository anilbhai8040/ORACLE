-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q1_Marksheet.sql
DECLARE
	Sub1 NUMBER(3);
	Sub2 NUMBER(3);
	Sub3 NUMBER(3);
	Sub4 NUMBER(3);
	Sub5 NUMBER(3);
	Seat_no NUMBER(3);
	Name VARCHAR2(25);
	Total NUMBER(3);
	Percentage NUMBER(5,2);
	Result1 VARCHAR2(20);
    Class VARCHAR2(20);
BEGIN
	Seat_no := &Seat_no;
	Name := '&Name_';
	Sub1 := &Mark_Of_Sub1_;
	Sub2 := &Mark_Of_Sub2_;
	Sub3 := &Mark_Of_Sub3_;
	Sub4 := &Mark_Of_Sub4_;
	Sub5 := &Mark_Of_Sub5_;
	Total := Sub1 + Sub2 + Sub3 + Sub4 + Sub5;
	Percentage := (Total*100)/500;
	
	IF Sub1 >= 40 AND Sub2 >= 40 AND Sub3 >= 40 AND Sub4 >= 40 AND Sub5 >= 40 THEN
		Result1 := 'Pass';
		IF Percentage >= 75 THEN
			Class := 'Distinction';
		ELSIF Percentage >= 60 THEN
			Class := 'First Class';
		ELSIF Percentage >= 50 THEN
			Class := 'Second Class';
		ELSE
			Class := 'Pass Class';
		END IF;

	ELSE
		Result1 := 'Fail';
		Class := 'No Class';
	END IF;
	
	DBMS_OUTPUT.PUT_LINE('Roll No = ' || Seat_no);
	DBMS_OUTPUT.PUT_LINE('Name = ' || Name);
	DBMS_OUTPUT.PUT_LINE('Sub1 = ' || Sub1);
	DBMS_OUTPUT.PUT_LINE('Sub2 = ' || Sub2);
	DBMS_OUTPUT.PUT_LINE('Sub3 = ' || Sub3);
	DBMS_OUTPUT.PUT_LINE('Sub4 = ' || Sub4);
	DBMS_OUTPUT.PUT_LINE('Sub5 = ' || Sub5);
	DBMS_OUTPUT.PUT_LINE('Total = ' || Total);
	DBMS_OUTPUT.PUT_LINE('Percentage = ' || Percentage);
	DBMS_OUTPUT.PUT_LINE('Result = ' || Result1);
	DBMS_OUTPUT.PUT_LINE('Class = ' || Class);	
END;
/