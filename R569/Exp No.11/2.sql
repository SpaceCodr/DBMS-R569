DECLARE 
	score number:=75;
	grade char(1);
BEGIN
	if (score>=90) then
		grade:='S';
	elsif (score>=80) then 
		grade:='A';
	elsif (score>=70) then 
		grade:='B';
	elsif (score>=60) then 
		grade:='C';
	elsif (score>=50) then 
		grade:='D';
	else
		grade:='F';
	end if;
	dbms_output.put_line('Grade is: '||grade);
END;
/
/* 	
OUTPUT
@2
Grade is: B

PL/SQL procedure successfully completed.
*/