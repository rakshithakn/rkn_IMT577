CREATE OR REPLACE TABLE IMT577_DW_RAKSHITHA_KN.PUBLIC.FACT_SALESACTUAL(
  "DimProductID" INTEGER CONSTRAINT "FK_DimProductIDSalesActual" FOREIGN KEY REFERENCES DIM_PRODUCT("DimProductID") NOT NULL,
  "DimStoreID" INTEGER CONSTRAINT "FK_DimStoreIDSalesActual" FOREIGN KEY REFERENCES DIM_PRODUCT("DimProductID") NOT NULL,
  "DimResellerID" INTEGER CONSTRAINT "FK_DimResellerIDSalesActual" FOREIGN KEY REFERENCES DIM_RESELLER("DimResellerID") NOT NULL,
  "DimCustomerID" INTEGER CONSTRAINT "FK_DimCustomerIDSalesActual" FOREIGN KEY REFERENCES DIM_CUSTOMER("DimCustomerID") NOT NULL,
  "DimChannelID" INTEGER CONSTRAINT "FK_DimChannelIDSalesActual" FOREIGN KEY REFERENCES DIM_CHANNEL("DimChannelID") NOT NULL,
  "DimSaleDateID" NUMBER(9,0) CONSTRAINT "FK_DATE_PKEYSalesActual" FOREIGN KEY REFERENCES DIM_DATE("DATE_PKEY") NOT NULL,
  "DimLocationID" INTEGER CONSTRAINT "FK_DimLocationIDSalesActual" FOREIGN KEY REFERENCES DIM_LOCATION("DimLocationID") NOT NULL,
  "SourceSalesHeaderID" INTEGER,
  "SourcesSalesDetailID" INTEGER, 
  "SaleAmount" FLOAT,
  "SaleQuantity" INTEGER,
  "SaleUnitPrice" FLOAT,
  "SaleExtendedCost" FLOAT,
  "SaleTotalProfit" FLOAT
);



CREATE OR REPLACE TABLE IMT577_DW_RAKSHITHA_KN.PUBLIC.FACT_SRCSALESTARGET(
  "DimStoreID" INTEGER CONSTRAINT "FK_DimStoreIDSalesTarget" FOREIGN KEY REFERENCES DIM_STORE("DimStoreID") NOT NULL,
  "DimResellerID" INTEGER CONSTRAINT "FK_DimResellerIDSalesTarget" FOREIGN KEY REFERENCES DIM_RESELLER("DimResellerID") NOT NULL,
  "DimChannelID" INTEGER CONSTRAINT "FK_DimChannelIDSalesTarget" FOREIGN KEY REFERENCES DIM_CHANNEL("DimChannelID") NOT NULL,
  "DimTargetDateID" NUMBER(9,0) CONSTRAINT "FK_DATE_PKEYSalesTarget" FOREIGN KEY REFERENCES DIM_DATE("DATE_PKEY") NOT NULL,
  "SalesTargetAmount" FLOAT
);


CREATE OR REPLACE TABLE IMT577_DW_RAKSHITHA_KN.PUBLIC.FACT_PRODUCTSALESTARGET(
  "DimProductID" INTEGER CONSTRAINT "FK_DimProductIDProductTarget" FOREIGN KEY REFERENCES DIM_PRODUCT("DimProductID") NOT NULL,
  "DimTargetDateID" NUMBER(9,0) CONSTRAINT "FK_DATE_PKEYProductTarget" FOREIGN KEY REFERENCES DIM_DATE("DATE_PKEY") NOT NULL,
  "ProductTargetSalesQuanity" INTEGER
);


































