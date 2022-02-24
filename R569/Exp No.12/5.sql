DECLARE
	staffId number;
	n number;
	salary number;
	procedure dltStaff(staffId in number,n in number) is
	begin
		if(n=1) then
			DELETE FROM Staff WHERE staff_id=staffId;
			DBMS_OUTPUT.put_line('Staff with staff_id '|| staffId || ' deleted succesfully!');
		else
			DBMS_OUTPUT.put_line('Record Matching Id ' || staffId || ' Absent');
		end if;
	end;
BEGIN
	staffId := &staff_id;
	SELECT COUNT(*) INTO n FROM staff WHERE staff_id=staffId;
	dltStaff(staffId,n);
END;
/
/*
OUTPUT
@5
Enter value for staff_id: 125
old  15:        staffId := &staff_id;
new  15:        staffId := 125;
Record Matching Id 125 Absent

PL/SQL procedure successfully completed.

@5
Enter value for staff_id: 102
old  15:        staffId := &staff_id;
new  15:        staffId := 102;
Staff with staff_id 102 deleted succesfully!

PL/SQL procedure successfully completed.
*/