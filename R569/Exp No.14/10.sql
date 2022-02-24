declare
    cursor takes_curr is select *
                         from TAKES;
    cnt INTEGER := 0;
begin
    for i in takes_curr
        loop
            if (i.GRADE = 'A') then
                DBMS_OUTPUT.PUT_LINE(i.ID || ' ' || i.COURSE_ID || ' ' || i.SEC_ID || ' ' || i.YEAR || ' ' ||
                                     I.SEMESTER || ' ' || I.GRADE);
                cnt := cnt + 1;
            end if;
        end loop;
    DBMS_OUTPUT.PUT_LINE('No. of Records with Grade A = ' || cnt);
end ;

/

/*
OUTPUT

128 CS-101 1 2009 Fall A
12345 CS-190 2 2009 Spring A
12345 CS-315 1 2010 Spring A
12345 CS-347 1 2009 Fall A
76543 CS-101 1 2009 Fall A
76543 CS-319 2 2010 Spring A
98988 BIO-101 1 2009 Summer A
No. of Records with Grade A = 7

PL/SQL procedure successfully completed.

*/