--Връща историята на гледане по даден UserID.

DELIMITER $$

CREATE PROCEDURE GetUserViewingHistory(IN p_UserID INT)
BEGIN
    SELECT 
        u.UserID,
        p.ProfileID,
        vh.MovieID,
        m.Title,
        vh.WatchedAt,
        vh.WatchedDuration,
        vh.DeviceType
    FROM User u
    JOIN Profile p ON p.UserID = u.UserID
    JOIN ViewingHistory vh ON vh.ProfileID = p.ProfileID
    JOIN Movie m ON m.MovieID = vh.MovieID
    WHERE u.UserID = p_UserID
    ORDER BY vh.WatchedAt DESC;
END $$

DELIMITER ;
