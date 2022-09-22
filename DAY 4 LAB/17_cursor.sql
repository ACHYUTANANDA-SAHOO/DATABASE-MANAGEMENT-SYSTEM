create table employees(
	id int, 
    Name varchar(100), 
    email varchar(100)
    ); 
insert into employees(id, Name, email) values(1, "Harry Potter", "pharry@warnerbros.com");
insert into employees(id, Name, email) values(2, "Clark Kent", "kclark@dccomics.com");
insert into employees(id, Name, email) values(3, "Tony Stark", "stony@marvel.com");


DELIMITER $$
CREATE PROCEDURE build_email_list (INOUT email_list varchar(4000))
BEGIN
	DECLARE v_finished INTEGER DEFAULT 0;
	DECLARE v_email varchar(100) DEFAULT "";
-- declare cursor for employee email
	DEClARE email_cursor CURSOR FOR SELECT email FROM employees;
-- declare NOT FOUND handler
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
-- 
	OPEN email_cursor;
	get_email: LOOP

		FETCH email_cursor INTO v_email;
		IF v_finished = 1 THEN
			LEAVE get_email;
		END IF;

-- build email list

SET email_list = CONCAT(v_email,";",email_list);

END LOOP get_email;
CLOSE email_cursor;

END$$
DELIMITER ;

-- Calling the procedure and getting the email list

SET @email_list = "";
CALL build_email_list(@email_list);

SELECT @email_list;
