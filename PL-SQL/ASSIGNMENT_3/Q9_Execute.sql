DECLARE
    v_result VARCHAR2(100);
    empId NUMBER := &empid;
BEGIN
    v_result := raise_salary(empId);
    DBMS_OUTPUT.PUT_LINE(v_result);
END;
/


-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q9_Raise_Salary.sql
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q9_Execute.sql