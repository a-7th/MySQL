DROP DATABASE IF EXISTS SaaS;
CREATE DATABASE SaaS;
USE SaaS;

-- 1-Users table
CREATE TABLE Users(
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(20) NOT NULL,
    Email VARCHAR(20) NOT NULL,
    Creation_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_usrname CHECK (LENGTH(Username) >= 5),
    CONSTRAINT chk_email CHECK (LENGTH(Email) >= 12) -- Removed trailing comma
);

-- 2-Subscription Plans table
CREATE TABLE Subscription_Plans(
    Plan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Price DECIMAL(5,2) NOT NULL DEFAULT 00.0, 
    Plan_Name VARCHAR(20) NOT NULL DEFAULT 'Free'
);

-- 3-User Subscription bridge table
CREATE TABLE User_Sub(
    Plan_ID INT,
    Sub_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    User_access VARCHAR(20) DEFAULT 'Active',
    FOREIGN KEY (Plan_ID) REFERENCES Subscription_Plans(Plan_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE
);

-- Seed Initial Data
INSERT INTO Subscription_Plans (Plan_Name, Price) 
VALUES ('Free', 0.00), ('Basic', 9.99), ('Premium', 19.99);

INSERT INTO Users (Username, Email) 
VALUES ('Spon7geBob', 'frycook@bikini.com');

-- Upgrade Transaction
START TRANSACTION;
    INSERT INTO User_Sub (User_ID, Plan_ID) VALUES(1, 3);
COMMIT;

-- Stored Procedure with proper spacing and types
DELIMITER //
CREATE PROCEDURE calc(
    IN input_user_id INT, -- Fixed datatype from 'IN' to 'INT'
    OUT Total_spent DECIMAL(5,2)
)
BEGIN
    SELECT sp.Price INTO Total_spent
    FROM User_Sub us
    INNER JOIN Subscription_Plans sp ON us.Plan_ID = sp.Plan_ID
    WHERE us.User_ID = input_user_id
    LIMIT 1;
END //
DELIMITER ;

-- Premium View with fixed select list comma
CREATE VIEW v_ActivePrimiums AS
SELECT u.Username, u.Email, sp.Plan_Name -- Added missing comma
FROM User_Sub us 
INNER JOIN Users u ON us.User_ID = u.User_ID
INNER JOIN Subscription_Plans sp ON us.Plan_ID = sp.Plan_ID
WHERE sp.Plan_Name = 'Premium' AND us.User_access = 'Active';
