CREATE OR REPLACE PROCEDURE capital_name(empId IN NUMBER)
IS
BEGIN
    UPDATE EMPLOYEE SET emp_name = UPPER(emp_name) WHERE emp_id = empId;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee Does Not Exist...');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee Name Updated to Capital Letters...');
    END IF;

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error is Occurred...');
END;
/

-- CREATE TABLE DEPARTMENT
-- (
--     dept_id NUMBER(4) PRIMARY KEY,
--     dept_name VARCHAR2(30),
--     manager_id NUMBER(4)
-- );

-- CREATE TABLE EMPLOYEE
-- (
--     emp_id NUMBER(4) PRIMARY KEY,
--     emp_name VARCHAR2(30),
--     job_title  VARCHAR2(30),
--     salary NUMBER(8,2),
--     dept_id NUMBER(4),
--     FOREIGN KEY (dept_id) REFERENCES DEPARTMENT(dept_id)
-- );

-- INSERT INTO DEPARTMENT (dept_id, dept_name, manager_id) VALUES (10, 'HR', NULL);
-- INSERT INTO DEPARTMENT (dept_id, dept_name, manager_id) VALUES (20, 'IT', NULL);
-- INSERT INTO DEPARTMENT (dept_id, dept_name, manager_id) VALUES (30, 'SALES', NULL);
-- INSERT INTO DEPARTMENT (dept_id, dept_name, manager_id) VALUES (40, 'FINANCE', NULL);


-- INSERT INTO EMPLOYEE (emp_id, emp_name, job_title, salary, dept_id) VALUES (101, 'Anil', 'CLERK', 65000, 10);
-- INSERT INTO EMPLOYEE (emp_id, emp_name, job_title, salary, dept_id) VALUES (102, 'Kalpesh', 'MANAGER', 72000, 10);
-- INSERT INTO EMPLOYEE (emp_id, emp_name, job_title, salary, dept_id) VALUES (103, 'Avani', 'CLERK', 28000, 10);
-- INSERT INTO EMPLOYEE (emp_id, emp_name, job_title, salary, dept_id) VALUES (201, 'Dhruv', 'DEVELOPER', 40000, 20);
-- INSERT INTO EMPLOYEE (emp_id, emp_name, job_title, salary, dept_id) VALUES (202, 'Janvi', 'SENIOR DEV', 45000, 20);
-- INSERT INTO EMPLOYEE (emp_id, emp_name, job_title, salary, dept_id) VALUES (401, 'Kiran', 'ACCOUNTANT', 38000, 40);
-- INSERT INTO EMPLOYEE (emp_id, emp_name, job_title, salary, dept_id) VALUES (402, 'Jay', 'CLERK', 42000, 40);

-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q4_Convert_Capital_Name.sql

-- EXEC capital_name(&emp_id);