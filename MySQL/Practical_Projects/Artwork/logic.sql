USE Artwork;

-- WE CAN MAKE IT WORK FOR ALL USER BY PUTTING IT INSIDE A PROCEDURE
START TRANSACTION;
    UPDATE Artworks SET Statu = 'Sold', Client_FK = 22
    WHERE Artwork_ID = 1;
COMMIT;
--ROLL BACK;

CREATE VIEW v_PremiumCollectorPurchases AS 
SELECT c.C_Name, w.Title, a.A_Name
FROM Artworks w 
INNER JOIN Client c ON w.Client_FK = c.C_ID
INNER JOIN Artist a ON w.Artist_FK = a.A_ID
WHERE c.Acc_Type = 'Premium';

DELIMITER //
CREATE PROCEDURE Total_earnings(
    IN arts_id_input INT,
    OUT total_earnings_output DECIMAL(7,2)
)
BEGIN
    SELECT SUM(w.Price) INTO total_earnings_output
    FROM Artworks w
    WHERE w.Artist_FK = arts_id_input AND w.Statu = 'Sold';
END //
DELIMITER ;
