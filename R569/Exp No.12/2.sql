DECLARE
	binary number;
	decimal number;
	temp number;
	i number;
	procedure convertDecimal(x in number,y out number) is
	begin
		y:=0;
		i:=0;
		temp:=x;
		while (temp!=0) loop
			if (mod(temp,10)!=0) then
				y:=y+power(2,mod(temp,10)*i);
			end if;
			temp:=floor(temp/10);
			i:=i+1;
		end loop;
	end;
BEGIN
	binary:=&binary;
	convertDecimal(binary,decimal);
	dbms_output.put_line('Decimal equivalent of '||binary||' is '||decimal);
END;
/
/* 
OUTPUT
@2
Enter value for binary: 110
old  20:        binary:=&binary;
new  20:        binary:=110;
Decimal equivalent of 110 is 6

PL/SQL procedure successfully completed.

@2
Enter value for binary: 1000
old  20:        binary:=&binary;
new  20:        binary:=1000;
Decimal equivalent of 1000 is 8

PL/SQL procedure successfully completed.

@2
Enter value for binary: 11000
old  20:        binary:=&binary;
new  20:        binary:=11000;
Decimal equivalent of 11000 is 24

PL/SQL procedure successfully completed.
*/