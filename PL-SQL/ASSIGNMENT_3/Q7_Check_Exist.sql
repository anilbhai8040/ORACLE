CREATE OR REPLACE FUNCTION check_rollno (p_rollno IN NUMBER) RETURN VARCHAR2
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM STUD WHERE rollno = p_rollno;

    IF v_count > 0 THEN
        RETURN 'Roll Number Exists';
    ELSE
        RETURN 'Roll Number Does Not Exist';
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        RETURN 'Error Occurred';
END;
/

-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q7_Check_Exist.sql
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q7_Execute.sql

-- CREATE TABLE STUD
-- (
--     rollno NUMBER(3) PRIMARY KEY,
--     name VARCHAR2(20),
--     mark1 NUMBER(3),
--     mark2 NUMBER(3),
--     mark3 NUMBER(3),
--     standard NUMBER(2) DEFAULT 1
-- );


-- INSERT INTO STUD (rollno, name, mark1, mark2, mark3, standard) VALUES (101, 'Anil', 75, 80, 70, 1);
-- INSERT INTO STUD (rollno, name, mark1, mark2, mark3, standard) VALUES (102, 'Ravi', 60, 65, 70, 1);
-- INSERT INTO STUD (rollno, name, mark1, mark2, mark3, standard) VALUES (103, 'Meena', 85, 90, 95, 1);
-- INSERT INTO STUD (rollno, name, mark1, mark2, mark3, standard) VALUES (104, 'Sita', 40, 55, 60, 1);
-- INSERT INTO STUD (rollno, name, mark1, mark2, mark3, standard) VALUES (105, 'Kiran', 30, 25, 35, 1);
-- COMMIT;