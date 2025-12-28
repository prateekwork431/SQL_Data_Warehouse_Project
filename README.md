/*
___________________________________
CREATE DATABASE AND SCHEMA
___________________________________
SCRIPT PURPOSE:
  This script creates a new Database called 'Warehouse' after checking if it already exists.
  If the Database already exists in that name, it will drop and recreate it 
  Additionally, the script creates 3 schemas within this database named 'Bronze', 'Silver', and Gold

WARNING:
  The script will drop the entire 'Warehouse' Database if it already exists.
  
*/

USE master
GO

--DROP AND CREATE WAREHOUSE DATABASE
USE master;
GO

DROP DATABASE IF EXISTS Warehouse;
GO

CREATE DATABASE Warehouse;
GO
-- CREATE CHEMAs
USE Warehouse;
GO

CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
