# 1. Write a function that uses CASE statement where if monthly_value is equal to or less than 4000, 
-- then income_level will be set to 'Low Income'. If monthly_value is equal to or less than 5000, then 
-- income_level will be set to 'Avg Income'. Otherwise, income_levelwill be set to 'High Income'.

DELIMITER //
CREATE FUNCTION INCOME_LEVEL(MONTHLY_VALUE INT)
RETURNS VARCHAR(20)
deterministic
BEGIN
	DECLARE INCOME_LEVEL VARCHAR(20);
	CASE MONTHLY_VALUE
		WHEN MONTHLY_VALUE <=4000 THEN 
			SET INCOME_LEVEL='LOW INCOME';
		WHEN MONTHLY_VALUE > 4000 AND MONTHLY_VALUE <=5000 THEN 
			SET INCOME_LEVEL='AVG INCOME';
		ELSE
			SET INCOME_LEVEL='HIGH INCOME';
	END CASE;
	RETURN INCOME_LEVEL;
END;//

SELECT INCOME_LEVEL(250000);


# 2. Write a function that will use ITERATE statement which would cause the loop to repeat while income is less than 4000.
-- Once income is greater than or equal to 4000, would terminate the LOOP.
DELIMITER//
CREATE FUNCTION CALCINCOME(START_VALUE INT)
RETURNS INT
DETERMINISTIC
BEGIN
   DECLARE INCOME INT;
   SET INCOME=0;
   LABEL1:LOOP
     SET INCOME=INCOME+START_VALUE;
     IF INCOME<4000 THEN
        ITERATE LABEL1;
	 END IF;
     LEAVE LABEL1;
	END LOOP LABEL1;
    RETURN INCOME;
 END;//
 SELECT CALCINCOME(450);



