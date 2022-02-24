DECLARE
	type student is varray(5) of varchar(20) not null;
	type marks is varray(5) of number not null;
	students student:=student('A','B','C','D','E');
	marks_1 marks:=marks(70,75,68,85,90);
	marks_2 marks:=marks(85,65,100,67,70);
	student_no number;
	tot_marks number;
BEGIN
	student_no:=students.count;
	for i in 1..student_no loop
		tot_marks:=marks_1(i)+marks_2(i);
		dbms_output.put_line('Total marks of '||students(i)||' : '||tot_marks);
	end loop;
END;
/ 
/*
OUTPUT
@3
Total marks of A : 155
Total marks of B : 140
Total marks of C : 168
Total marks of D : 152
Total marks of E : 160

PL/SQL procedure successfully completed.
*/