USE SSE;

-- WHERE:
-- 1.The student counsellor wanted to display the registration number, student name and date of birth for all the students.
	SELECT REGISTER_NO,NAME,DOB FROM STUDENT;
    
-- 2.The controller of examinations wanted to list all the female students
	SELECT * FROM STUDENT
    	WHERE GENDER = "F" ;
    
-- 3.Who are the boy students registered for course with the course number “C001“
	
    # CREATING A TABLE - "REGISTRATIONS"
	CREATE TABLE REGISTRATIONS(
	COURSE_NO VARCHAR(4),
        REGISTER_NO INT,
        FOREIGN KEY(REGISTER_NO) REFERENCES STUDENT(REGISTER_NO)
        );
        
	#POPULATING WITH VALUES AND CREATING A FOREIGN KEY
	INSERT INTO REGISTRATIONS VALUES('C001',192011002);
    	INSERT INTO REGISTRATIONS VALUES('C001',192011003);
    	INSERT INTO REGISTRATIONS VALUES('C001',192011004);
    	INSERT INTO REGISTRATIONS VALUES('C002',192011010);
    	INSERT INTO REGISTRATIONS VALUES('C003',192011008);
    
    # ACTUAL QUERY OF THE GIVEN QUESTION : 
    SELECT REGISTRATIONS.COURSE_NO, STUDENT.REGISTER_NO , STUDENT.NAME FROM
    STUDENT JOIN REGISTRATIONS
    ON REGISTRATIONS.REGISTER_NO = STUDENT.REGISTER_NO
    AND STUDENT.GENDER = 'M'
    AND REGISTRATIONS.COURSE_NO = 'C001';
    
-- 4.Display all faculty details joined before “November 2014”
	SELECT * FROM FACULTY
    	WHERE DOJ < DATE("2014-11-01");
    
-- 5.Display all the courses not allotted to halls
	SELECT * FROM COURSE
    	WHERE HALL_NO IS NULL ;

-- LIKE :
-- 6.	List the students whose name ends with the substring “ma”
	
	SELECT * FROM STUDENT
    	WHERE STUDENT.NAME LIKE '%ma' ;
    
-- 7.	Display all students whose name contains the substring “ma”
	SELECT * FROM STUDENT
    	WHERE NAME LIKE '%ma%';
    
-- 8.	Find all the students who are located in cities having “Sal” as substring
	SELECT * FROM STUDENT
    	WHERE CITY LIKE '%sal%';
    
-- 9.	Display the students whose names do not contain six letters.
	SELECT * FROM STUDENT
   	WHERE CHAR_LENGTH(NAME) != 6;
    
-- 10.	Find all the students whose names contains “th”
	SELECT * FROM STUDENT
   	WHERE NAME LIKE '%th%';


