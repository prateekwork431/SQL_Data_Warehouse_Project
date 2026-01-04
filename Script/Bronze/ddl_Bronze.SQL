/*
================================
DDL Script: Create Bronze Tables
================================

=============================================================================
Script Purpose:
This script creates tables in the 'bronze' schema, dropping existing tables
if they already exist.
Run this script to re-define the DDL structure of 'bronze' Tables
=============================================================================
*/

--CREATING TABLES AND DROPPING THEM IF THEY ALREADY EXIST

-- CREATING crm_prd_info TABLE
if object_id ('bronze.crm_prd_info', 'U') is not null
drop table bronze.crm_prd_info
GO

Create table bronze.crm_prd_info(
	prd_id int,
	prd_key nvarchar(50),
	prd_nm nvarchar(50),
	prd_cost int,
	prd_line nvarchar(50),
	prd_start_dt date,
	prd_end_dt date
);
-- CREATING crm_sales_details TABLE
if object_id ('bronze.crm_sales_details', 'U') is not null
drop table bronze.crm_sales_details

Create table bronze.crm_sales_details(
sls_ord_num nvarchar(50),
sls_prd_key nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int
);


-- CREATING erp_cust_az12 TABLE
if object_id ('bronze.erp_cust_az12', 'U') is not null
drop table bronze.erp_cust_az12

Create table bronze.erp_cust_az12(
cid nvarchar(50),
bdate nvarchar(50),
gen nvarchar(50)
);

-- CREATING erp_loc_a101 TABLE
if object_id ('bronze.erp_loc_a101', 'U') is not null
drop table bronze.erp_loc_a101

Create table bronze.erp_loc_a101(
cid nvarchar(50),
cntry nvarchar(50)
);

-- CREATING erp_px_cat_g1v2 TABLE
if object_id ('bronze.erp_px_cat_g1v2', 'U') is not null
drop table bronze.erp_px_cat_g1v2

Create table bronze.erp_px_cat_g1v2(
id nvarchar(50),
cat nvarchar(50),
subcat nvarchar(50),
maintainance nvarchar(50)
);
