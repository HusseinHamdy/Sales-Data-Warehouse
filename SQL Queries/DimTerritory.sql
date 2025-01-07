USE [SalesDW]
GO

/****** Object:  Table [dbo].[DimTerritory]    Script Date: 12/31/2024 10:01:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimTerritory](
	[TerritoryKey] [int] IDENTITY(1,1) NOT NULL,
	[TerritoryID] [int] NOT NULL,
	[TerritoryName] [nvarchar](50) NULL,
	[Country] [nvarchar](200) NULL,
	[TerritoryGroup] [nvarchar](50) NULL,
	[Source_Sys_Code] [tinyint] NOT NULL,

	--SCD
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Is_Current] [tinyint] NOT NULL,
 CONSTRAINT [PK_Territory] PRIMARY KEY CLUSTERED 
(
	[TerritoryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimTerritory] ADD  CONSTRAINT [DF_Territory_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO

ALTER TABLE [dbo].[DimTerritory] ADD  CONSTRAINT [DF_Territory_Is_Current]  DEFAULT ((1)) FOR [Is_Current]
GO

