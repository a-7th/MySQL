DROP DATABASE IF EXISTS FitPulse;
CREATE DATABASE FitPulse;
USE FitPulse;

CREATE TABLE Clients(
    Client_ID INT PRIMARY KEY AUTO_INCREMENT,
    Client_Name VARCHAR(22),
    Joined_Date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Trainers(
    Trainer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Trainer_Name VARCHAR(22),
    Trainenr_Statu VARCHAR(15)
);

CREATE TABLE Sessions(
    Session_Sub VARCHAR(22),
    Session_Statu VARCHAR(22),
    T_ID INT, 
    C_ID INT, 
    Fee DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (T_ID) REFERENCES Trainers(Trainer_ID),
    FOREIGN KEY (C_ID) REFERENCES Clients(Client_ID) 
    ON DELETE CASCADE
);

START TRANSACTION;
INSERT INTO Sessions (C_ID, T_ID, Fee) VALUES(1, 2, 50.0);
UPDATE Trainers SET Trainenr_Statu = 'Fully Booked' 
WHERE Trainer_ID= 2;
COMMIT;
-- ROLLBACK;

CREATE VIEW Premium_session AS
SELECT c.Client_Name, t.Trainer_Name, s.Fee
FROM Sessions s
INNER JOIN Clients c ON s.C_ID = c.Client_ID
INNER JOIN Trainers t ON s.T_ID = t.Trainer_ID
WHERE Session_Sub = 'Premium' AND Session_Statu = 'Scheduled';

DELIMITER //
CREATE PROCEDURE p_trainer_fees_(
    IN trainer_input_id INT,
    OUT total_fees DECIMAL(6,2)
)
BEGIN
    SELECT SUM(s.Fee) INTO total_fees
    FROM Sessions s
-- NO NEED TO JOIN:INNER JOIN Trainers t ON t.Trainer_ID = s.T_ID 
    WHERE trainer_input_id = s.T_ID;
END // 
DELIMITER ;
