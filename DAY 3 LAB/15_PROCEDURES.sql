USE SSE;

-- 1. Create a simple procedure to get all the records from the table ‘student_info’ 

DELIMITER //
CREATE PROCEDURE STUDENT_INFO()
BEGIN
	SELECT * FROM STUDENT;
END; //

CALL STUDENT_INFO();
DELIMITER ;

-- 2. Create a stored procedure GetCustomerLevel() that accepts two parameters customer number and customer level.
-- First, it gets the credit limit from the customers table.
-- Then, based on the credit limit, it determines the customer level: PLATINUM , GOLD , an SILVER.

# CREATING TABLE CUSTOMER FOR DEMONSTRATION : 
CREATE TABLE CUSTOMER(
	CUST_NO INT,
    CUST_NAME VARCHAR(15),
    CREDIT_LIMIT INT
    );
    
INSERT INTO CUSTOMER VALUES(1001,'SUBI',65000);
INSERT INTO CUSTOMER VALUES(1002,'SAHIL',50000);
INSERT INTO CUSTOMER VALUES(1003,'ABHAY',12000);
INSERT INTO CUSTOMER VALUES(1004,'AJITH',1000000);

DELIMITER //
CREATE PROCEDURE GET_CUSTOMER_LEVEL2(
	IN CUSTOMER_NO INT,
	OUT CUSTOMER_LEVEL VARCHAR(14))
BEGIN
	DECLARE CREDIT_LIM INT;
    DECLARE CUST_LEVEL VARCHAR(14);
	SET CUST_LEVEL = ' '; 
    SELECT CREDIT_LIMIT INTO CREDIT_LIM
    FROM CUSTOMER
    WHERE CUSTOMER_NO = CUSTOMER.CUST_NO;
    
    IF CREDIT_LIM > 50000 THEN
		SET CUSTOMER_LEVEL = 'PLATINUM';
	ELSEIF (CREDIT_LIM <= 50000 AND CREDIT_LIM >= 10000) THEN
		SET CUSTOMER_LEVEL = 'GOLD';
	ELSEIF CREDIT_LIM < 10000 THEN
		SET CUSTOMER_LEVEL = 'SILVER';
	END IF;
    
END; //
DELIMITER ;

CALL GET_CUSTOMER_LEVEL2(1003, @CUSTOMER_LEVEL);

SELECT @CUSTOMER_LEVEL AS FINAL;


