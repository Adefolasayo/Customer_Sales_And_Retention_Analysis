CREATE DATABASE Global_Electronics

CREATE TABLE Sales (
    OrderNumber INT PRIMARY KEY,
    LineItem VARCHAR(255),
    OrderDate DATE,
    DeliveryDate Date,
    Quantity Int,
    CurrencyCode VarChar (10)
);

CREATE TABLE Customers (
      CustomerKey INT PRIMARY KEY,
      Gender VarChar (10),
      Name VarChar (150),
      City VarChar (100),
      StateCode VarChar (10),
      State VarChar (100),
      ZipCode VarChar (20),
      Country VarChar (100),
      Continent VarChar (50),
      Birthday Date 
    );


CREATE TABLE Products (
      ProductKey INT PRIMARY KEY,
      ProductName VarChar (255),
      Brand VarChar (150),
      Color Varchar (100),
      UnitCostUSD DECIMAL(10,2),
      UnitPriceUSD DECIMAL(10,2),
      SubCategoryKey INT,
      SubCategory VarChar (100),
      CategoryKey INT,
      Category VarChar (100)

    );


CREATE TABLE Stores (
      StoreKey INT PRIMARY KEY,
      Country VarChar (50),
      State VarChar (255),
      SquareMeters INT,
      OpenDate Date
    );

CREATE TABLE ExchangeRates (
      Date date,
      Currency VarChar (10),
      Exchange Decimal (10,4)
    );

ALTER TABLE Sales
Add StoreKey INT CONSTRAINT FK_Sales_Stores FOREIGN KEY REFERENCES Stores(StoreKey);

ALTER TABLE Sales
Add ProductKey INT CONSTRAINT FK_Sales_Products FOREIGN KEY REFERENCES Products(ProductKey);

ALTER TABLE Sales
Add CustomerKey INT CONSTRAINT FK_Sales_Customers FOREIGN KEY REFERENCES Customers(CustomerKey);

