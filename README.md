# Aphelele Data Engineering Project

This repo contains a simple SQL Server staging + data warehouse setup for a PC sales dataset.

## Folder structure

- `rawData/pcData.csv` — the raw source dataset
- SQL scripts (run in order):
	1. `01_createDb.sql`
	2. `02_createTables.sql`
	3. `03_loadData.sql`
	4. `04_edaScripts.sql` (optional / exploration)

## Prerequisites

- Microsoft SQL Server (and optionally SSMS / Azure Data Studio)

## How to run (recommended order)

1) Run `01_createDb.sql`

- Creates:
	- `stg_retail_sales` (staging)
	- `dwh_retail_sales` (data warehouse)

2) Run `02_createTables.sql`

- Creates the DWH dimension tables in `dwh_retail_sales`.

3) Run `03_loadData.sql`

- Intended to load `rawData/pcData.csv` into staging and then populate the DWH.
- Currently a placeholder (you can implement a `BULK INSERT`/`OPENROWSET` load next).

4) (Optional) Run `04_edaScripts.sql`

- Contains exploratory queries for distinct/source values.
- Update the referenced database names (e.g. `[computer_staging]`) to match your staging DB/table names.

## Notes

- Scripts are numbered so you can run them top-to-bottom without guessing.
- See `WIKI.md` for a slightly longer explanation of the intended pipeline.
