DECLARE
    cursor dept is
        select dept_name
        from DEPARTMENT;
    inst   integer := 0;
    course integer := 0;
BEGIN
    FOR i IN dept
        LOOP
            select count(id) into inst from INSTRUCTOR where dept_name = i.dept_name;
            select count(course_id) into course from COURSE where dept_name = i.dept_name;
            dbms_output.put_line(i.dept_name || ' ' || inst || ' ' || course);
        END LOOP;
END;

/

/* 
OUTPUT

Biology 1 2
Comp. Sci. 3 5
Elec. Eng. 1 1
Finance 1 1
History 2 1
Music 1 1
Physics 2 1

PL/SQL procedure successfully completed.
*/