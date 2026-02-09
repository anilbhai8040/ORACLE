-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_2\Q1_Increase_Salary.sql
DECLARE
    counter1 NUMBER(3):= 0;
BEGIN
    UPDATE employee SET salary = salary + (salary * 20 / 100);
    IF SQL%FOUND THEN
        counter1 := SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE(counter1||' record updated');
    ELSE
        DBMS_OUTPUT.PUT_LINE('not updated');
    END IF;
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