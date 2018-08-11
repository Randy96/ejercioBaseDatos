delimiter $$
CREATE PROCEDURE INV_MIN_PURCHASE_PRICE()
BEGIN
DECLARE done INT;
DECLARE current_inventory_ID INT;
DECLARE cur1 CURSOR FOR SELECT inventory_ID FROM _inventory;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

SET done = 0;
OPEN cur1;

inv_loop: LOOP
    FETCH cur1 INTO current_inventory_ID;
    IF done = 1 THEN
        LEAVE inv_loop;
    END IF;
    UPDATE _debug SET rows=rows+1;
END LOOP;
Delimiter $$