--Връща средното време на изгледан филм (в минути) по MovieID.

DELIMITER $$

CREATE FUNCTION GetMovieAverageWatchDuration(p_MovieID INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE avgDuration DECIMAL(10,2);

    SELECT AVG(WatchedDuration)
    INTO avgDuration
    FROM ViewingHistory
    WHERE MovieID = p_MovieID;

    RETURN IFNULL(avgDuration, 0);
END $$

DELIMITER ;
