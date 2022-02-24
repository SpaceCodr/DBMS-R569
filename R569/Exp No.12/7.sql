DECLARE
	n number;
	rev number;
	temp number;
	Id number;
	procedure findRev(x in number,r out number) is
	begin
		temp:=x;
		r:=0;
		while (temp>0) loop
			Id:=mod(temp,10);
			r:=r*10+Id;
			temp:=floor(temp/10);
		end loop;
	end;
BEGIN
	n:=&n;
	findRev(n,rev);
	dbms_output.put_line('Reverse is :'||rev);
	if (rev=n) then
		dbms_output.put_line('Is palindrome');
	else
		dbms_output.put_line('Is not palindrome');
	end if;
END;
/
/*
OUTPUT
@7
Enter value for n: 45424244
old  17:        n:=&n;
new  17:        n:=45424244;
Reverse is :44242454
Is not palindrome

PL/SQL procedure successfully completed.

@7
Enter value for n: 454454
old  17:        n:=&n;
new  17:        n:=454454;
Reverse is :454454
Is palindrome

PL/SQL procedure successfully completed.
*/