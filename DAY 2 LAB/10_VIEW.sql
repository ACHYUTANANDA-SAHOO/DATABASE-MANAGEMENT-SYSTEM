USE SSE;
-- Create a view with name ‘std_view’ using STUDENT table which holds the value of register number, name and DOB of student.
	
    CREATE VIEW STD_VIEW 
    AS
    SELECT REGISTER_NO, NAME, DOB 
    FROM STUDENT;
    
    #DISPLAYING STD_VIEW
    SELECT * FROM STD_VIEW;