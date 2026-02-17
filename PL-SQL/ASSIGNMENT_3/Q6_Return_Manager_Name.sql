CREATE OR REPLACE FUNCTION get_manager_name(deptId IN NUMBER) RETURN VARCHAR2
IS
    managerId DEPARTMENT.manager_id%TYPE;
    managerName EMPLOYEE.emp_name%TYPE;
BEGIN
    SELECT manager_id INTO managerId FROM DEPARTMENT WHERE dept_id = deptId;

    SELECT emp_name INTO managerName FROM EMPLOYEE WHERE emp_id = managerId;

    RETURN managerName;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Manager Not Found';
    WHEN OTHERS THEN
        RETURN 'Error Occurred';
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
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q6_Return_Manager_Name.sql
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q6_Execute.sql

-- SELECT get_manager_name(10) FROM dual;