DECLARE
    deptId NUMBER(3) := &deptId;
    v_name VARCHAR2(100);
BEGIN
    v_name := get_manager_name(deptId);

    DBMS_OUTPUT.PUT_LINE('Manager Name: ' || v_name);
END;
/


-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q6_Return_Manager_Name.sql
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q6_Execute.sql

-- SELECT get_manager_name(10) FROM dual;