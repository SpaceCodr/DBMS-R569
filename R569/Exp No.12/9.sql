--create table test with attributes num and sum
DECLARE 
  x NUMBER;
  n NUMBER;
  i NUMBER;
  sums NUMBER;
 
FUNCTION findsum(i NUMBER)
RETURN NUMBER IS SUM NUMBER;
BEGIN
  sums:=((i*(i+1))/2);
  RETURN sums;
END;
 
BEGIN
 n:=&n;
 FOR i IN 1..n LOOP
   sums:=findsum(i);
   INSERT INTO test VALUES(i,sums);
 END LOOP;
END;
/

/*
OUTPUT

Enter value for n: 5
old  15:  n:=&n;
new  15:  n:=5;

PL/SQL procedure successfully completed.

SELECT * FROM test;

       NUM        SUM
---------- ----------
         1          1
         2          3
         3          6
         4         10
         5         15
*/