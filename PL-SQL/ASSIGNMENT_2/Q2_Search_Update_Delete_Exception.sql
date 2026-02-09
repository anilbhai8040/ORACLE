-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_2\Q2_Search_Update_Delete_Exception.sql
DECLARE
    emp_name employee.empName%TYPE := '&employee_name';
    salary1 employee.salary%TYPE;
BEGIN
    SELECT salary INTO salary1 FROM employee WHERE empName = emp_name;

    IF salary1 > 5000 THEN
        UPDATE employee SET commission = salary1 * 25 / 100 WHERE empName = emp_name;
        DBMS_OUTPUT.PUT_LINE('Commission added successfully.');

    ELSIF salary1 < 1000 THEN
        DELETE FROM employee WHERE empName = emp_name;
        DBMS_OUTPUT.PUT_LINE('Employee removed due to low salary.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No action required.');
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee found with same name.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Some unexpected error occurred.');
END;
/

-- CREATE TABLE department (
--     deptNo NUMBER PRIMARY KEY,
--     deptName  VARCHAR2(20),
--     city VARCHAR2(20)
-- );

-- INSERT INTO department(deptNo,deptName,city) VALUES (10,'HR','AHMEDABAD');
-- INSERT INTO department(deptNo,deptName,city) VALUES (20,'SALES','SURAT');
-- INSERT INTO department(deptNo,deptName,city) VALUES (30,'IT','VADODARA');


-- CREATE TABLE employee (
--     empNo NUMBER PRIMARY KEY,
--     empName VARCHAR2(20),
--     job VARCHAR2(20),
--     manager NUMBER,
--     hireDate DATE,
--     salary NUMBER(8,2),
--     commission NUMBER(8,2),
--     deptNo NUMBER REFERENCES department(deptNo)
-- );


-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (101,'Anil','MANAGER',NULL,'10-JAN-18',8000,NULL,10);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (102,'Kalpesh','CLERK',101,'15-JUN-21',1200,NULL,10);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (103,'Dhruv','SALESMAN',101,'20-MAR-19', 5000,NULL,20);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (104,'Darshan','MANAGER', NULL,'05-NOV-17',9000,NULL,20);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (105,'Yash','CLERK',104,'01-JAN-23',900,NULL,30);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (106,'Parth','ANALYST',104,'18-AUG-20',7000,NULL,30);

-- set linesize 200;

-- select *from department;

-- select *from employee;