SELECT * 
FROM CarDealershipDatabase.Dealerships;

SELECT Make, Model
FROM CarDealershipDatabase.Vehicles 
JOIN CarDealershipDatabase.Dealerships
WHERE CarDealershipDatabase.Vehicles.Dealership_Id = 1;

SELECT *
FROM CarDealershipDatabase.Vehicles 
WHERE VIN = 1212;

SELECT Name
FROM CarDealershipDatabase.Vehicles
JOIN CarDealershipDatabase.Dealerships
ON CarDealershipDatabase.Vehicles.Dealership_Id = CarDealershipDatabase.Dealerships.Dealership_Id
WHERE VIN = 1212;

SELECT Name 
FROM CarDealershipDatabase.Dealerships
JOIN CarDealershipDatabase.Vehicles
ON CarDealershipDatabase.Vehicles.Dealership_Id = CarDealershipDatabase.Dealerships.Dealership_Id
WHERE Make = "Audi" AND Model = "A3";

SELECT * 
FROM CarDealershipDatabase.Sales_Contracts
WHERE VIN = 1212

SELECT * 
FROM CarDealershipDatabase.Sales_Contracts
WHERE Order_Date = "2024-11-21 01:05:06";
