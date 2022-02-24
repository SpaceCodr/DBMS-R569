DECLARE 
   message  varchar2(20):= 'Hello, World!'; 
BEGIN 
   dbms_output.put_line(message); 
END; 
/ 
/*
OUTPUT
SET SERVEROUTPUT ON;
@1
Hello, World!

PL/SQL procedure successfully completed.
*/