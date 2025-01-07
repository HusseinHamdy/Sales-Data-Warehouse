USE [SalesDW]
GO

/****** Object:  Table [dbo].[DimProduct]    Script Date: 1/1/2025 6:24:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
	[ProductKey] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[Product_Description] [nvarchar](400) NULL,
	[Product_Subcategory] [nvarchar](50) NULL,
	[Product_Category] [nvarchar](50) NULL,
	[Color] [nvarchar](20) NULL,
	[Model_Name] [nvarchar](50) NULL,
	[Standard_Cost] [money] NULL,
	[Source_System_Code] [tinyint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Is_Current] [tinyint] NOT NULL
 CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
(
	[ProductKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimProduct] ADD  CONSTRAINT [DF_DimProduct_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO

ALTER TABLE [dbo].[DimProduct] ADD  CONSTRAINT [DF_DimProduct_Is_Current]  DEFAULT ((1)) FOR [Is_Current]
GO

