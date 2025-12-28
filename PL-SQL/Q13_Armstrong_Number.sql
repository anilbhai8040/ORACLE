-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\Q13_Armstrong_Number.sql
DECLARE
    Num NUMBER := &Num;
    Temp NUMBER;
    Sum NUMBER(10) := 0;
BEGIN
    Temp := Num;

    WHILE Temp > 0 LOOP
        Sum := Sum + POWER(MOD(Temp, 10), LENGTH(Num));
        Temp := TRUNC(Temp / 10);
        -- Temp := FLOOR(Temp / 10);
    END LOOP;

    IF Num = Sum THEN
        DBMS_OUTPUT.PUT_LINE(Num || ' is Armstrong');
    ELSE
        DBMS_OUTPUT.PUT_LINE(Num || ' is Not Armstrong');
    END IF;
END;
/