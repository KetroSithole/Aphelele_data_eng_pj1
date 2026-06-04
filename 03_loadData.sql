/*
03_loadData.sql

Loads raw data into staging and (optionally) transforms/loads into the DWH.

Current status: placeholder script.
Next step: implement bulk load from rawData/pcData.csv into a staging table
in stg_retail_sales (for example dbo.pc_data), then populate DWH dims/facts.
*/

USE stg_retail_sales;
GO

-- TODO: implement data load