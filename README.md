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
- Incorporated Slowly Changing Dimensions (SCD) for DimCustomer and DimProduct to track historical changes in dimension attributes.

Data Visualization:

- Integrated Power BI with the data warehouse to create interactive and real-time reports and dashboards.

# Tools

- SQL Server 
- SSIS
- PowerBI

# Star Schema

![Diagram](https://github.com/user-attachments/assets/e5fde3b6-ea8d-4467-bf8e-5baf53b75192)

# DimCustomer package

![DimCustomer](https://github.com/user-attachments/assets/2ab373a0-5dc8-4686-9890-deb573a6dd05)

# DimProduct package

![DimProduct](https://github.com/user-attachments/assets/9ce217cb-2efd-4c46-a7a1-fbff24605ab5)

# DimTerritory package

![DimTerritory](https://github.com/user-attachments/assets/aedfc116-a365-439c-965b-3443606e144b)

# DimDate package.

![DimDate](https://github.com/user-attachments/assets/7aa4a825-87ad-42fa-849b-bdd7ebe76205)

# FactSales package

![FactSales](https://github.com/user-attachments/assets/00e43043-7086-42b2-97d8-a844759eb5c8)

# Dashboard

![Dashboard](https://github.com/user-attachments/assets/9d94f544-8619-4789-a2fe-4d9d13bca3f6)

