CREATE OR REPLACE PROCEDURE insert_student
(
    VarRollno IN NUMBER,
    VarName IN VARCHAR2,
    VarMark1 IN NUMBER,
    VarMark2 IN NUMBER,
    VarMark3 IN NUMBER
)
IS
BEGIN
    INSERT INTO STUD (rollno, name, mark1, mark2, mark3) VALUES (VarRollno, VarName, VarMark1, VarMark2, VarMark3);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Record Inserted Successfully');
END;
/

-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q1_Insert_Record.sql

-- Using SQL COMMAND PROMPT

-- EXEC insert_student(101, 'Anil', 75, 80, 85);
-- EXEC insert_student(&rollno, '&name', &mark1, &mark2, &mark3);

-- CREATE TABLE STUD
-- (
--     rollno NUMBER(3) PRIMARY KEY,
--     name VARCHAR2(20),
--     mark1 NUMBER(3),
--     mark2 NUMBER(3),
--     mark3 NUMBER(3),
--     standard NUMBER(2) DEFAULT 1
-- );
