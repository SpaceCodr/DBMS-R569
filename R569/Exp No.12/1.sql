SET SERVEROUTPUT ON;
DECLARE 
	num_1 number;
	num_2 number;
	min_no number;
	procedure findMin(num_1 in number,num_2 in number,min_no out number) is
	begin
		if (num_1<num_2) then
			min_no:=num_1;
		else
			min_no:=num_2;
		end if;
	end;
BEGIN
	num_1:=&num_1;
	num_2:=&num_2;
	findMin(num_1,num_2,min_no);
	dbms_output.put_line('Minimum is: '||min_no);
END;
/
/*
OUTPUT
@1
Enter value for num_1: 56
old  14:        num_1:=&num_1;
new  14:        num_1:=56;
Enter value for num_2: 21
old  15:        num_2:=&num_2;
new  15:        num_2:=21;
Minimum is: 21

PL/SQL procedure successfully completed.

@1
Enter value for num_1: 45
old  14:        num_1:=&num_1;
new  14:        num_1:=45;
Enter value for num_2: 76
old  15:        num_2:=&num_2;
new  15:        num_2:=76;
Minimum is: 45

PL/SQL procedure successfully completed.
*/