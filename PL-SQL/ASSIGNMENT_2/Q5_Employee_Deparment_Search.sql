-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_2\Q5_Employee_Deparment_Search.sql
DECLARE
    dept_name department.deptName%TYPE := '&dept_name';
    CURSOR myCursor IS SELECT e.*, d.*FROM employee e , department d WHERE e.deptNo = d.deptNo AND d.deptName = dept_name AND e.hireDate <= ADD_MONTHS(SYSDATE,-(12*5));
    memory_var employee%ROWTYPE;
    -- %ROWTYPE for all column
BEGIN
    OPEN myCursor;
    LOOP
        FETCH myCursor INTO memory_var;
        EXIT WHEN myCursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(memory_var.empNo || ' | ' || memory_var.empName || ' | ' || memory_var.job || ' | ' || memory_var.manager || ' | ' || TO_CHAR(memory_var.hireDate,'DD-MON-YYYY') || ' | ' || memory_var.salary || ' | ' || NVL(memory_var.commission,0) || ' | ' || memory_var.deptNo || ' | ' || memory_var.deptName || ' | ' || memory_var.city);
    END LOOP;
    CLOSE myCursor;
END;
/

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

-- ALTER TABLE employee ADD CONSTRAINT fk_emp_dept FOREIGN KEY (deptNo) REFERENCES department(deptNo);


-- CREATE TABLE department (
--     deptNo NUMBER PRIMARY KEY,
--     deptName  VARCHAR2(20),
--     city VARCHAR2(20)
-- );

-- INSERT INTO department(deptNo,deptName,city) VALUES (10,'HR','AHMEDABAD');
-- INSERT INTO department(deptNo,deptName,city) VALUES (20,'SALES','SURAT');
-- INSERT INTO department(deptNo,deptName,city) VALUES (30,'IT','VADODARA');

-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (101,'Anil','MANAGER',NULL,'10-JAN-18',8000,NULL,10);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (102,'Kalpesh','CLERK',101,'15-JUN-21',1200,NULL,10);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (103,'Dhruv','SALESMAN',101,'20-MAR-19', 5000,NULL,20);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (104,'Darshan','MANAGER', NULL,'05-NOV-17',9000,NULL,20);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (105,'Yash','CLERK',104,'01-JAN-23',900,NULL,30);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (106,'Parth','ANALYST',104,'18-AUG-20',7000,NULL,30);

-- -- select *from department;

-- -- select *from employee;
