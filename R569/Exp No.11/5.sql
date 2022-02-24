DECLARE 
	input number:=3;
	max_limit number:=10;
BEGIN
	for i in 1..max_limit loop
		dbms_output.put_line(input||' x '||i||' = '||input*i);
	end loop;
END;
/
/*
OUTPUT
@5
3 x 1 = 3
3 x 2 = 6
3 x 3 = 9
3 x 4 = 12
3 x 5 = 15
3 x 6 = 18
3 x 7 = 21
3 x 8 = 24
3 x 9 = 27
3 x 10 = 30

PL/SQL procedure successfully completed.
*/