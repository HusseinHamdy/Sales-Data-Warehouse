USE [SalesDW]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 12/31/2024 9:56:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[Phone] [nvarchar](25) NULL,
	[Source_sys_code] [tinyint] NOT NULL,

	--SCD
	[Start_date] [datetime] NOT NULL,
	[End_date] [datetime] NULL,
	[Is_current] [tinyint] NOT NULL,
 CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimCustomer] ADD  CONSTRAINT [DF_DimCustomer_Start_date]  DEFAULT (getdate()) FOR [Start_date]
GO

ALTER TABLE [dbo].[DimCustomer] ADD  CONSTRAINT [DF_DimCustomer_Is_current]  DEFAULT ((1)) FOR [Is_current]
GO

