-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_2\Q4_Check_Copy_Insert.sql
DECLARE
    CURSOR myCursor IS SELECT * FROM employee WHERE job = 'MANAGER';
    memory_var employee%ROWTYPE;
    -- %ROWTYPE for all column
    var_count NUMBER := 0;
BEGIN
    OPEN myCursor;
    LOOP
        FETCH myCursor INTO memory_var;
        EXIT WHEN myCursor%NOTFOUND;
        INSERT INTO new_employee VALUES memory_var;
        var_count := var_count + 1;
    END LOOP;
    CLOSE myCursor;
    DBMS_OUTPUT.PUT_LINE(var_count || ' manager records inserted into new_employee table.');
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

-- CREATE TABLE new_employee (
--     empNo NUMBER PRIMARY KEY,
--     empName VARCHAR2(20),
--     job VARCHAR2(20),
--     manager NUMBER,
--     hireDate DATE,
--     salary NUMBER(8,2),
--     commission NUMBER(8,2),
--     deptNo NUMBER REFERENCES department(deptNo)
-- );

-- set linesize 200;

-- select *from department;

-- select *from employee;