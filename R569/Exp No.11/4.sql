DECLARE
	input number:=5;
	factorial number:=1;
	ind number:=1;
BEGIN
	while (ind<=input) loop
		factorial:=factorial*ind;
		ind:=ind+1;
	end loop;
	dbms_output.put_line('Factorial of '||input||' is : '||factorial);
END;
/
/*
OUTPUT
@4
Factorial of 5 is : 120

PL/SQL procedure successfully completed.
*/