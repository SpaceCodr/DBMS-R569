DECLARE
	a number;
	b number;
	c number;
	det number;
	r1 number;
	r2 number;
	procedure findRoots(x in number,y in number,c in number,r1 out number,r2 out number) is
	begin
		det:=b*b-4*a*c;
		if (det<0) then
			dbms_output.put_line('Imaginary roots');
		else
			r1:=(b*-1+sqrt(det))/(2*a);
			r2:=(b*-1-sqrt(det))/(2*a);
			if (det>0) then
				dbms_output.put_line('Roots are '||r1||' , '||r2);
			else
				dbms_output.put_line('Root is '||r1);
			end if;
		end if;
	end;
BEGIN
	a:=&a;
	b:=&b;
	c:=&c;
	findRoots(a,b,c,r1,r2);
	
END;
/
/*
OUTPUT
@3
Enter value for a: 1
old  21:        a:=&a;
new  21:        a:=1;
Enter value for b: -5
old  22:        b:=&b;
new  22:        b:=-5;
Enter value for c: 6
old  23:        c:=&c;
new  23:        c:=6;
Roots are 3 , 2

PL/SQL procedure successfully completed.

 @3
Enter value for a: 3
old  21:        a:=&a;
new  21:        a:=3;
Enter value for b: 1
old  22:        b:=&b;
new  22:        b:=1;
Enter value for c: 2
old  23:        c:=&c;
new  23:        c:=2;
Imaginary roots

PL/SQL procedure successfully completed.

@3
Enter value for a: 1
old  24:        a:=&a;
new  24:        a:=1;
Enter value for b: 6
old  25:        b:=&b;
new  25:        b:=6;
Enter value for c: 9
old  26:        c:=&c;
new  26:        c:=9;
Root is -3

PL/SQL procedure successfully completed.
*/

