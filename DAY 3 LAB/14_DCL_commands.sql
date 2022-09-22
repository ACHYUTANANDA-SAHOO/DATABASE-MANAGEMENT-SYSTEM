USE SSE;
#creating a User
CREATE USER 'SAHOO'@'123' IDENTIFIED BY "23022002" ;

#Creating Table Price for demonstration
CREATE TABLE PRICE(
	ITEM_NO INT,
	ITEM_PRICE INT
);

# Giving access to SAHOO@123 to Table 'Price' : 
GRANT SELECT,INSERT,UPDATE
ON PRICE
TO 'SAHOO'@'123';

# Taking back access from SAHOO@123 : 
REVOKE SELECT,INSERT,UPDATE
ON PRICE
FROM 'SAHOO'@'123';

# Giving access to SAHOO@123 to Table 'Student' : 
GRANT SELECT, INSERT 
ON STUDENT
TO 'SAHOO'@'123';
