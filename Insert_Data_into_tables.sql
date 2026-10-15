


INSERT INTO Stores (StoreKey, Country, State, SquareMeters, OpenDate)
SELECT
     [StoreKey],
     [Country],
     [State],
     [Square Meters],
     [Open Date]

FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0',
                'Excel 12.0 Xml;Database=C:\Users\DELL\Desktop\DA\SQL\Customer_Sales&Retention_Analysis\Global_Electronics_Data\Stores.xlsx;HDR=YES',
                'SELECT * FROM [Stores$]'
);

INSERT INTO Customers (CustomerKey, Gender, Name, City, StateCode, State, ZipCode, Country, Continent, Birthday)
SELECT
     [CustomerKey],
     [Gender],
     [Name],
     [City],
     [State Code],
     [State],
     [Zip Code],
     [Country],
     [Continent],
     [Birthday]

FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0',
                'Excel 12.0 Xml;Database=C:\Users\DELL\Desktop\DA\SQL\Customer_Sales&Retention_Analysis\Global_Electronics_Data\Customers.xlsx;HDR=YES',
                'SELECT * FROM [Customers$]'
);

INSERT INTO Products(ProductKey, ProductName, Brand, Color, UnitCostUSD, UnitPriceUSD, SubCategoryKey, SubCategory, CategoryKey, Category)
SELECT 
      [ProductKey],
      [Product Name],
      [Brand],
      [Color],
      [Unit Cost USD],
      [Unit Price USD],
      [SubcategoryKey],
      [SubCategory],
      [CategoryKey],
      [Category]

FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0',
                'Excel 12.0 Xml;Database=C:\Users\DELL\Desktop\DA\SQL\Customer_Sales&Retention_Analysis\Global_Electronics_Data\Products.xlsx;HDR=YES',
                'SELECT * FROM [Products$]'
);

INSERT INTO ExchangeRates(Date, Currency, Exchange)
SELECT 
      [Date],
      [Currency],
      [Exchange]
FROM OPENROWSET ('Microsoft.ACE.OLEDB.12.0',
                'Excel 12.0 Xml;Database=C:\Users\DELL\Desktop\DA\SQL\Customer_Sales&Retention_Analysis\Global_Electronics_Data\Exchange_Rates.xlsx;HDR=YES',
                'SELECT * FROM [Exchange_Rates$]'
                );
