CREATE OR REPLACE TRIGGER trg_limit_students BEFORE INSERT ON ENROLLMENT FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM ENROLLMENT WHERE CLASS_ID = :NEW.CLASS_ID;

    IF v_count >= 60 THEN
        RAISE_APPLICATION_ERROR(-20004,'Cannot enroll more than 60 students in a class.');
    END IF;
END;
/

-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_4\Q4_Limit_Student.sql

-- CREATE TABLE ENROLLMENT
-- (
--     STUDENT_ID NUMBER(5) PRIMARY KEY,
--     STUDENT_NAME VARCHAR2(50),
--     CLASS_ID NUMBER(3)
-- );

-- -- Valide

-- INSERT INTO ENROLLMENT (STUDENT_ID,STUDENT_NAME,CLASS_ID) VALUES (1, 'Karan', 101);
-- ...
-- ...
-- INSERT INTO ENROLLMENT (STUDENT_ID,STUDENT_NAME,CLASS_ID) VALUES (60, 'Karan', 101);

-- ✔ Works because class has less than 60 students.

-- -- InValide

-- INSERT INTO ENROLLMENT (STUDENT_ID,STUDENT_NAME,CLASS_ID) VALUES (61, 'Karan', 101);

-- ORA-20004: Cannot enroll more than 60 students in a class.

--------------------------Optional Code Components Based---------------------------------

-- CREATE OR REPLACE TRIGGER trg_limit_students FOR INSERT ON ENROLLMENT COMPOUND TRIGGER

--     TYPE class_count_map IS TABLE OF NUMBER INDEX BY NUMBER;
--     v_class_count class_count_map;

-- BEFORE STATEMENT IS
-- BEGIN
--     -- Load existing student count for all classes
--     FOR rec IN (SELECT CLASS_ID, COUNT(*) AS total FROM ENROLLMENT GROUP BY CLASS_ID) LOOP
--         v_class_count(rec.CLASS_ID) := rec.total;
--     END LOOP;
-- END BEFORE STATEMENT;

-- BEFORE EACH ROW IS
-- BEGIN
--     -- If class not yet in map, initialize it
--     IF NOT v_class_count.EXISTS(:NEW.CLASS_ID) THEN
--         v_class_count(:NEW.CLASS_ID) := 0;
--     END IF;

--     -- Check limit
--     IF v_class_count(:NEW.CLASS_ID) >= 60 THEN
--         RAISE_APPLICATION_ERROR(-20004,'Cannot enroll more than 60 students in a class.');
--     END IF;

--     -- Increase count for this transaction
--     v_class_count(:NEW.CLASS_ID) :=
--         v_class_count(:NEW.CLASS_ID) + 1;
-- END BEFORE EACH ROW;

-- END trg_limit_students;
-- /