# Project Wiki (Quick)

## What this project is

A small data-engineering style SQL Server project with:

- **Staging DB**: `stg_retail_sales` (raw/landing area)
- **DWH DB**: `dwh_retail_sales` (dimensional model)

The raw input file lives at `rawData/pcData.csv`.

## Intended pipeline

1) **Create databases**

- Script: `01_createDb.sql`
- Output: `stg_retail_sales`, `dwh_retail_sales`

2) **Create warehouse tables**

- Script: `02_createTables.sql`
- Output (in `dwh_retail_sales`): dimension tables like `dbo.Dim_Continent`, `dbo.Dim_Customer`, etc.

3) **Load + transform**

- Script: `03_loadData.sql`
- Intended responsibilities:
  - Create a staging table (example: `stg_retail_sales.dbo.pc_data`)
  - Load `rawData/pcData.csv` into that table
  - Insert distinct values into DWH dimensions
  - (Optional) create and load a fact table

4) **Exploration (optional)**

- Script: `04_edaScripts.sql`
- Purpose: quick SELECTs for distinct/source values.
- Important: it currently references databases like `[computer_staging]`. Update those names to match your staging DB (`stg_retail_sales`) once you build your staging tables.

## Suggested next improvements

- Implement `03_loadData.sql` (CSV load + DWH inserts)
- Add a `05_createFactTables.sql` once your fact design is finalized
- Add constraints + indexes in `02_createTables.sql` after the model stabilizes
