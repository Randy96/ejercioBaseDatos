CREATE PROCEDURE INV_MIN_PURCHASE_PRICE() 
BEGIN 
DECLARE done INT; 
DECLARE current_inventory_ID INT; 
DECLARE cur1 CURSOR FOR SELECT inventory_ID FROM _inventory; 
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1; 

SET done = 0; 
OPEN cur1; 

REPEAT 

    FETCH cur1 INTO current_inventory_ID; 
    UPDATE _debug SET rows=rows+1; 

UNTIL done 
END REPEAT; 

CLOSE cur1; 

END; 