DECLARE
    v_result VARCHAR2(100);
    v_rollno NUMBER := &rollno;
BEGIN
    v_result := check_rollno(v_rollno);

    DBMS_OUTPUT.PUT_LINE('Roll Number ' || v_rollno || ' : ' || v_result);
END;
/

-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q7_Check_Exist.sql
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q7_Execute.sql