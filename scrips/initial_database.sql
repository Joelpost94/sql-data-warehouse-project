/*
================================================================
Create database and Schemas
================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' After checking if it already exists.
  IF the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
  within the database: 'Bronze', 'Silver', and 'Gold'.


WARNING!:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caustion 
  and ensure you have proper backups before running this script.
*/

-- Use the master database
USE master;
GO

-- DROP and recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- CREATE 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

-- Use the newly created DataWarehouse
USE DataWarehouse;
GO

-- Create schemas: bronze, silver, gold
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
