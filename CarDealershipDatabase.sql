DROP DATABASE IF EXISTS CarDealershipDatabase;

CREATE DATABASE IF NOT EXISTS CarDealershipDatabase;

USE CarDealershipDatabase;

CREATE TABLE Dealerships (
	Dealership_Id INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(50),
    Address VARCHAR(50),
    Phone VARCHAR(12),
    PRIMARY KEY (Dealership_Id)
    );
    
CREATE TABLE Vehicles (
	VIN VARCHAR(12) NOT NULL UNIQUE,
    Make VARCHAR(20),
    Model VARCHAR(20),
    Color VARCHAR(20),
    Price DECIMAL(9,2),
    Sold BOOLEAN,
    PRIMARY KEY (VIN)
    );
    
CREATE TABLE Inventory (
	DealershipID INTEGER NOT NULL AUTO_INCREMENT,
    VIN VARCHAR(12) NOT NULL,
    PRIMARY KEY (DealershipID, VIN),
    FOREIGN KEY (DealershipID) REFERENCES Dealerships(DealershipID),
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
    );
    
CREATE TABLE Sales_Contracts (
	Order_Id INTEGER NOT NULL AUTO_INCREMENT,
    VIN VARCHAR(12) NOT NULL,
    Order_Date DATE,
    TotalPrice DECIMAL(9, 2),
    MonthlyPrice DECIMAL(7, 2),
    PRIMARY KEY (ContractID),
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
    );
    
CREATE TABLE Lease_Contracts (
	Order_Id INTEGER NOT NULL AUTO_INCREMENT,
    VIN VARCHAR(12) NOT NULL,
    LeaseDate Date,
    TotalPrice DECIMAL(9, 2),
    MonthlyPrice DECIMAL(7, 2),
    PRIMARY KEY (Order_Id),
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
    );