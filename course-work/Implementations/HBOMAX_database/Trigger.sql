--Когато се добави нова Subscription, автоматично задава дата за край = 1 година след началната, ако EndDate е NULL.

DELIMITER $$

CREATE TRIGGER SetSubscriptionEndDateBeforeInsert
BEFORE INSERT ON Subscription
FOR EACH ROW
BEGIN
    IF NEW.EndDate IS NULL THEN
        SET NEW.EndDate = DATE_ADD(NEW.StartDate, INTERVAL 1 YEAR);
    END IF;
END $$

DELIMITER ;
