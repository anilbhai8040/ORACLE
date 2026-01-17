-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_2\Q8_parameter_Cursor.sql
DECLARE
    CURSOR myCursor(num1 NUMBER) IS SELECT * FROM employee WHERE ROWNUM <= num1;
    memory_var employee%ROWTYPE;
    num2 NUMBER := &Num_Of_Employees;
    var_count NUMBER := 0;
BEGIN
    OPEN myCursor(num2);
    LOOP
        FETCH myCursor INTO memory_var;
        EXIT WHEN myCursor%NOTFOUND;
        var_count := var_count + memory_var.salary;
        DBMS_OUTPUT.PUT_LINE(memory_var.empNo || ' | ' || memory_var.empName || ' | ' || memory_var.salary);
    END LOOP;
    CLOSE myCursor;
     DBMS_OUTPUT.PUT_LINE('Total salary of first ' || num2 || ' employees = ' || var_count);
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

-- -- select *from employee;

-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (101,'Anil','MANAGER',NULL,'10-JAN-18',8000,NULL,10);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (102,'Kalpesh','CLERK',101,'15-JUN-21',1200,NULL,10);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (103,'Dhruv','SALESMAN',101,'20-MAR-19', 5000,NULL,20);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (104,'Darshan','MANAGER', NULL,'05-NOV-17',9000,NULL,20);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (105,'Yash','CLERK',104,'01-JAN-23',900,NULL,30);
-- INSERT INTO employee(empNo,empName,job,manager,hireDate,salary,commission,deptNo) VALUES (106,'Parth','ANALYST',104,'18-AUG-20',7000,NULL,30);