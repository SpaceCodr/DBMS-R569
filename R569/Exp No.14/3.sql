create or replace trigger credit_checker
    before insert
    on COURSE
    for each row
    when ( new.CREDITS < 3 )
declare
    XCEP EXCEPTION ;
    PRAGMA EXCEPTION_INIT ( XCEP, -20001 );
begin
    DBMS_OUTPUT.PUT_LINE('CREDITS LESS THAN 3 CANT BE INSERTED');
    raise XCEP;
end;

/

/*
OUTPUT

Trigger created.

INSERT INTO COURSE VALUES('BIO-10','Intro. to Biology','Biology',2);
CREDITS LESS THAN 3 CANT BE INSERTED
INSERT INTO COURSE VALUES('BIO-10','Intro. to Biology','Biology',2)
            *
ERROR at line 1:
ORA-20001:
ORA-06512: at "R569.CREDIT_CHECKER", line 6
ORA-04088: error during execution of trigger 'R569.CREDIT_CHECKER'

*/