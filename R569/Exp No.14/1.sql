CREATE OR REPLACE TRIGGER NEW_OLD
    BEFORE UPDATE OF CREDITS
    on COURSE
    FOR EACH ROW
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('OLD VALUE = ' || :OLD.CREDITS);
    DBMS_OUTPUT.PUT_LINE('NEW VALUE = ' || :NEW.CREDITS);
END;
/


/*
OUTPUT

Trigger created.

UPDATE COURSE SET CREDITS = CREDITS + 1 WHERE COURSE_ID = 'BIO-101';
OLD VALUE = 4
NEW VALUE = 5

1 row updated.
*/