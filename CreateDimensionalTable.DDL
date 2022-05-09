
--- Create Dimension table

CREATE OR REPLACE TABLE IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_PRODUCT(
  "DimProductID" INTEGER IDENTITY(1,1) CONSTRAINT "PK_DimProductID" PRIMARY KEY NOT NULL,
  "SourceProductID" INTEGER, 
  "SourceProductTypeID" INTEGER, 
  "SourceProductCategoryID" INTEGER, 
  "ProductName" VARCHAR(255),
  "ProductType" VARCHAR (255), 
  "ProductCategory" VARCHAR (255),
  "ProductRetailPrice" FLOAT,
  "ProductWholesalePrice" FLOAT, 
  "ProductCost" FLOAT, 
  "ProductRetailProfit" FLOAT, 
  "ProductWholesaleUnitProfit" FLOAT, 
  "ProductProfitMarginUnitPercent" FLOAT
);



CREATE OR REPLACE TABLE IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_LOCATION(
  "DimLocationID" INTEGER IDENTITY(1,1) CONSTRAINT "PK_DimLocationID" PRIMARY KEY NOT NULL,
  "SourceLocationID" INTEGER, 
  "PostalCode" VARCHAR(255),
  "Address" VARCHAR (255), 
  "City" VARCHAR (255),
  "Region" VARCHAR (255), 
  "Country" VARCHAR (255)
);


CREATE OR REPLACE TABLE IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_CHANNEL(
  "DimChannelID" INTEGER IDENTITY(1,1) CONSTRAINT "PK_DimChannelID" PRIMARY KEY NOT NULL,
  "SourceChannelID" INTEGER, 
  "SourceChannelCategoryID" INTEGER, 
  "ChannelName" VARCHAR (255), 
  "ChannelCategory" VARCHAR (255)
);


SELECT * FROM IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_LOCATION

CREATE OR REPLACE TABLE IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_STORE(
  "DimStoreID" INTEGER IDENTITY(1,1) CONSTRAINT "PK_DimStoreID" PRIMARY KEY NOT NULL,
  "DimLocationID" INTEGER CONSTRAINT "FK_DimLocationIDStore" FOREIGN KEY REFERENCES DIM_LOCATION("DimLocationID") NOT NULL, 
  "SourceStoreID" INTEGER,
  "StoreNumber" VARCHAR (255), 
  "StoreManager" VARCHAR (255)
);


CREATE OR REPLACE TABLE IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_RESELLER(
  "DimResellerID" INTEGER IDENTITY(1,1) CONSTRAINT "PK_DimResellerID" PRIMARY KEY NOT NULL,
  "DimLocationID" INTEGER CONSTRAINT "FK_DimLocationIDReseller" FOREIGN KEY REFERENCES DIM_LOCATION("DimLocationID") NOT NULL, 
  "SourceResellerID" VARCHAR (255),
  "ResellerName" VARCHAR (255), 
  "ContactName" VARCHAR (255),
  "PhoneNumber" VARCHAR (255), 
  "Email" VARCHAR (255)
);


CREATE OR REPLACE TABLE IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_CUSTOMER(
  "DimCustomerID" INTEGER IDENTITY(1,1) CONSTRAINT "PK_DimCustomerID" PRIMARY KEY NOT NULL,
  "DimLocationID" INTEGER CONSTRAINT "FK_DimLocationIDCustomer" FOREIGN KEY REFERENCES DIM_LOCATION("DimLocationID") NOT NULL, 
  "SourceCustomerID" VARCHAR (255),
  "FullName" VARCHAR (255), 
  "FirstName" VARCHAR (255),
  "LastName" VARCHAR (255),
  "Gender" VARCHAR (255),
  "EmailAddress" VARCHAR (255),
  "PhoneNumber" VARCHAR (255)
);


-- Load unknown values


INSERT INTO IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_PRODUCT(
  "DimProductID" 
  "SourceProductID" 
  "SourceProductTypeID" 
  "SourceProductCategoryID" 
  "ProductName" 
  "ProductType" 
  "ProductCategory" 
  "ProductRetailPrice" 
  "ProductWholesalePrice" 
  "ProductCost" 
  "ProductRetailProfit" 
  "ProductWholesaleUnitProfit" 
  "ProductProfitMarginUnitPercent" 
)
VALUES 
( 
     -1
    ,-1
    ,-1
    ,-1
    ,'Unknown' 
    ,'Unknown'
    ,'Unknown'
    ,-1
    ,-1
    ,-1
    ,-1
    ,-1
    ,-1

);



INSERT INTO IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_LOCATION(
  "DimLocationID",
  "SourceLocationID", 
  "PostalCode",
  "Address", 
  "City",
  "Region", 
  "Country"
)
VALUES
(
  -1,
  -1,
  'Unknown',
  'Unknown',
  'Unknown',
  'Unknown',
  'Unknown'

);


INSERT INTO IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_CHANNEL(
  "DimChannelID",
  "SourceChannelID", 
  "SourceChannelCategoryID", 
  "ChannelName", 
  "ChannelCategory"
)
VALUES
(
  -1,
  -1,
  -1,
  'Unknown',
  'Unknown'
);



INSERT INTO IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_STORE(
  "DimStoreID",
  "DimLocationID", 
  "SourceStoreID",
  "StoreNumber", 
  "StoreManager"
)
VALUES
(
  -1,
  -1,
  -1,
  'Unknown',
  'Unknown'
);


INSERT INTO IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_RESELLER(
  "DimResellerID",
  "DimLocationID", 
  "SourceResellerID",
  "ResellerName", 
  "ContactName",
  "PhoneNumber", 
  "Email" 
)
VALUES
(
  -1,
  -1,
  -1,
  'Unknown',
  'Unknown',
  'Unknown',
  'Unknown',
  'Unknown'
);



INSERT INTO IMT577_DW_RAKSHITHA_KN.PUBLIC.DIM_CUSTOMER(
  "DimCustomerID",
  "DimLocationID", 
  "SourceCustomerID",
  "FullName", 
  "FirstName",
  "LastName",
  "Gender",
  "EmailAddress",
  "PhoneNumber"
)
VALUES
(
  -1,
  -1,
  -1,
  'Unknown',
  'Unknown',
  'Unknown',
  'Unknown',
  'Unknown'
);





























































