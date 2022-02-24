DECLARE
    cursor inst is
        select *
        from INSTRUCTOR
        order by salary desc;
    cnt integer := 0;
BEGIN
    FOR i IN inst
        LOOP
            if cnt < 5
            then
                dbms_output.put_line(i.id || ' ' || i.name || ' ' || i.salary);
                cnt := cnt + 1;
            end if;
        END LOOP;
END;

/

/* 
OUTPUT

22222 Einstein 104500
83821 Brandt 101200
12121 Wu 99000
33456 Gold 95700
98345 Kim 88000

PL/SQL procedure successfully completed.
*/