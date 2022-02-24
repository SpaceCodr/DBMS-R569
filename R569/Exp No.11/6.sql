--CREATE TABLE Numbers (num int,type varchar(5));
delete from Numbers;
DECLARE
	lim number:=10;
BEGIN
	for i in 1..lim loop
		if (mod(i,2)=0) then
			insert into Numbers values(i,'Even');
		else
			insert into Numbers values(i,'Odd');
		end if;
	end loop;
END;
/
select * from Numbers;
/*
OUTPUT
@6

0 rows deleted.


PL/SQL procedure successfully completed.


       NUM TYPE
---------- -----
         1 Odd
         2 Even
         3 Odd
         4 Even
         5 Odd
         6 Even
         7 Odd
         8 Even
         9 Odd
        10 Even

10 rows selected.
*/