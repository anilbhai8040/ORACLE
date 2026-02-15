CREATE OR REPLACE PROCEDURE update_student
IS
    v_count NUMBER;
BEGIN
    UPDATE STUD SET standard = standard + 1 WHERE mark1 >= 35 AND mark2 >= 35 AND mark3 >= 35;

    v_count := SQL%ROWCOUNT;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(v_count ||' Students Passed...');
END;
/

-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q2_Update_Record.sql

-- Using SQL COMMAND PROMPT

-- EXEC update_student;

-- CREATE TABLE STUD
-- (
--     rollno NUMBER(3) PRIMARY KEY,
--     name VARCHAR2(20),
--     mark1 NUMBER(3),
--     mark2 NUMBER(3),
--     mark3 NUMBER(3),
--     standard NUMBER(2) DEFAULT 1
-- );

