-- CREATE VIEW SCRIPT FOR VIEW_FACT_PRODUCTSALESTARGET
CREATE OR REPLACE
SECURE VIEW VIEW_FACT_PRODUCTSALESTARGET AS
SELECT
	"DimProductID",
	"DimTargetDateID",
	"ProductTargetSalesQuanity"
FROM
	FACT_PRODUCTSALESTARGET;

-- CREATE VIEW SCRIPT FOR VIEW_FACT_SALESACTUAL
CREATE OR REPLACE
SECURE VIEW VIEW_FACT_SALESACTUAL AS
SELECT
	"DimProductID",
	"DimStoreID",
	"DimResellerID",
	"DimCustomerID",
	"DimChannelID",
	"DimSaleDateID",
	"DimLocationID",
	"SourceSalesHeaderID",
	"SourcesSalesDetailID",
	"SaleAmount",
	"SaleQuantity",
	"SaleUnitPrice",
	"SaleExtendedCost",
	"SaleTotalProfit"
FROM
	FACT_SALESACTUAL ;

-- CREATE VIEW SCRIPT FOR VIEW_FACT_SRCSALESTARGET
CREATE OR REPLACE
SECURE VIEW VIEW_FACT_SRCSALESTARGET AS
SELECT
	"DimStoreID",
	"DimResellerID",
	"DimChannelID",
	"DimTargetDateID",
	"SalesTargetAmount"
FROM
	FACT_SRCSALESTARGET ;

-- CREATE VIEW SCRIPT FOR VIEW_DIM_CUSTOMER
CREATE OR REPLACE
SECURE VIEW VIEW_DIM_CUSTOMER AS
SELECT
	"DimCustomerID",
	"DimLocationID",
	"SourceCustomerID",
	"FullName",
	"FirstName",
	"LastName",
	"Gender",
	"EmailAddress",
	"PhoneNumber"
FROM
	DIM_CUSTOMER ;

-- CREATE VIEW SCRIPT FOR VIEW_DIM_DATE
CREATE OR REPLACE
SECURE VIEW VIEW_DIM_DATE AS
SELECT
	DATE_PKEY,
	"DATE",
	FULL_DATE_DESC,
	DAY_NUM_IN_WEEK,
	DAY_NUM_IN_MONTH,
	DAY_NUM_IN_YEAR,
	DAY_NAME,
	DAY_ABBREV,
	WEEKDAY_IND,
	US_HOLIDAY_IND,
	"_HOLIDAY_IND",
	MONTH_END_IND,
	WEEK_BEGIN_DATE_NKEY,
	WEEK_BEGIN_DATE,
	WEEK_END_DATE_NKEY,
	WEEK_END_DATE,
	WEEK_NUM_IN_YEAR,
	MONTH_NAME,
	MONTH_ABBREV,
	MONTH_NUM_IN_YEAR,
	YEARMONTH,
	QUARTER,
	YEARQUARTER,
	"YEAR",
	FISCAL_WEEK_NUM,
	FISCAL_MONTH_NUM,
	FISCAL_YEARMONTH,
	FISCAL_QUARTER,
	FISCAL_YEARQUARTER,
	FISCAL_HALFYEAR,
	FISCAL_YEAR,
	SQL_TIMESTAMP,
	CURRENT_ROW_IND,
	EFFECTIVE_DATE,
	EXPIRATION_DATE
FROM
	DIM_DATE ;

-- CREATE VIEW SCRIPT FOR VIEW_DIM_LOCATION
CREATE OR REPLACE
SECURE VIEW VIEW_DIM_LOCATION AS
SELECT
	"DimLocationID",
	"SourceLocationID",
	"PostalCode",
	"Address",
	"City",
	"Region",
	"Country"
FROM
	DIM_LOCATION ;

-- CREATE VIEW SCRIPT FOR VIEW_DIM_PRODUCT
CREATE OR REPLACE
SECURE VIEW VIEW_DIM_PRODUCT AS
SELECT
	"DimProductID",
	"SourceProductID",
	"SourceProductTypeID",
	"SourceProductCategoryID",
	"ProductName",
	"ProductType",
	"ProductCategory",
	"ProductRetailPrice",
	"ProductWholesalePrice",
	"ProductCost",
	"ProductRetailProfit",
	"ProductWholesaleUnitProfit",
	"ProductProfitMarginUnitPercent"
FROM
	DIM_PRODUCT ;

-- CREATE VIEW SCRIPT FOR VIEW_DIM_CHANNEL
CREATE OR REPLACE
SECURE VIEW VIEW_DIM_CHANNEL AS
SELECT
	"DimChannelID",
	"SourceChannelID",
	"SourceChannelCategoryID",
	"ChannelName",
	"ChannelCategory"
FROM
	DIM_CHANNEL ;

-- CREATE VIEW SCRIPT FOR VIEW_DIM_RESELLER
CREATE OR REPLACE
SECURE VIEW VIEW_DIM_RESELLER AS
SELECT
	"DimResellerID",
	"DimLocationID",
	"SourceResellerID",
	"ResellerName",
	"ContactName",
	"PhoneNumber",
	"Email"
FROM
	DIM_RESELLER ;

-- CREATE VIEW SCRIPT FOR VIEW_DIM_STORE
CREATE OR REPLACE
SECURE VIEW VIEW_DIM_STORE AS
SELECT
	"DimStoreID",
	"DimLocationID",
	"SourceStoreID",
	"StoreNumber",
	"StoreManager"
FROM
	DIM_STORE ;
