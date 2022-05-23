-- VIEW FOR STORE LOCATION DETAILS: 
CREATE OR REPLACE SECURE VIEW VIEW_STORE_LOCATION AS 
SELECT
	ds."SourceStoreID" ,
	ds."StoreNumber" ,
	dl."Address" ,
	dl."Region"
FROM
	DIM_STORE ds,
	DIM_LOCATION dl
WHERE
	ds."DimLocationID" = dl."DimLocationID"


 --VIEW FOR GETTING STORE ANNUAL SALES TARGET BY AMOUNT 
CREATE OR REPLACE
SECURE VIEW VIEW_STORE_SALES_TARGET AS
SELECT
	ds."SourceStoreID" ,
	ds."StoreNumber" ,
	dc."SourceChannelID" ,
	dc."ChannelName" ,
	dd."YEAR" ,
	SUM(fsst."SalesTargetAmount") AS "StoreSalesTargetAmount"
FROM
	FACT_SRCSALESTARGET fsst,
	DIM_STORE ds,
	DIM_CHANNEL dc,
	DIM_DATE dd
WHERE
	fsst."DimStoreID" = ds."DimStoreID"
	AND dc."DimChannelID" = fsst."DimChannelID"
	AND dd.DATE_PKEY = fsst."DimTargetDateID"
GROUP BY
	ds."SourceStoreID" ,
	ds."StoreNumber" ,
	dc."SourceChannelID" ,
	dc."ChannelName" ,
	dd."YEAR";


-- VIEW FOR YEARLY SALES DATA  
CREATE OR REPLACE
SECURE VIEW VIEW_STORE_SALES_DATA_YEARLY AS
SELECT
	dp."SourceProductID" ,
	dp."ProductName",
	dp."SourceProductCategoryID" ,
	dp."ProductCategory" ,
	ds."SourceStoreID" ,
	ds."StoreNumber" ,
	dc."SourceChannelID" ,
	dc."ChannelName" ,
	dd.YEAR,
	SUM(fsa."SaleQuantity") AS "TotalSaleQuantity",
	SUM(fsa."SaleAmount") AS "TotalSaleAmount",
	SUM(fsa."SaleExtendedCost") AS "TotalSaleExtendedCost",
	SUM(fsa."SaleTotalProfit") AS "TotalSaleProfit"
FROM
	FACT_SALESACTUAL fsa,
	DIM_STORE ds,
	DIM_DATE dd,
	DIM_PRODUCT dp,
	DIM_CHANNEL dc
WHERE
	fsa."DimStoreID" = ds."DimStoreID"
	AND fsa."DimSaleDateID" = dd.DATE_PKEY
	AND dp."DimProductID" = fsa."DimProductID"
	AND dc."DimChannelID" = fsa."DimChannelID"
GROUP BY
	dp."SourceProductID" ,
	dp."ProductName",
	dp."SourceProductCategoryID" ,
	dp."ProductCategory" ,
	ds."SourceStoreID" ,
	ds."StoreNumber" ,
	dc."SourceChannelID" ,
	dc."ChannelName" ,
	dd.YEAR;


-- VIEW FOR DAILY SALES DATA 
CREATE OR REPLACE
SECURE VIEW VIEW_STORE_SALES_DAILY AS
SELECT
	dp."SourceProductID" ,
	dp."ProductName",
	dp."SourceProductCategoryID" ,
	dp."ProductCategory" ,
	ds."SourceStoreID" ,
	ds."StoreNumber" ,
	dc."SourceChannelID" ,
	dc."ChannelName" ,
	dd."DATE",
	dd.FULL_DATE_DESC,
	dd.DAY_NUM_IN_WEEK,
	dd.DAY_NUM_IN_MONTH,
	dd.DAY_NUM_IN_YEAR,
	dd.DAY_NAME,
	dd.DAY_ABBREV,
	dd.MONTH_NAME,
	dd.MONTH_ABBREV,
	dd.MONTH_NUM_IN_YEAR,
	dd.YEARMONTH,
	dd.QUARTER,
	dd.YEARQUARTER,
	dd."YEAR",
	dd.FISCAL_WEEK_NUM,
	dd.FISCAL_MONTH_NUM,
	dd.FISCAL_YEARMONTH,
	dd.FISCAL_QUARTER,
	dd.FISCAL_YEARQUARTER,
	dd.FISCAL_HALFYEAR,
	dd.FISCAL_YEAR ,
	SUM(fsa."SaleQuantity") AS "TotalSaleQuantity",
	SUM(fsa."SaleAmount") AS "TotalSaleAmount",
	SUM(fsa."SaleExtendedCost") AS "TotalSaleExtendedCost",
	SUM(fsa."SaleTotalProfit") AS "TotalSaleProfit"
FROM
	FACT_SALESACTUAL fsa,
	DIM_STORE ds,
	DIM_DATE dd,
	DIM_PRODUCT dp,
	DIM_CHANNEL dc
WHERE
	fsa."DimStoreID" = ds."DimStoreID"
	AND fsa."DimSaleDateID" = dd.DATE_PKEY
	AND dp."DimProductID" = fsa."DimProductID"
	AND dc."DimChannelID" = fsa."DimChannelID"
GROUP BY
	dp."SourceProductID" ,
	dp."ProductName",
	dp."SourceProductCategoryID" ,
	dp."ProductCategory" ,
	ds."SourceStoreID" ,
	ds."StoreNumber" ,
	dc."SourceChannelID" ,
	dc."ChannelName" ,
	dd."DATE",
	dd.FULL_DATE_DESC,
	dd.DAY_NUM_IN_WEEK,
	dd.DAY_NUM_IN_MONTH,
	dd.DAY_NUM_IN_YEAR,
	dd.DAY_NAME,
	dd.DAY_ABBREV,
	dd.MONTH_NAME,
	dd.MONTH_ABBREV,
	dd.MONTH_NUM_IN_YEAR,
	dd.YEARMONTH,
	dd.QUARTER,
	dd.YEARQUARTER,
	dd."YEAR",
	dd.FISCAL_WEEK_NUM,
	dd.FISCAL_MONTH_NUM,
	dd.FISCAL_YEARMONTH,
	dd.FISCAL_QUARTER,
	dd.FISCAL_YEARQUARTER,
	dd.FISCAL_HALFYEAR,
	dd.FISCAL_YEAR;
