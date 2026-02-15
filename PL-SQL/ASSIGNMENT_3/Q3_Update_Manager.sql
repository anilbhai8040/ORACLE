CREATE OR REPLACE PROCEDURE change_manager(deptId IN NUMBER)
IS
    empId EMPLOYEE.emp_id%TYPE;
BEGIN
    -- Find employee with highest salary in the given department
    SELECT emp_id INTO empId FROM EMPLOYEE WHERE dept_id = deptId ORDER BY salary DESC FETCH FIRST 1 ROW ONLY;

    -- Give Error Too Many Rows
    -- SELECT emp_id INTO empId FROM EMPLOYEE WHERE dept_id = deptId AND salary = (SELECT MAX(salary) FROM EMPLOYEE WHERE dept_id = deptId);
    
    -- Update manager_id in DEPARTMENT table
    UPDATE DEPARTMENT SET manager_id = empId WHERE dept_id = deptId;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Manager Updated for Department ' || deptId);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No Employee Found in Department ' || deptId);
    
    --  WHEN TOO_MANY_ROWS THEN
    --     DBMS_OUTPUT.PUT_LINE('Multiple Highest Salaries Found — One Employee Selected');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Some other Error...');
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
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q3_Update_Manager.sql

-- EXEC change_manager(&dept_id);
