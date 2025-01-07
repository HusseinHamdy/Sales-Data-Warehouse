# Sales-Data-Warehouse

# Overview
The goal of this project is desig and implement a Sales Data Warehouse using SSIS , SQL Server and Power BI to enable data-driven decision making.
This centralized repository will allow for comprehensive reporting, trend analysis, and data-driven decision-making for sales teams, business analysts, and management.

# Key Features

Data Source:

Restored AdventureWorks2016 as a source database into SQL Server. 

Data warehouse Design:

- Created a star schema with Fact (FactSales) and Dimension tables (DimCustomer , DimProduct , DimTerritory , DimDate).

ETL Processes: 

- Implemented SSIS packages to extract, transform, and load data to data warehouse.
- Incorporated Slowly Changing Dimensions (SCD) to track historical changes in dimension attributes.

Data Visualization:

- Integrated Power BI with the data warehouse to create interactive and real-time reports and dashboards.

# Tools

- SQL Server 
- SSIS
- PowerBI

# Star Schema

![Diagram](https://github.com/user-attachments/assets/e5fde3b6-ea8d-4467-bf8e-5baf53b75192)

