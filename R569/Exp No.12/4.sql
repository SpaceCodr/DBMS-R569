/*
CREATE TABLE Staff (staff_id int,salary int);
INSERT INTO Staff VALUES(102,6000);
INSERT INTO Staff VALUES(212,5000);
INSERT INTO Staff VALUES(512,7500);
INSERT INTO Staff VALUES(382,8500);
*/
DECLARE
	staffId number;
	n number;
	salary number;
	procedure incrSalary(staffId in number,n in number) is
	begin
		if (n=1) then
			update staff set salary = salary * 1.2 where staff_id = staffId;
			select salary into salary from staff where staff_id = staffId;
			dbms_output.put_line('Salary Updated for staff_id '|| staffId || ' from ' || salary / 1.2 || ' to ' || salary);
		else
			dbms_output.put_line('Record Matching Id ' || staffId || ' Absent');
		end if;
	end;
BEGIN
	staffId := &staff_id;
 	select count(*) into n from staff where staff_id=staffId;
	incrSalary(staffId,n);
END;
/
/*
OUTPUT
@4
Enter value for staff_id: 102
old  16:        staffId := &staff_id;
new  16:        staffId := 102;
Salary Updated for staff_id 102 from 7200 to 8640

PL/SQL procedure successfully completed.

@4
Enter value for staff_id: 234
old  16:        staffId := &staff_id;
new  16:        staffId := 234;
Record Matching Id 234 Absent

PL/SQL procedure successfully completed.
*/