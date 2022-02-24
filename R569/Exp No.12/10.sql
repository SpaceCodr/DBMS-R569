--create table test1 with attributes num,square,cube
DECLARE 
  n NUMBER;
  PROCEDURE findLoops(x in int)is
  BEGIN
	INSERT INTO test1 VALUES (x,sqrt(x),power(x,(1/3)));
  END;
 
BEGIN
  n:=&n;
  findLoops(n);
END;
/

/*
OUTPUT

Enter value for n: 125
old   9:   n:=&n;
new   9:   n:=125;

PL/SQL procedure successfully completed.

SELECT * FROM test1;

       NUM     SQUARE       CUBE
---------- ---------- ----------
       125         11          5
*/