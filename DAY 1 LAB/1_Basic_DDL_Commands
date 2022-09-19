CREATE DATABASE SSE;

USE SSE;

# 1. create table "student"
CREATE TABLE STUDENT(
	REGISTER_NO INT,
    NAME CHAR(20),
    GENDER CHAR(1),
    DOB INT(10),
    MOBILE_NO INT(10),
    CITY CHAR(10)
    );

# 2. create table "faculty"
CREATE TABLE FACULTY(
	FACULTY_NO VARCHAR(4),
    FACULTY_NAME VARCHAR(15),
    GENDER CHAR(1),
    DOB DATE,
    DOJ DATE,
    MOBILE_NO INT(10)
	);
    
# 3. create table "department"    
CREATE TABLE DEPARTMENT(
	DEPT_NO VARCHAR(4),
    DEPT_NAME VARCHAR(15),
    DEPT_HEAD VARCHAR(4)
    );
    
# 4. create table "course"
CREATE TABLE COURSE(
	COURSE_NO VARCHAR(3),
    COURSE_DESC VARCHAR(14),
    COURSE_TYPE CHAR(1),
    SEM_NO CHAR(1),
    HALL_NO VARCHAR(4),
    FACULTY_NO VARCHAR(4)
    );
    
# 5. altering table "faculty" --> adding column "dept_no"
ALTER TABLE FACULTY ADD DEPT_NO VARCHAR(4);

SELECT * FROM FACULTY;
