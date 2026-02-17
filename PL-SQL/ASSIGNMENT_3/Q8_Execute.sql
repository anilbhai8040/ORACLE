DECLARE
    result VARCHAR2(100);
    rollNo NUMBER := &rollNo;
BEGIN
    result := delete_student(rollNo);
    DBMS_OUTPUT.PUT_LINE(result);
END;
/

-- SET SERVEROUTPUT ON;
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q8_Delete_Record.sql
-- @ E:\BARAIYA_ANIL\ASSIGNMENT_3\Q8_Execute.sql