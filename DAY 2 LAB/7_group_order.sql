-- GROUP BY - HAVING

-- 1.	How many students are registered for each course? Display the course description and the number of students registered in each course.
	SELECT COURSE_NO, COUNT(REGISTER_NO) FROM STUDENT GROUP BY COURSE_NO;
-- 2.	How many courses did each student register for? Use Assessment table.
	SELECT REGISTER_NO, COUNT(COURSE_NO) FROM STUDENT GROUP BY REGISTER_NO;
-- ORDER BY
-- 1.	Retrieve Name, Gender, MobileNo of all the students in ascending order of RegNo.
	SELECT REGISTER_NO, NAME, GENDER, MOBILE_NO FROM STUDENT ORDER BY REGISTER_NO;
-- 2.	List the faculty members in the order of older faculty first.
	SELECT FACULTY_NAME, DOB FROM FACULTY ORDER BY DOB;
