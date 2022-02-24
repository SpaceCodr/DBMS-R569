DECLARE 
	n number:=&n;
	factorial number:=1;
	procedure findFact(x in number) is
	begin
		factorial:=1;
		for i in 1..x loop
			factorial:=factorial*i;
		end loop;
		dbms_output.put_line('Factorial of '||x||' is : '||factorial);
	end;
BEGIN
	for i in 1..n loop
		findFact(i);
	end loop;
END;
/
/*
OUTPUT
@6
Enter value for n: 5
old   2:        n number:=&n;
new   2:        n number:=5;
Factorial of 1 is : 1
Factorial of 2 is : 2
Factorial of 3 is : 6
Factorial of 4 is : 24
Factorial of 5 is : 120

PL/SQL procedure successfully completed.
*/