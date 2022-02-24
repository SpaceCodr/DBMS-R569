-- CREATE TABLE STATUS
-- (
--     new integer,
--     old integer,
--     primary key (new, old)
-- );
-- /

CREATE OR REPLACE TRIGGER NEW_OLD_SAL
    BEFORE UPDATE OF SALARY
    on INSTRUCTOR
    FOR EACH ROW
DECLARE
BEGIN
    INSERT INTO STATUS VALUES (:NEW.SALARY, :OLD.SALARY);
    DBMS_OUTPUT.PUT_LINE('SAL DIFF = ' || abs(:OLD.SALARY - :NEW.SALARY));
END;

/

/*
OUTPUT

Trigger created.

UPDATE INSTRUCTOR SET SALARY=SALARY*1.1 WHERE NAME='Srinivasan';
SAL DIFF = 7508

1 row updated.

SELECT * FROM STATUS;

       NEW        OLD
---------- ----------
     82583      75075

*/