--CREATE TABLE Num_op (num int,sqr int,cube int);
delete from Num_op;
DECLARE
	lim number:=10;
BEGIN
	for i in 1..lim loop
		insert into Num_op values(i,power(i,2),power(i,3));
	end loop;
END;
/
select * from Num_op;
/*
OUTPUT
@7

0 rows deleted.


PL/SQL procedure successfully completed.


       NUM        SQR       CUBE
---------- ---------- ----------
         1          1          1
         2          4          8
         3          9         27
         4         16         64
         5         25        125
         6         36        216
         7         49        343
         8         64        512
         9         81        729
        10        100       1000

10 rows selected.
*/