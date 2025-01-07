USE [SalesDW]
GO

/****** Object:  Table [dbo].[FactSales]    Script Date: 12/31/2024 10:01:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactSales](
	[ProductKey] [int] NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[TerritoryKey] [int] NOT NULL,
	[DateKey] [int] NOT NULL,
	[SalesOrderID] [nvarchar](50) NOT NULL,
	[LineNum] [int] NOT NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [money] NULL,
	[UnitCost] [money] NULL,
	[TaxAmount] [money] NULL,
	[Freight] [money] NULL,
	[ExtendedSales] [money] NULL,
	[ExtenedCost] [money] NULL,
	[Created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED 
(
	[SalesOrderID] ASC,
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactSales] ADD  CONSTRAINT [DF_FactSales_Created_at]  DEFAULT (getdate()) FOR [Created_at]
GO

ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_Date] FOREIGN KEY([DateKey])
REFERENCES [dbo].[Date] ([DateKey])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_Date]
GO

ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimCustomer] FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[DimCustomer] ([CustomerKey])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimCustomer]
GO

ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimProduct] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[DimProduct] ([ProductKey])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimProduct]
GO

ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimTerritory] FOREIGN KEY([TerritoryKey])
REFERENCES [dbo].[DimTerritory] ([TerritoryKey])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimTerritory]
GO

