-- I-Reset database for clean sandbox environement
-- DROP DATABASE IF EXISTS LogisticsHub;
CREATE DATABASE LogisticsHub;
USE LogisticsHub;

-- 1-Products table
CREATE TABLE Products(
    IDs INT PRIMARY KEY AUTO_INCREMENT, 
    Name VARCHAR(50), 
    Price DECIMAL(5,2),
    Current_stock_lvls INT NOT NULL,
    Selled_pices INT DEFAULT 0,

    CONSTRAINT chk_price CHECK(Price > 0),
    CONSTRAINT chk_selled CHECK(Selled_pices >= 0)
);

-- 2-Orders table
CREATE TABLE Orders(
    Order_IDs INT PRIMARY KEY AUTO_INCREMENT, 
    Time_Stamps TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    Total_amounts DECIMAL(7,2),
    Order_Status VARCHAR(20)
);

-- 3-Orders table(BRIDGE TABLE)
CREATE TABLE Order_Items(
    Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT,
    Product_ID INT,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    FOREIGN KEY (Order_ID) 
    REFERENCES Orders(Order_IDs) ON DELETE CASCADE,
    FOREIGN KEY (Product_ID) REFERENCES Products(IDs) 
);

-- 4- the stock automation TRIGGER
DELIMITER//
CREATE TRIGGER deducts_stock
AFTER INSERT ON Order_Items
FOR EACH ROW
    BEGIN
        -- update the product stock when a sale happens
        UPDATE Products
        SET Current_stock_lvls = Current_stock_lvls - NEW.Quantity,
            Selled_pices = Selled_pices + NEW.Quantity
        WHERE IDs = NEW.Product_ID;
    END//
DELIMITER;
