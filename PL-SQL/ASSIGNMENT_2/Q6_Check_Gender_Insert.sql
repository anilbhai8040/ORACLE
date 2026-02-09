-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_2\Q6_Check_Gender_Insert.sql
DECLARE
    CURSOR myCursor IS SELECT * FROM student;
    memory_var student%ROWTYPE;
    -- %ROWTYPE for all column
BEGIN
    OPEN myCursor;
    LOOP
        FETCH myCursor INTO memory_var;
        EXIT WHEN myCursor%NOTFOUND;

        IF memory_var.gender = 'M' THEN
            INSERT INTO male (rollNo,student_Name,std,birth_date) VALUES (memory_var.rollNo, memory_var.student_Name, memory_var.std, memory_var.birth_date);

        ELSE
            INSERT INTO female (rollNo,student_Name,std,birth_date) VALUES (memory_var.rollNo, memory_var.student_Name, memory_var.std, memory_var.birth_date);
            
        END IF;

        END LOOP;
    CLOSE myCursor;
END;
/

-- CREATE TABLE student (
--     rollNo NUMBER PRIMARY KEY,
--     student_Name VARCHAR2(20),
--     std NUMBER,
--     birth_date DATE,
--     gender CHAR(1)
-- );

-- INSERT INTO student (rollNo,student_Name,std,birth_date,gender) VALUES (1, 'Anil', 10, '10-MAY-08', 'M');
-- INSERT INTO student (rollNo,student_Name,std,birth_date,gender) VALUES (2, 'Avani', 10, '12-SEP-08', 'F');
-- INSERT INTO student (rollNo,student_Name,std,birth_date,gender) VALUES (3, 'Kalpesh',  9,  '22-MAR-09', 'M');
-- INSERT INTO student (rollNo,student_Name,std,birth_date,gender) VALUES (4, 'Maitree', 9,  '30-JUL-09', 'F');

-- INSERT INTO student (rollNo,student_Name,std,birth_date,gender) VALUES (1, 'Anil', 10, DATE '2008-05-10', 'M');
-- INSERT INTO student (rollNo,student_Name,std,birth_date,gender) VALUES (2, 'Avani', 10, DATE '2008-09-12', 'F');
-- INSERT INTO student (rollNo,student_Name,std,birth_date,gender) VALUES (3, 'Kalpesh',  9,  DATE '2009-03-22', 'M');
-- INSERT INTO student (rollNo,student_Name,std,birth_date,gender) VALUES (4, 'Maitree', 9,  DATE '2009-07-30', 'F');

-- CREATE TABLE male (
--     rollNo NUMBER,
--     student_Name VARCHAR2(20),
--     std NUMBER,
--     birth_date DATE
-- );

-- CREATE TABLE female (
--     rollNo NUMBER,
--     student_Name VARCHAR2(20),
--     std NUMBER,
--     birth_date DATE
-- );

-- SELECT * FROM student;
-- SELECT * FROM male;
-- SELECT * FROM female;