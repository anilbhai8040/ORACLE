-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q11_Prime_Number.sql
DECLARE
    Num NUMBER(5);
    Count NUMBER := 0;
BEGIN
    Num := &Num;

    IF Num <= 1 THEN
        DBMS_OUTPUT.PUT_LINE(Num || ' is NOT a Prime Number');
    ELSE
        FOR i IN 1..Num LOOP
            IF MOD(Num, i) = 0 THEN
                Count := Count + 1;
            END IF;
        END LOOP;

        IF Count = 2 THEN
            DBMS_OUTPUT.PUT_LINE(Num || ' is a Prime Number');
        ELSE
            DBMS_OUTPUT.PUT_LINE(Num || ' is NOT a Prime Number');
        END IF;
    END IF;
END;
/