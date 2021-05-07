DROP PROCEDURE if EXISTS proc_INSERT_ORDER;
delimiter //
CREATE PROCEDURE proc_INSERT_ORDER(
	IN param_o_no INT(10),
	IN param_cus_no INT(10),
	IN param_o_price INT(10)
)
BEGIN
	DECLARE now_time DATETIME;
	SET now_time = NOW();
	INSERT INTO t_order
	(o_no, cus_no, o_date, o_price)
	VALUES
	(param_o_no, param_cus_no, now_time, param_o_price);
	COMMIT;
END //
delimiter ;

CALL proc_INSERT_ORDER(5, 2, 5000);