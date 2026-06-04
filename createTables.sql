/*
 =========================================================
 DIM_CONTINENT
 =========================================================
 */
CREATE TABLE dbo.Dim_Continent (
    Continent_ID INT IDENTITY(1, 1) PRIMARY KEY,
    Continent_Name VARCHAR(100)
);

/*
 =========================================================
 DIM_COUNTRY_STATE
 =========================================================
 */
CREATE TABLE dbo.Dim_Country_State (
    Country_State_ID INT IDENTITY(1, 1) PRIMARY KEY,
    Country_State_Name VARCHAR(200),
    Continent_ID INT
);

/*
 =========================================================
 DIM_PROVINCE_CITY
 =========================================================
 */
CREATE TABLE dbo.Dim_Province_City (
    Province_City_ID INT IDENTITY(1, 1) PRIMARY KEY,
    Province_City_Name VARCHAR(200),
    Country_State_ID INT
);

/*
 =========================================================
 DIM_SHOP
 =========================================================
 */
CREATE TABLE dbo.Dim_Shop (
    Shop_ID INT IDENTITY(1, 1) PRIMARY KEY,
    Shop_Name VARCHAR(255)
);

/*
 =========================================================
 DIM_PC_MAKE
 =========================================================
 */
CREATE TABLE dbo.Dim_PC_Make (
    PC_Make_ID INT IDENTITY(1, 1) PRIMARY KEY,
    PC_Make_Name VARCHAR(100)
);

/*
 =========================================================
 DIM_PC_TYPE
 =========================================================
 */
CREATE TABLE dbo.Dim_PC_Type (
    PC_Type_ID INT IDENTITY(1, 1) PRIMARY KEY,
    PC_Model VARCHAR(200),
    RAM VARCHAR(50),
    Storage_Capacity VARCHAR(50),
    Storage_Type VARCHAR(50),
    PC_Make_ID INT
);

/*
 =========================================================
 DIM_CUSTOMER
 =========================================================
 */
CREATE TABLE dbo.Dim_Customer (
    Customer_ID INT IDENTITY(1, 1) PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Customer_Surname VARCHAR(100),
    Customer_Contact_Number VARCHAR(50),
    Customer_Email_Address VARCHAR(255)
);

/*
 =========================================================
 DIM_SALESPERSON
 =========================================================
 */
CREATE TABLE dbo.Dim_SalesPerson (
    SalesPerson_ID INT IDENTITY(1, 1) PRIMARY KEY,
    SalesPerson_Name VARCHAR(255)
);

/*
 =========================================================
 DIM_SALES_DEPARTMENT
 =========================================================
 */
CREATE TABLE dbo.Dim_Sales_Department (
    Department_ID INT IDENTITY(1, 1) PRIMARY KEY,
    Department_Name VARCHAR(255)
);

/*
 =========================================================
 DIM_DATE
 =========================================================
 */
CREATE TABLE dbo.Dim_Date (
    Date_ID INT IDENTITY(1, 1) PRIMARY KEY,
    Purchase_Date DATE,
    Ship_Date DATE
);

/*
 =========================================================
 DIM_CHANNEL
 =========================================================
 */
CREATE TABLE dbo.Dim_Channel (
    Channel_ID INT IDENTITY(1, 1) PRIMARY KEY,
    Channel_Name VARCHAR(100)
);

/*
 =========================================================
 DIM_PRIORITY
 =========================================================
 */
CREATE TABLE dbo.Dim_Priority (
    Priority_ID INT IDENTITY(1, 1) PRIMARY KEY,
    Priority_Name VARCHAR(100)
);