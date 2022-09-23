USE SSE;

-- 1. Create a function that returns the level of a customer based on credit limit.(Use the IF statement to determine the credit limit).
DELIMITER //
CREATE FUNCTION CUSTOMER_LEVEL4(CREDIT_LIM INT)
RETURNS VARCHAR(14)
DETERMINISTIC
BEGIN
	DECLARE CUSTOMER_LEVEL VARCHAR(14);
    
    SET CUSTOMER_LEVEL = ' ';
    
    IF CREDIT_LIM > 50000 THEN
		SET CUSTOMER_LEVEL = 'PLATINUM';
	ELSEIF CREDIT_LIM <=50000 AND CREDIT_LIMIT >= 10000 THEN
		SET CUSTOMER_LEVEL = 'GOLD';
	ELSEIF CREDIT_LIM < 10000 THEN
		SET CUSTOMER_LEVEL = 'SILVER';
	END IF;
    
    RETURN CUSTOMER_LEVEL;
    
END; //
DELIMITER ;
SELECT CUSTOMER_LEVEL4(51000);

-- 2. RECURSION FOR FACTORIAL : 

DELIMITER $$
CREATE PROCEDURE find_fact(IN n INT)
BEGIN
    SET @@GLOBAL.max_sp_recursion_depth = 255;
    SET @@session.max_sp_recursion_depth = 255;
  
    CALL factorial(n,@fact);
     
    SELECT @fact;
END
$$
 
DELIMITER $$
CREATE PROCEDURE factorial(IN n INT,OUT fact INT)
BEGIN
    IF n = 1 THEN
        SET fact := 1;
    ELSE
        CALL factorial(n-1,fact);
        SET fact := n * fact;
    END IF;
END
$$

call find_fact(5);



