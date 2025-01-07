use master 
go 

if db_id('SalesDW') is not null
drop database SalesDW;

create database SalesDW
go