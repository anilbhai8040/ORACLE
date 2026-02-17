CREATE OR REPLACE FUNCTION raise_salary(empId IN NUMBER) RETURN VARCHAR2
IS
    v_salary EMPLOYEE.salary%TYPE;
    v_new_salary EMPLOYEE.salary%TYPE;
BEGIN
    -- Fetch current salary
    SELECT salary INTO v_salary FROM EMPLOYEE WHERE emp_id = empId;

    -- increment
    IF v_salary < 10000 THEN
        v_new_salary := v_salary + (v_salary * 0.30);

    ELSIF v_salary >= 10000 AND v_salary < 20000 THEN
        v_new_salary := v_salary + (v_salary * 0.20);

    ELSE
        v_new_salary := v_salary + (v_salary * 0.10);
    END IF;

    -- Update salary in table
    UPDATE EMPLOYEE SET salary = v_new_salary WHERE emp_id = empId;

    COMMIT;

    RETURN 'Salary Updated Successfully. New Salary = ' || v_new_salary;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Employee ID Not Found';

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
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q9_Raise_Salary.sql
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q9_Execute.sql