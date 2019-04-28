USE [TextileResearchDevelopment]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04/28/2019 20:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[Fabric] [tinyint] NULL,
	[Knitting] [tinyint] NULL,
	[Dyeing] [tinyint] NULL,
	[Slitting] [tinyint] NULL,
	[Stenter] [tinyint] NULL,
	[AopPrint] [tinyint] NULL,
	[TestReport] [tinyint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 04/28/2019 20:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fabric](
	[Id] [int] NOT NULL,
	[BuyerName] [varchar](50) NOT NULL,
	[FabricType] [varchar](50) NOT NULL,
	[OrderNo] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Note] [varchar](50) NULL,
	[Width] [varchar](50) NOT NULL,
	[GSM] [int] NOT NULL,
	[LabdipStatus] [varchar](50) NOT NULL,
	[ChallanNo] [varchar](50) NOT NULL,
	[DeliveryQty] [decimal](18, 2) NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[Barcode] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
