DECLARE
    cursor inst is
        select *
        from INSTRUCTOR
        order by salary desc;
BEGIN
    FOR i IN inst
        LOOP
            if i.salary < 80000
            then
                update INSTRUCTOR set salary = 1.2 * salary where id = i.id;
            elsif i.salary >= 80000
            then
                update INSTRUCTOR set salary = 1.12 * salary where id = i.id;
            end if;
        END LOOP;
END;

/

/* 
OUTPUT

SELECT * FROM INSTRUCTOR;

        ID NAME                 DEPT_NAME           SALARY
---------- -------------------- --------------- ----------
     10101 Srinivasan           Comp. Sci.           92493
     12121 Wu                   Finance             110880
     15151 Mozart               Music                55440
     22222 Einstein             Physics             117040
     32343 El Said              History              83160
     33456 Gold                 Physics             107184
     45565 Katz                 Comp. Sci.           92400
     58583 Califieri            History              85932
     76766 Crick                Biology              93139
     83821 Brandt               Comp. Sci.          113344
     98345 Kim                  Elec. Eng.           98560

11 rows selected.

PL/SQL procedure successfully completed.

SELECT * FROM INSTRUCTOR;

        ID NAME                 DEPT_NAME           SALARY
---------- -------------------- --------------- ----------
     10101 Srinivasan           Comp. Sci.          103592
     12121 Wu                   Finance             124186
     15151 Mozart               Music                66528
     22222 Einstein             Physics             131085
     32343 El Said              History              93139
     33456 Gold                 Physics             120046
     45565 Katz                 Comp. Sci.          103488
     58583 Califieri            History              96244
     76766 Crick                Biology             104316
     83821 Brandt               Comp. Sci.          126945
     98345 Kim                  Elec. Eng.          110387

11 rows selected.
*/