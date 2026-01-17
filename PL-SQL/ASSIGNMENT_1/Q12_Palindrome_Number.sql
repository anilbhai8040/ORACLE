-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q12_Palindrome_Number.sql
DECLARE
    Num NUMBER := &Num;
    Temp NUMBER;
    Rev NUMBER := 0;
BEGIN
    Temp := Num;

    WHILE Temp > 0  LOOP
        Rev := Rev * 10 + MOD(Temp,10);
        Temp := TRUNC(Temp/10);
        -- Temp := FLOOR(Temp/10);
    END LOOP;

    IF Num = Rev THEN
        DBMS_OUTPUT.PUT_LINE(Num || ' is Palindrome');
    ELSE
        DBMS_OUTPUT.PUT_LINE(Num || ' is Not Palindrome');
    END IF;
END;
/