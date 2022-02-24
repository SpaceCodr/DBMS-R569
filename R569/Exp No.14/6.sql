DECLARE
    CURSOR dept IS SELECT *
                   FROM INSTRUCTOR;
    salary INTEGER := &salary;
BEGIN
    FOR i IN dept
        LOOP
            if (i.salary < salary) then
                DBMS_OUTPUT.PUT_LINE(i.NAME || ' ' || i.DEPT_NAME || ' ' || i.SALARY);
            end if;
        end loop;
END;

/

/*
OUTPUT

Enter value for salary: 70000
old   4:     salary INTEGER := &salary;
new   4:     salary INTEGER := 70000;
Mozart Music 46200
El Said History 69300

PL/SQL procedure successfully completed.

*/