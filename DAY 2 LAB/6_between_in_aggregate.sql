USE SSE;

-- IN & BETWEEN

-- 1.	List the type of the courses “Statistics” and “Programming”
	SELECT * FROM COURSE WHERE COURSE_TYPE IN ('Programming');
	SELECT * FROM COURSE WHERE COURSE_TYPE IN ('Statistics');
-- 2.	The instructor wants to know the CourseNos whose scores are in the range 50 to 80
	
    # CreatING TABLE MARKS AND ADDING VALUES : 
	CREATE TABLE MARKS(
		REG_NO INT,
        COURSE_NO VARCHAR(4),
        SEM_NO CHAR(1),
        MARKS INT
        );
    INSERT INTO MARKS VALUES(192011002,'C021','5',89);
    INSERT INTO MARKS VALUES(192011008,'C021','5',91);
    INSERT INTO MARKS VALUES(192011005,'C002','3',89);
    INSERT INTO MARKS VALUES(192011004,'C021','5',72);
    INSERT INTO MARKS VALUES(192011065,'C002','3',76);
    INSERT INTO MARKS VALUES(192011012,'C021','5',53);
    INSERT INTO MARKS VALUES(192011010,'C002','3',56);
    
    SELECT DISTINCT COURSE_NO FROM MARKS WHERE MARKS BETWEEN 50 AND 80;
    
-- AGGREGATE

-- 1.	Find the average mark of “C002”.
	SELECT COURSE_NO, AVG(MARKS) FROM MARKS WHERE COURSE_NO = 'C002';

-- 2.	List the maximum, minimum mark for “C021”
	SELECT COURSE_NO, MIN(MARKS), MAX(MARKS) FROM MARKS WHERE COURSE_NO = 'C021';
-- 3.	List the maximum, minimum, average mark for each subject in 5th semester
	SELECT COURSE_NO, MIN(MARKS), MAX(MARKS), AVG(MARKS) FROM MARKS WHERE SEM_NO = '5';
-- 4.	List the name of the courses and average mark of each courses.
	SELECT COURSE_NO,AVG(MARKS) FROM MARKS WHERE COURSE_NO = 'C002';
    SELECT COURSE_NO,AVG(MARKS) FROM MARKS WHERE COURSE_NO = 'C021';

    
-- 5.	Calculate the sum of all the scores.
	SELECT SUM(MARKS) FROM MARKS;

-- 6.	How many students are registered for each course? Display the
-- course description and the number of students registered in each course.
	SELECT COURSE_NO, COUNT(COURSE_NO) FROM REGISTRATIONS WHERE COURSE_NO = 'C001';
    SELECT COURSE_NO, COUNT(COURSE_NO) FROM REGISTRATIONS WHERE COURSE_NO = 'C002';
    SELECT COURSE_NO, COUNT(COURSE_NO) FROM REGISTRATIONS WHERE COURSE_NO = 'C003';
-- 7.	How many courses did each student register for? Use Assessment table.
	SELECT COUNT(COURSE_NO) FROM REGISTRATIONS;
    




