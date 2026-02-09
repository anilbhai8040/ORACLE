-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_1\Q14_Circle_Redius.sql;
DECLARE
    Ra NUMBER(4,2);
    Ar NUMBER(10,2);

BEGIN
    Ra := &Radius;
    IF Ra >=4 AND Ra <= 7 THEN
        Ar := 3.14 * Ra * Ra;
        INSERT INTO circle (radius,area) VALUES (Ra,Ar);
    END IF;
END;
/

-- CREATE TABLE circle(
--     radius NUMBER(8,2),
--     area NUMBER(9,2)
-- );

