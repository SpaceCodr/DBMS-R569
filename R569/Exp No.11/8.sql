/*
CREATE TABLE Customer (cid int,emi int);
INSERT INTO Customer VALUES(102,3000);
INSERT INTO Customer VALUES(202,7500);
INSERT INTO Customer VALUES(252,9700);
INSERT INTO Customer VALUES(372,8300);
INSERT INTO Customer VALUES(412,5300);
*/
DECLARE
	input_cid number:=&input_cid;
	row_no number;
	emi number;
	customer_info Customer%rowtype;
BEGIN
	select count(*) into row_no from Customer where cid=input_cid;
	if (row_no=1) then
		update Customer set emi=emi/2 where cid=input_cid;
		select * into customer_info from Customer where cid=input_cid;
		dbms_output.put_line('Updated emi: '||customer_info.emi);
	else
		dbms_output.put_line('Customer of cid '||input_cid||' not found');
	end if;
END;
/
/*
OUTPUT
@8
Enter value for input_cid: 102
old   2:        input_cid number:=&input_cid;
new   2:        input_cid number:=102;
Updated emi: 1500

PL/SQL procedure successfully completed.

SELECT * FROM Customer;

       CID        EMI
---------- ----------
       102       1500
       202       7500
       252       9700
       372       8300
       412       5300

@8
Enter value for input_cid: 211
old   2:        input_cid number:=&input_cid;
new   2:        input_cid number:=211;
Customer of cid 211 not found

PL/SQL procedure successfully completed.
*/