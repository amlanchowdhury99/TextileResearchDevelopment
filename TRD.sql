USE [TextileResearchDevelopment]
GO
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Dyeing_DyeingUnit]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Dyeing] DROP CONSTRAINT [FK_Dyeing_DyeingUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  ForeignKey [FK_Stenter_SoftenerUnit]    Script Date: 07/04/2019 06:35:47 ******/
ALTER TABLE [dbo].[Stenter] DROP CONSTRAINT [FK_Stenter_SoftenerUnit]
GO
/****** Object:  View [dbo].[ReportView]    Script Date: 07/04/2019 06:35:50 ******/
DROP VIEW [dbo].[ReportView]
GO
/****** Object:  View [dbo].[RemarksView]    Script Date: 07/04/2019 06:35:50 ******/
DROP VIEW [dbo].[RemarksView]
GO
/****** Object:  View [dbo].[TestView]    Script Date: 07/04/2019 06:35:50 ******/
DROP VIEW [dbo].[TestView]
GO
/****** Object:  View [dbo].[AopView]    Script Date: 07/04/2019 06:35:49 ******/
DROP VIEW [dbo].[AopView]
GO
/****** Object:  View [dbo].[StenterView]    Script Date: 07/04/2019 06:35:50 ******/
DROP VIEW [dbo].[StenterView]
GO
/****** Object:  View [dbo].[DyeingView]    Script Date: 07/04/2019 06:35:49 ******/
DROP VIEW [dbo].[DyeingView]
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 07/04/2019 06:35:49 ******/
DROP VIEW [dbo].[FabricView]
GO
/****** Object:  View [dbo].[KnitView]    Script Date: 07/04/2019 06:35:50 ******/
DROP VIEW [dbo].[KnitView]
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
DROP TABLE [dbo].[Fabric]
GO
/****** Object:  Table [dbo].[Dyeing]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Dyeing] DROP CONSTRAINT [FK_Dyeing_DyeingUnit]
GO
DROP TABLE [dbo].[Dyeing]
GO
/****** Object:  Table [dbo].[Aop]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
DROP TABLE [dbo].[Aop]
GO
/****** Object:  Table [dbo].[Stenter]    Script Date: 07/04/2019 06:35:47 ******/
ALTER TABLE [dbo].[Stenter] DROP CONSTRAINT [FK_Stenter_SoftenerUnit]
GO
DROP TABLE [dbo].[Stenter]
GO
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 07/04/2019 06:35:47 ******/
DROP TABLE [dbo].[SoftenerUnit]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 07/04/2019 06:35:48 ******/
DROP TABLE [dbo].[UserInfo]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 07/04/2019 06:35:48 ******/
DROP TABLE [dbo].[UserRole]
GO
/****** Object:  Table [dbo].[YarnCount]    Script Date: 07/04/2019 06:35:48 ******/
DROP TABLE [dbo].[YarnCount]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 07/04/2019 06:35:48 ******/
DROP TABLE [dbo].[Test]
GO
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 07/04/2019 06:35:46 ******/
DROP TABLE [dbo].[DyeingUnit]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 07/04/2019 06:35:46 ******/
DROP TABLE [dbo].[Buyer]
GO
/****** Object:  Table [dbo].[FabricType]    Script Date: 07/04/2019 06:35:46 ******/
DROP TABLE [dbo].[FabricType]
GO
/****** Object:  Table [dbo].[MachineUnit]    Script Date: 07/04/2019 06:35:47 ******/
DROP TABLE [dbo].[MachineUnit]
GO
/****** Object:  Table [dbo].[McBrand]    Script Date: 07/04/2019 06:35:47 ******/
DROP TABLE [dbo].[McBrand]
GO
/****** Object:  Table [dbo].[McDia]    Script Date: 07/04/2019 06:35:47 ******/
DROP TABLE [dbo].[McDia]
GO
/****** Object:  Table [dbo].[PrintUnit]    Script Date: 07/04/2019 06:35:47 ******/
DROP TABLE [dbo].[PrintUnit]
GO
/****** Object:  Table [dbo].[Remarks]    Script Date: 07/04/2019 06:35:47 ******/
DROP TABLE [dbo].[Remarks]
GO
/****** Object:  Table [dbo].[Knitting]    Script Date: 07/04/2019 06:35:46 ******/
DROP TABLE [dbo].[Knitting]
GO
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 07/04/2019 06:35:47 ******/
DROP TABLE [dbo].[KnitUnit]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 07/04/2019 06:35:47 ******/
DROP TABLE [dbo].[Report]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 07/04/2019 06:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabridID] [int] NOT NULL,
	[KnitID] [int] NOT NULL,
	[DyeingID] [int] NOT NULL,
	[StenterID] [int] NOT NULL,
	[AOPID] [int] NOT NULL,
	[TesReportID] [int] NOT NULL,
	[RemarksID] [int] NOT NULL,
	[CreateTime] [date] NULL,
	[CreateBy] [int] NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 07/04/2019 06:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KnitUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KnitUnit] [varchar](50) NOT NULL,
 CONSTRAINT [PK_KnitUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KnitUnit] ON
INSERT [dbo].[KnitUnit] ([Id], [KnitUnit]) VALUES (1, N'JAL')
INSERT [dbo].[KnitUnit] ([Id], [KnitUnit]) VALUES (2, N'KG')
INSERT [dbo].[KnitUnit] ([Id], [KnitUnit]) VALUES (4, N'LAL')
SET IDENTITY_INSERT [dbo].[KnitUnit] OFF
/****** Object:  Table [dbo].[Knitting]    Script Date: 07/04/2019 06:35:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Knitting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[DiaGaugeID] [int] NOT NULL,
	[YarnCountID] [int] NOT NULL,
	[YarnBrand] [varchar](50) NOT NULL,
	[YarnLot] [varchar](50) NOT NULL,
	[StitchLength] [decimal](18, 2) NOT NULL,
	[KnitUnitID] [int] NOT NULL,
	[MCNO] [int] NOT NULL,
	[MCRPM] [int] NOT NULL,
	[GreyWidth] [decimal](18, 2) NOT NULL,
	[GreyGSM] [decimal](18, 2) NOT NULL,
	[TumbleWidth] [decimal](18, 2) NOT NULL,
	[TumbleGSM] [decimal](18, 2) NOT NULL,
	[McBrandID] [int] NOT NULL,
	[ApprovedStatus] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[BarCode] [bigint] NOT NULL,
	[ReviseStatus] [int] NOT NULL,
	[MCNOID] [int] NULL,
 CONSTRAINT [PK_Knitting_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Knitting] ON
INSERT [dbo].[Knitting] ([Id], [FabricID], [DiaGaugeID], [YarnCountID], [YarnBrand], [YarnLot], [StitchLength], [KnitUnitID], [MCNO], [MCRPM], [GreyWidth], [GreyGSM], [TumbleWidth], [TumbleGSM], [McBrandID], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [MCNOID]) VALUES (25, 17, 1, 1, N'WEDE', N'EWE', CAST(0.00 AS Decimal(18, 2)), 2, 12, 100, CAST(23.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(456.00 AS Decimal(18, 2)), 1, 1, CAST(0x002D247F018B3BB0 AS DateTime), 3, NULL, 0, CAST(0x0000AA6E00F099C0 AS DateTime), 3, 20196161, 1, NULL)
INSERT [dbo].[Knitting] ([Id], [FabricID], [DiaGaugeID], [YarnCountID], [YarnBrand], [YarnLot], [StitchLength], [KnitUnitID], [MCNO], [MCRPM], [GreyWidth], [GreyGSM], [TumbleWidth], [TumbleGSM], [McBrandID], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [MCNOID]) VALUES (34, 18, 2, 2, N'WEDE', N'EWE', CAST(1.00 AS Decimal(18, 2)), 1, 1, 12, CAST(1.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 4, 0, CAST(0x0000AA7E011D5EB0 AS DateTime), 3, CAST(0x0000AA7E011DA500 AS DateTime), 3, NULL, 0, 2019721, 0, NULL)
INSERT [dbo].[Knitting] ([Id], [FabricID], [DiaGaugeID], [YarnCountID], [YarnBrand], [YarnLot], [StitchLength], [KnitUnitID], [MCNO], [MCRPM], [GreyWidth], [GreyGSM], [TumbleWidth], [TumbleGSM], [McBrandID], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [MCNOID]) VALUES (35, 18, 2, 2, N'WEDE', N'EWE', CAST(1.00 AS Decimal(18, 2)), 1, 1, 12, CAST(1.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 4, 1, CAST(0x0000AA7E011DEB50 AS DateTime), 3, CAST(0x0000AA7E011E31A0 AS DateTime), 3, CAST(0x0000AA7E011E77F0 AS DateTime), 3, 2019721, 1, NULL)
SET IDENTITY_INSERT [dbo].[Knitting] OFF
/****** Object:  Table [dbo].[Remarks]    Script Date: 07/04/2019 06:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Remarks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestReportID] [int] NOT NULL,
	[BarCode] [bigint] NOT NULL,
	[ReviseStatus] [int] NOT NULL,
	[Remarks] [varchar](50) NOT NULL,
	[ApprovedStatus] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
 CONSTRAINT [PK_Remarks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Remarks] ON
INSERT [dbo].[Remarks] ([Id], [TestReportID], [BarCode], [ReviseStatus], [Remarks], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (4, 14, 20196161, 1, N'dasd', 1, CAST(0x0000AA7E00A36BF0 AS DateTime), 3, NULL, 0, CAST(0x0000AA7E00A59E70 AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Remarks] OFF
/****** Object:  Table [dbo].[PrintUnit]    Script Date: 07/04/2019 06:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrintName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PrintUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PrintUnit] ON
INSERT [dbo].[PrintUnit] ([Id], [PrintName]) VALUES (1, N'Rubber')
INSERT [dbo].[PrintUnit] ([Id], [PrintName]) VALUES (2, N'Suppliment')
SET IDENTITY_INSERT [dbo].[PrintUnit] OFF
/****** Object:  Table [dbo].[McDia]    Script Date: 07/04/2019 06:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[McDia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[McDiaGauge] [varchar](50) NOT NULL,
	[MCNO] [int] NULL,
	[McBrand] [varchar](50) NULL,
 CONSTRAINT [PK_McDiaGuage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[McDia] ON
INSERT [dbo].[McDia] ([Id], [McDiaGauge], [MCNO], [McBrand]) VALUES (1, N'36*24', 1, N'egerg')
INSERT [dbo].[McDia] ([Id], [McDiaGauge], [MCNO], [McBrand]) VALUES (2, N'24*36', 2, N'dfas')
INSERT [dbo].[McDia] ([Id], [McDiaGauge], [MCNO], [McBrand]) VALUES (7, N'22*12', 3, N'awdawd')
INSERT [dbo].[McDia] ([Id], [McDiaGauge], [MCNO], [McBrand]) VALUES (8, N'23*44', 22, N'wdawd')
SET IDENTITY_INSERT [dbo].[McDia] OFF
/****** Object:  Table [dbo].[McBrand]    Script Date: 07/04/2019 06:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[McBrand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[McBrand] [varchar](50) NOT NULL,
 CONSTRAINT [PK_McBrand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[McBrand] ON
INSERT [dbo].[McBrand] ([Id], [McBrand]) VALUES (1, N'MSML')
INSERT [dbo].[McBrand] ([Id], [McBrand]) VALUES (2, N'KSML')
INSERT [dbo].[McBrand] ([Id], [McBrand]) VALUES (4, N'PSML')
SET IDENTITY_INSERT [dbo].[McBrand] OFF
/****** Object:  Table [dbo].[MachineUnit]    Script Date: 07/04/2019 06:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MachineUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MachineName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MachineUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MachineUnit] ON
INSERT [dbo].[MachineUnit] ([Id], [MachineName]) VALUES (1, N'A')
INSERT [dbo].[MachineUnit] ([Id], [MachineName]) VALUES (2, N'B')
SET IDENTITY_INSERT [dbo].[MachineUnit] OFF
/****** Object:  Table [dbo].[FabricType]    Script Date: 07/04/2019 06:35:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FabricType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FabricType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FabricType] ON
INSERT [dbo].[FabricType] ([Id], [FabricName]) VALUES (1, N'Cotton')
INSERT [dbo].[FabricType] ([Id], [FabricName]) VALUES (2, N'Polyster')
INSERT [dbo].[FabricType] ([Id], [FabricName]) VALUES (3, N'Synthetic')
SET IDENTITY_INSERT [dbo].[FabricType] OFF
/****** Object:  Table [dbo].[Buyer]    Script Date: 07/04/2019 06:35:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Buyer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BuyerName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Buyer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Buyer] ON
INSERT [dbo].[Buyer] ([Id], [BuyerName]) VALUES (1, N'URMI')
INSERT [dbo].[Buyer] ([Id], [BuyerName]) VALUES (2, N'FTML')
INSERT [dbo].[Buyer] ([Id], [BuyerName]) VALUES (3, N'UHM')
SET IDENTITY_INSERT [dbo].[Buyer] OFF
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 07/04/2019 06:35:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DyeingUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DyeingUnitName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DyeingUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DyeingUnit] ON
INSERT [dbo].[DyeingUnit] ([Id], [DyeingUnitName]) VALUES (1, N'CCL')
INSERT [dbo].[DyeingUnit] ([Id], [DyeingUnitName]) VALUES (2, N'BBL')
INSERT [dbo].[DyeingUnit] ([Id], [DyeingUnitName]) VALUES (4, N'AAL')
SET IDENTITY_INSERT [dbo].[DyeingUnit] OFF
/****** Object:  Table [dbo].[Test]    Script Date: 07/04/2019 06:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AOPID] [int] NOT NULL,
	[FinalWidth] [decimal](18, 2) NOT NULL,
	[FinalGSM] [decimal](18, 2) NOT NULL,
	[TumbleLength] [decimal](18, 2) NOT NULL,
	[TumbleWidth] [decimal](18, 2) NOT NULL,
	[TumbleSP] [decimal](18, 2) NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[BarCode] [bigint] NOT NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Test] ON
INSERT [dbo].[Test] ([Id], [AOPID], [FinalWidth], [FinalGSM], [TumbleLength], [TumbleWidth], [TumbleSP], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (14, 4, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(121.00 AS Decimal(18, 2)), CAST(121.00 AS Decimal(18, 2)), CAST(0x0000AA7D01567FB0 AS DateTime), 3, CAST(0x0000AA7D015A11C0 AS DateTime), 3, CAST(0x0000AA7D015A11C0 AS DateTime), 3, 20196161, 1, 1)
INSERT [dbo].[Test] ([Id], [AOPID], [FinalWidth], [FinalGSM], [TumbleLength], [TumbleWidth], [TumbleSP], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (15, 4, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(121.00 AS Decimal(18, 2)), CAST(121.00 AS Decimal(18, 2)), CAST(0x0000AA7E00A29900 AS DateTime), 3, CAST(0x0000AA7E00A2DF50 AS DateTime), 3, NULL, 0, 20196161, 1, 0)
SET IDENTITY_INSERT [dbo].[Test] OFF
/****** Object:  Table [dbo].[YarnCount]    Script Date: 07/04/2019 06:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YarnCount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YarnCount] [varchar](50) NOT NULL,
 CONSTRAINT [PK_YarnCount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[YarnCount] ON
INSERT [dbo].[YarnCount] ([Id], [YarnCount]) VALUES (1, N'40SL')
INSERT [dbo].[YarnCount] ([Id], [YarnCount]) VALUES (2, N'50SL')
INSERT [dbo].[YarnCount] ([Id], [YarnCount]) VALUES (9, N'60SL')
SET IDENTITY_INSERT [dbo].[YarnCount] OFF
/****** Object:  Table [dbo].[UserRole]    Script Date: 07/04/2019 06:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Fabric] [tinyint] NULL,
	[Knitting] [tinyint] NULL,
	[Dyeing] [tinyint] NULL,
	[Slitting] [tinyint] NULL,
	[Stenter] [tinyint] NULL,
	[Aop] [tinyint] NULL,
	[Test] [tinyint] NULL,
	[Remarks] [tinyint] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON
INSERT [dbo].[UserRole] ([Id], [UserName], [Fabric], [Knitting], [Dyeing], [Slitting], [Stenter], [Aop], [Test], [Remarks]) VALUES (1, N'amlan@gmail.com', 1, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
/****** Object:  Table [dbo].[UserInfo]    Script Date: 07/04/2019 06:35:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpID] [varchar](50) NULL,
	[Name] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[PermissionString] [varchar](50) NULL,
	[Date] [date] NULL,
	[LogIn] [tinyint] NULL,
	[Fabric] [tinyint] NULL,
	[Knitting] [tinyint] NULL,
	[Dyeing] [tinyint] NULL,
	[Slitting] [tinyint] NULL,
	[Stenter] [tinyint] NULL,
	[Aop] [tinyint] NULL,
	[Test] [tinyint] NULL,
	[Remarks] [tinyint] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON
INSERT [dbo].[UserInfo] ([Id], [EmpID], [Name], [UserName], [Password], [PermissionString], [Date], [LogIn], [Fabric], [Knitting], [Dyeing], [Slitting], [Stenter], [Aop], [Test], [Remarks]) VALUES (3, NULL, N'Amlan', N'amlan@gmail.com', N'as', N'1,2,3,4,5,6,7,8,9', CAST(0xB23F0B00 AS Date), 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[UserInfo] ([Id], [EmpID], [Name], [UserName], [Password], [PermissionString], [Date], [LogIn], [Fabric], [Knitting], [Dyeing], [Slitting], [Stenter], [Aop], [Test], [Remarks]) VALUES (4, NULL, N'Nabid', N'nabid@gmail.com', N'12', N'4,5,6,7', CAST(0xB23F0B00 AS Date), 0, 0, 0, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[UserInfo] ([Id], [EmpID], [Name], [UserName], [Password], [PermissionString], [Date], [LogIn], [Fabric], [Knitting], [Dyeing], [Slitting], [Stenter], [Aop], [Test], [Remarks]) VALUES (5, NULL, N'Admin', N'SuperAdmin@gmail.com', N'urmi@admin', N'1,2,3,4,5,6,7,8,9,10', CAST(0xB23F0B00 AS Date), 0, 1, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 07/04/2019 06:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SoftenerUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SoftenerName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SoftenerUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SoftenerUnit] ON
INSERT [dbo].[SoftenerUnit] ([Id], [SoftenerName]) VALUES (1, N'RGH')
INSERT [dbo].[SoftenerUnit] ([Id], [SoftenerName]) VALUES (3, N'AGH')
SET IDENTITY_INSERT [dbo].[SoftenerUnit] OFF
/****** Object:  Table [dbo].[Stenter]    Script Date: 07/04/2019 06:35:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stenter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DyeingID] [int] NOT NULL,
	[WidthSet] [decimal](18, 2) NOT NULL,
	[OverFeed] [decimal](18, 2) NOT NULL,
	[Temp] [decimal](18, 2) NOT NULL,
	[Speed] [decimal](18, 2) NOT NULL,
	[Peder] [varchar](50) NOT NULL,
	[Blower] [decimal](18, 2) NOT NULL,
	[SoftenerID] [int] NOT NULL,
	[SoftenerGL] [varchar](50) NOT NULL,
	[DIA] [decimal](18, 2) NOT NULL,
	[GSM] [decimal](18, 2) NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[BarCode] [bigint] NOT NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Stenter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Stenter] ON
INSERT [dbo].[Stenter] ([Id], [DyeingID], [WidthSet], [OverFeed], [Temp], [Speed], [Peder], [Blower], [SoftenerID], [SoftenerGL], [DIA], [GSM], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (21, 54, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'1', CAST(1.00 AS Decimal(18, 2)), 1, N'12', CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0x0000AA7D0115F440 AS DateTime), 3, CAST(0x0000AA7D01179A20 AS DateTime), 3, CAST(0x0000AA7D011826C0 AS DateTime), 3, 20196161, 0, 1)
INSERT [dbo].[Stenter] ([Id], [DyeingID], [WidthSet], [OverFeed], [Temp], [Speed], [Peder], [Blower], [SoftenerID], [SoftenerGL], [DIA], [GSM], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (23, 55, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'1', CAST(1.00 AS Decimal(18, 2)), 1, N'1', CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(0x0000AA7E011F4AE0 AS DateTime), 3, NULL, 0, NULL, 0, 2019721, 0, 0)
INSERT [dbo].[Stenter] ([Id], [DyeingID], [WidthSet], [OverFeed], [Temp], [Speed], [Peder], [Blower], [SoftenerID], [SoftenerGL], [DIA], [GSM], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (24, 55, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'1', CAST(1.00 AS Decimal(18, 2)), 1, N'1', CAST(1.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(0x0000AA7E011F4AE0 AS DateTime), 3, CAST(0x0000AA7E011F4AE0 AS DateTime), 3, CAST(0x0000AA7E011F9130 AS DateTime), 3, 2019721, 1, 1)
SET IDENTITY_INSERT [dbo].[Stenter] OFF
/****** Object:  Table [dbo].[Aop]    Script Date: 07/04/2019 06:35:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StenterID] [int] NOT NULL,
	[PrintType] [int] NOT NULL,
	[MachineType] [int] NOT NULL,
	[CreateTime] [date] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [date] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [date] NULL,
	[ApprovedBy] [int] NULL,
	[BarCode] [bigint] NOT NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Aop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aop] ON
INSERT [dbo].[Aop] ([Id], [StenterID], [PrintType], [MachineType], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (2, 21, 1, 1, CAST(0xD83F0B00 AS Date), 3, CAST(0xD83F0B00 AS Date), 3, NULL, 0, 20196161, 0, 0)
INSERT [dbo].[Aop] ([Id], [StenterID], [PrintType], [MachineType], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (4, 21, 1, 1, CAST(0xD83F0B00 AS Date), 3, NULL, 0, CAST(0xD83F0B00 AS Date), 3, 20196161, 1, 1)
INSERT [dbo].[Aop] ([Id], [StenterID], [PrintType], [MachineType], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (9, 24, 1, 1, CAST(0xD93F0B00 AS Date), 3, NULL, 0, CAST(0xD93F0B00 AS Date), 3, 2019721, 0, 1)
SET IDENTITY_INSERT [dbo].[Aop] OFF
/****** Object:  Table [dbo].[Dyeing]    Script Date: 07/04/2019 06:35:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dyeing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KnitID] [int] NOT NULL,
	[DyeingUnitID] [int] NOT NULL,
	[BatchNo] [varchar](50) NOT NULL,
	[BatchQty] [int] NOT NULL,
	[SerialNo] [int] NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[BarCode] [bigint] NOT NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Dyeing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Dyeing] ON
INSERT [dbo].[Dyeing] ([Id], [KnitID], [DyeingUnitID], [BatchNo], [BatchQty], [SerialNo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (54, 25, 4, N'asxczds', 1, 1, CAST(0x0000AA7D00EBEE70 AS DateTime), 3, NULL, 0, CAST(0x0000AA7D010300B0 AS DateTime), 3, 20196161, 0, 1)
INSERT [dbo].[Dyeing] ([Id], [KnitID], [DyeingUnitID], [BatchNo], [BatchQty], [SerialNo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (55, 35, 1, N'400', 500, 123, CAST(0x0000AA7E011F0490 AS DateTime), 3, NULL, 0, CAST(0x0000AA7E011F0490 AS DateTime), 3, 2019721, 0, 1)
SET IDENTITY_INSERT [dbo].[Dyeing] OFF
/****** Object:  Table [dbo].[Fabric]    Script Date: 07/04/2019 06:35:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fabric](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BuyerID] [int] NOT NULL,
	[FabricTypeID] [int] NOT NULL,
	[OrderNo] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[Note] [varchar](50) NULL,
	[Width] [varchar](50) NOT NULL,
	[GSM] [int] NULL,
	[LabdipStatus] [varchar](50) NULL,
	[ChallanNo] [varchar](50) NOT NULL,
	[DeliveryQty] [decimal](18, 2) NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[Barcode] [bigint] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
 CONSTRAINT [PK_Fabric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Fabric] ON
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (4, 1, 1, N'asd', N'asdaw', N'asd', N'asd', 1, N'asd', N'asd', CAST(1.00 AS Decimal(18, 2)), CAST(0xB63F0B00 AS Date), 2019561, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (14, 1, 3, N'asd', N'asdaw', N'asd', N'asd', 1, N'asd', N'asd', CAST(1.00 AS Decimal(18, 2)), CAST(0xB63F0B00 AS Date), 20195121, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (16, 2, 2, N'asd', N'asdaw', N'asd', N'asd', 1, N'asd', N'asd', CAST(1.00 AS Decimal(18, 2)), CAST(0xB63F0B00 AS Date), 20195141, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (17, 2, 2, N'123', N'black', N'ASDASD', N'12', 12, N'ASD', N'2343', CAST(23.00 AS Decimal(18, 2)), CAST(0xDAB93700 AS Date), 20196161, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (18, 3, 1, N'12345', N'red', N'test', N'60', 200, N'NA', N'100', CAST(500.00 AS Decimal(18, 2)), CAST(0x483F0B00 AS Date), 2019721, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (19, 1, 1, N'215', N'blue', N'', N'50', 270, N'dd', N'dd', CAST(2.00 AS Decimal(18, 2)), CAST(0x643F0B00 AS Date), 2019731, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (20, 1, 1, N'asd', N'asdaw', N'asd', N'asd', 1222, N'asd', N'asd', CAST(1.00 AS Decimal(18, 2)), CAST(0xDAB93700 AS Date), 2019741, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (21, 1, 1, N'asd', N'asdaw', N'asd', N'asd', 1222, N'asd', N'asd', CAST(1.00 AS Decimal(18, 2)), CAST(0xDAB93700 AS Date), 2019741, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Fabric] OFF
/****** Object:  View [dbo].[KnitView]    Script Date: 07/04/2019 06:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KnitView]
AS
SELECT     dbo.Knitting.Id AS KnitId, dbo.Knitting.FabricID, dbo.Knitting.DiaGaugeID, dbo.Knitting.YarnCountID, dbo.Knitting.YarnBrand, dbo.Knitting.YarnLot, dbo.Knitting.StitchLength, dbo.Knitting.KnitUnitID, 
                      dbo.Knitting.MCNO, dbo.Knitting.MCRPM, dbo.Knitting.GreyWidth, dbo.Knitting.GreyGSM, dbo.Knitting.TumbleWidth, dbo.Knitting.TumbleGSM, dbo.Knitting.McBrandID, dbo.Knitting.ReviseStatus, 
                      dbo.Knitting.ApprovedStatus, dbo.Fabric.ChallanNo, dbo.Fabric.DeliveryDate, dbo.Buyer.BuyerName, dbo.FabricType.FabricName, dbo.Fabric.OrderNo, dbo.Fabric.Color, dbo.McBrand.McBrand, 
                      dbo.KnitUnit.KnitUnit, dbo.YarnCount.YarnCount, dbo.Knitting.BarCode, dbo.Knitting.CreateBy, dbo.Knitting.UpdateBy, dbo.Knitting.ApprovedBy, dbo.Knitting.CreateTime, dbo.Knitting.UpdateTime, 
                      dbo.Knitting.ApprovedTime, dbo.UserInfo.Name AS CreateByName, UserInfo_2.Name AS UpdateByName, UserInfo_1.Name AS ApprovedByName, dbo.Fabric.CreateTime AS FabricCreateTime, 
                      dbo.Buyer.Id AS BuyerID, dbo.FabricType.Id AS FabricTypeID, dbo.McDia.McDiaGauge, dbo.Fabric.GSM, dbo.Fabric.LabdipStatus, dbo.Fabric.Note, dbo.Fabric.Width, dbo.Fabric.DeliveryQty
FROM         dbo.McBrand RIGHT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 RIGHT OUTER JOIN
                      dbo.Knitting LEFT OUTER JOIN
                      dbo.McDia ON dbo.Knitting.DiaGaugeID = dbo.McDia.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Knitting.ApprovedBy = UserInfo_1.Id ON UserInfo_2.Id = dbo.Knitting.UpdateBy LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Knitting.CreateBy = dbo.UserInfo.Id ON dbo.McBrand.Id = dbo.Knitting.McBrandID LEFT OUTER JOIN
                      dbo.KnitUnit ON dbo.Knitting.KnitUnitID = dbo.KnitUnit.Id LEFT OUTER JOIN
                      dbo.YarnCount ON dbo.Knitting.YarnCountID = dbo.YarnCount.Id LEFT OUTER JOIN
                      dbo.Buyer RIGHT OUTER JOIN
                      dbo.FabricType RIGHT OUTER JOIN
                      dbo.Fabric ON dbo.FabricType.Id = dbo.Fabric.FabricTypeID ON dbo.Buyer.Id = dbo.Fabric.BuyerID ON dbo.Knitting.FabricID = dbo.Fabric.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[24] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "McBrand"
            Begin Extent = 
               Top = 353
               Left = 376
               Bottom = 427
               Right = 536
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 299
               Left = 1078
               Bottom = 377
               Right = 1245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Knitting"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 398
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "McDia"
            Begin Extent = 
               Top = 99
               Left = 378
               Bottom = 189
               Right = 538
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 383
               Left = 1076
               Bottom = 483
               Right = 1243
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 200
               Left = 1079
               Bottom = 296
               Right = 1246
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KnitUnit"
            Begin Extent = 
               Top = 269
               Left = 376
               Bottom = 359
               Right = 536
            End
            Dis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'playFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnCount"
            Begin Extent = 
               Top = 183
               Left = 376
               Bottom = 274
               Right = 536
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Buyer"
            Begin Extent = 
               Top = 10
               Left = 812
               Bottom = 100
               Right = 972
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricType"
            Begin Extent = 
               Top = 111
               Left = 808
               Bottom = 201
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Fabric"
            Begin Extent = 
               Top = 0
               Left = 376
               Bottom = 97
               Right = 536
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 41
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2325
         Alias = 2190
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1335
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitView'
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 07/04/2019 06:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FabricView]
AS
SELECT     dbo.Fabric.Id, dbo.Fabric.OrderNo, dbo.Fabric.Color, dbo.Fabric.Note, dbo.Fabric.Width, dbo.Fabric.GSM, dbo.Fabric.LabdipStatus, dbo.Fabric.ChallanNo, dbo.Fabric.DeliveryQty, 
                      dbo.Fabric.DeliveryDate, dbo.Fabric.Barcode, dbo.Fabric.BuyerID, dbo.Fabric.FabricTypeID, dbo.Buyer.BuyerName, dbo.FabricType.FabricName
FROM         dbo.Fabric LEFT OUTER JOIN
                      dbo.FabricType ON dbo.Fabric.FabricTypeID = dbo.FabricType.Id LEFT OUTER JOIN
                      dbo.Buyer ON dbo.Fabric.BuyerID = dbo.Buyer.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[28] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Fabric"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 262
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Buyer"
            Begin Extent = 
               Top = 6
               Left = 579
               Bottom = 111
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricType"
            Begin Extent = 
               Top = 135
               Left = 578
               Bottom = 240
               Right = 738
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 29
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FabricView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FabricView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FabricView'
GO
/****** Object:  View [dbo].[DyeingView]    Script Date: 07/04/2019 06:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DyeingView]
AS
SELECT     dbo.Dyeing.Id, dbo.KnitView.GreyWidth, dbo.KnitView.GreyGSM, dbo.KnitView.YarnBrand, dbo.KnitView.YarnLot, dbo.KnitView.YarnCount, dbo.KnitView.KnitUnit, dbo.KnitView.McBrand, 
                      dbo.KnitView.Color, dbo.KnitView.OrderNo, dbo.KnitView.FabricName, dbo.KnitView.BuyerName, dbo.KnitView.ChallanNo, dbo.KnitView.DeliveryDate, UserInfo_1.Name AS CreateByName, 
                      dbo.UserInfo.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, dbo.KnitView.McDiaGauge, dbo.KnitView.FabricTypeID, dbo.KnitView.BuyerID, dbo.KnitView.FabricCreateTime, 
                      dbo.KnitView.DiaGaugeID, dbo.KnitView.YarnCountID, dbo.KnitView.KnitUnitID, dbo.KnitView.McBrandID, dbo.Dyeing.KnitID, dbo.Dyeing.DyeingUnitID, dbo.Dyeing.BatchNo, dbo.Dyeing.BatchQty, 
                      dbo.Dyeing.SerialNo, dbo.Dyeing.CreateTime, dbo.Dyeing.CreateBy, dbo.Dyeing.UpdateTime, dbo.Dyeing.UpdateBy, dbo.Dyeing.ApprovedTime, dbo.Dyeing.ApprovedBy, dbo.Dyeing.BarCode, 
                      dbo.Dyeing.ReviseStatus, dbo.Dyeing.ApprovedStatus, dbo.DyeingUnit.DyeingUnitName, dbo.KnitView.FabricID, dbo.KnitView.StitchLength, dbo.KnitView.MCNO, dbo.KnitView.MCRPM, 
                      dbo.KnitView.TumbleWidth, dbo.KnitView.TumbleGSM, dbo.KnitView.GSM AS RequiredGSM, dbo.KnitView.LabdipStatus, dbo.KnitView.Note, dbo.KnitView.Width AS RequiredWidth, 
                      dbo.KnitView.DeliveryQty
FROM         dbo.Dyeing LEFT OUTER JOIN
                      dbo.DyeingUnit ON dbo.Dyeing.DyeingUnitID = dbo.DyeingUnit.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Dyeing.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Dyeing.UpdateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Dyeing.CreateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.KnitView ON dbo.Dyeing.KnitID = dbo.KnitView.KnitId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[53] 4[28] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Dyeing"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 316
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DyeingUnit"
            Begin Extent = 
               Top = 330
               Left = 299
               Bottom = 420
               Right = 467
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 245
               Left = 299
               Bottom = 327
               Right = 466
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 171
               Left = 299
               Bottom = 243
               Right = 466
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 80
               Left = 298
               Bottom = 169
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KnitView"
            Begin Extent = 
               Top = 0
               Left = 535
               Bottom = 295
               Right = 702
            End
            DisplayFlags = 280
            TopColumn = 15
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 34
         Width = 284
         Width = 1500
         Width = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2160
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingView'
GO
/****** Object:  View [dbo].[StenterView]    Script Date: 07/04/2019 06:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StenterView]
AS
SELECT     dbo.Stenter.Id, dbo.Stenter.WidthSet, dbo.Stenter.OverFeed, dbo.Stenter.Temp, dbo.Stenter.Speed, dbo.Stenter.Peder, dbo.Stenter.Blower, dbo.Stenter.SoftenerGL, dbo.Stenter.DIA, dbo.Stenter.GSM, 
                      dbo.Stenter.CreateBy, dbo.Stenter.CreateTime, dbo.Stenter.UpdateTime, dbo.Stenter.UpdateBy, dbo.Stenter.ApprovedTime, dbo.Stenter.ApprovedBy, dbo.Stenter.BarCode, dbo.Stenter.ReviseStatus, 
                      dbo.SoftenerUnit.SoftenerName, dbo.Stenter.DyeingID, dbo.DyeingView.GreyWidth, dbo.DyeingView.GreyGSM, dbo.DyeingView.YarnBrand, dbo.DyeingView.YarnLot, dbo.DyeingView.YarnCount, 
                      dbo.DyeingView.KnitUnit, dbo.DyeingView.McBrand, dbo.DyeingView.Color, dbo.DyeingView.OrderNo, dbo.DyeingView.FabricName, dbo.DyeingView.BuyerName, dbo.DyeingView.ChallanNo, 
                      dbo.DyeingView.DeliveryDate, dbo.DyeingView.McDiaGauge, dbo.DyeingView.FabricTypeID, dbo.DyeingView.BuyerID, dbo.DyeingView.FabricCreateTime, dbo.DyeingView.DiaGaugeID, 
                      dbo.DyeingView.YarnCountID, dbo.DyeingView.KnitUnitID, dbo.DyeingView.McBrandID, dbo.DyeingView.KnitID, dbo.DyeingView.FabricID, dbo.DyeingView.DyeingUnitID, dbo.DyeingView.BatchNo, 
                      dbo.DyeingView.BatchQty, dbo.DyeingView.SerialNo, dbo.DyeingView.DyeingUnitName, dbo.Stenter.ApprovedStatus, dbo.Stenter.SoftenerID, UserInfo_1.Name AS CreateByName, 
                      UserInfo_2.Name AS UpdateByName, dbo.UserInfo.Name AS ApprovedByName, dbo.DyeingView.StitchLength, dbo.DyeingView.MCNO, dbo.DyeingView.MCRPM, dbo.DyeingView.TumbleWidth, 
                      dbo.DyeingView.TumbleGSM, dbo.DyeingView.LabdipStatus, dbo.DyeingView.Note, dbo.DyeingView.DeliveryQty, dbo.DyeingView.RequiredGSM, dbo.DyeingView.RequiredWidth
FROM         dbo.Stenter LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Stenter.ApprovedBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Stenter.UpdateBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Stenter.CreateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.SoftenerUnit ON dbo.Stenter.SoftenerID = dbo.SoftenerUnit.Id LEFT OUTER JOIN
                      dbo.DyeingView ON dbo.Stenter.DyeingID = dbo.DyeingView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[7] 2[43] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Stenter"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 384
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 336
               Left = 342
               Bottom = 404
               Right = 509
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 252
               Left = 343
               Bottom = 330
               Right = 510
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 160
               Left = 345
               Bottom = 245
               Right = 512
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "SoftenerUnit"
            Begin Extent = 
               Top = 62
               Left = 345
               Bottom = 159
               Right = 505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DyeingView"
            Begin Extent = 
               Top = 2
               Left = 573
               Bottom = 614
               Right = 748
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 62
         Width = 284
         Width = 1500
         Widt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StenterView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'h = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2265
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StenterView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StenterView'
GO
/****** Object:  View [dbo].[AopView]    Script Date: 07/04/2019 06:35:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AopView]
AS
SELECT     dbo.Aop.Id, dbo.PrintUnit.PrintName, dbo.MachineUnit.MachineName, dbo.Aop.StenterID, dbo.Aop.PrintType, dbo.Aop.MachineType, dbo.Aop.CreateTime, dbo.Aop.CreateBy, dbo.Aop.UpdateTime, 
                      dbo.Aop.UpdateBy, dbo.Aop.ApprovedTime, dbo.Aop.ApprovedBy, dbo.Aop.BarCode, dbo.Aop.ReviseStatus, dbo.StenterView.SoftenerName, dbo.StenterView.DyeingID, dbo.StenterView.GreyWidth, 
                      dbo.StenterView.GreyGSM, dbo.StenterView.YarnBrand, dbo.StenterView.YarnLot, dbo.StenterView.YarnCount, dbo.StenterView.KnitUnit, dbo.StenterView.McBrand, dbo.StenterView.Color, 
                      dbo.StenterView.OrderNo, dbo.StenterView.FabricName, dbo.StenterView.BuyerName, dbo.StenterView.ChallanNo, dbo.StenterView.DeliveryDate, dbo.StenterView.McDiaGauge, 
                      dbo.StenterView.FabricTypeID, dbo.StenterView.BuyerID, dbo.StenterView.FabricCreateTime, dbo.StenterView.DiaGaugeID, dbo.StenterView.YarnCountID, dbo.StenterView.KnitUnitID, 
                      dbo.StenterView.McBrandID, dbo.StenterView.KnitID, dbo.StenterView.FabricID, dbo.StenterView.DyeingUnitID, dbo.StenterView.BatchNo, dbo.StenterView.SerialNo, dbo.StenterView.DyeingUnitName, 
                      dbo.Aop.ApprovedStatus, dbo.StenterView.SoftenerGL, dbo.StenterView.SoftenerID, dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, 
                      UserInfo_2.Name AS ApprovedByName, dbo.StenterView.WidthSet, dbo.StenterView.OverFeed, dbo.StenterView.Temp, dbo.StenterView.Speed, dbo.StenterView.Peder, dbo.StenterView.Blower, 
                      dbo.StenterView.DIA, dbo.StenterView.GSM, dbo.StenterView.BatchQty, dbo.StenterView.DeliveryQty, dbo.StenterView.Note, dbo.StenterView.LabdipStatus, dbo.StenterView.TumbleGSM, 
                      dbo.StenterView.TumbleWidth, dbo.StenterView.MCRPM, dbo.StenterView.MCNO, dbo.StenterView.StitchLength, dbo.StenterView.RequiredGSM, dbo.StenterView.RequiredWidth
FROM         dbo.Aop LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Aop.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Aop.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Aop.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.StenterView ON dbo.Aop.StenterID = dbo.StenterView.Id LEFT OUTER JOIN
                      dbo.MachineUnit ON dbo.Aop.MachineType = dbo.MachineUnit.Id LEFT OUTER JOIN
                      dbo.PrintUnit ON dbo.Aop.PrintType = dbo.PrintUnit.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[60] 4[13] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Aop"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 256
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 371
               Left = 290
               Bottom = 446
               Right = 457
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 296
               Left = 293
               Bottom = 371
               Right = 460
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 218
               Left = 290
               Bottom = 293
               Right = 457
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MachineUnit"
            Begin Extent = 
               Top = 146
               Left = 294
               Bottom = 213
               Right = 454
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PrintUnit"
            Begin Extent = 
               Top = 75
               Left = 293
               Bottom = 142
               Right = 453
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StenterView"
            Begin Extent = 
               Top = 22
               Left = 556
               Bottom = 386
               Right = 731
            End
            Displ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AopView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 46
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AopView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AopView'
GO
/****** Object:  View [dbo].[TestView]    Script Date: 07/04/2019 06:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TestView]
AS
SELECT     dbo.Test.Id, dbo.Test.AOPID, dbo.Test.FinalWidth, dbo.Test.FinalGSM, dbo.Test.TumbleLength, dbo.Test.TumbleWidth, dbo.Test.TumbleSP, dbo.Test.CreateTime, dbo.Test.CreateBy, 
                      dbo.Test.UpdateTime, dbo.Test.UpdateBy, dbo.Test.ApprovedTime, dbo.Test.ApprovedBy, dbo.Test.BarCode, dbo.Test.ReviseStatus, dbo.Test.ApprovedStatus, dbo.AopView.PrintName, 
                      dbo.AopView.MachineName, dbo.AopView.StenterID, dbo.AopView.PrintType, dbo.AopView.MachineType, dbo.AopView.SoftenerGL, dbo.AopView.SoftenerName, dbo.AopView.DyeingID, 
                      dbo.AopView.GreyWidth, dbo.AopView.GreyGSM, dbo.AopView.YarnBrand, dbo.AopView.YarnLot, dbo.AopView.YarnCount, dbo.AopView.KnitUnit, dbo.AopView.McBrand, dbo.AopView.Color, 
                      dbo.AopView.OrderNo, dbo.AopView.FabricName, dbo.AopView.BuyerName, dbo.AopView.ChallanNo, dbo.AopView.DeliveryDate, dbo.AopView.McDiaGauge, dbo.AopView.FabricTypeID, 
                      dbo.AopView.BuyerID, dbo.AopView.FabricCreateTime, dbo.AopView.DiaGaugeID, dbo.AopView.YarnCountID, dbo.AopView.KnitUnitID, dbo.AopView.McBrandID, dbo.AopView.KnitID, 
                      dbo.AopView.FabricID, dbo.AopView.DyeingUnitID, dbo.AopView.BatchNo, dbo.AopView.SerialNo, dbo.AopView.DyeingUnitName, dbo.UserInfo.Name AS CreateByName, 
                      UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, dbo.AopView.Temp, dbo.AopView.Speed, dbo.AopView.Peder, dbo.AopView.Blower, dbo.AopView.DIA, 
                      dbo.AopView.GSM, dbo.AopView.BatchQty, dbo.AopView.WidthSet, dbo.AopView.OverFeed, dbo.AopView.DeliveryQty, dbo.AopView.Note, dbo.AopView.LabdipStatus, dbo.AopView.TumbleGSM, 
                      dbo.AopView.TumbleWidth AS TumbleWidthKnit, dbo.AopView.MCRPM, dbo.AopView.MCNO, dbo.AopView.StitchLength, dbo.AopView.RequiredGSM, dbo.AopView.RequiredWidth
FROM         dbo.Test LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Test.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Test.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Test.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.AopView ON dbo.Test.AOPID = dbo.AopView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[27] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Test"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 344
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 171
               Left = 348
               Bottom = 252
               Right = 515
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 260
               Left = 347
               Bottom = 349
               Right = 514
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 88
               Left = 350
               Bottom = 170
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "AopView"
            Begin Extent = 
               Top = 9
               Left = 597
               Bottom = 366
               Right = 770
            End
            DisplayFlags = 280
            TopColumn = 39
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 55
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         W' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TestView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'idth = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2175
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TestView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TestView'
GO
/****** Object:  View [dbo].[RemarksView]    Script Date: 07/04/2019 06:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[RemarksView]
AS
SELECT     dbo.Remarks.Id, dbo.Remarks.TestReportID, dbo.Remarks.BarCode, dbo.Remarks.ReviseStatus, dbo.Remarks.CreateTime, dbo.Remarks.Remarks, dbo.Remarks.CreateBy, 
                      dbo.Remarks.UpdateTime, dbo.Remarks.UpdateBy, dbo.Remarks.ApprovedTime, dbo.Remarks.ApprovedBy, dbo.TestView.AOPID, dbo.TestView.FinalWidth, dbo.TestView.FinalGSM, 
                      dbo.TestView.TumbleLength, dbo.TestView.TumbleWidth, dbo.TestView.TumbleSP, dbo.TestView.PrintName, dbo.TestView.MachineName, dbo.TestView.StenterID, dbo.TestView.PrintType, 
                      dbo.TestView.MachineType, dbo.TestView.SoftenerGL, dbo.TestView.SoftenerName, dbo.TestView.DyeingID, dbo.TestView.GreyWidth, dbo.TestView.GreyGSM, dbo.TestView.YarnBrand, 
                      dbo.TestView.YarnLot, dbo.TestView.YarnCount, dbo.TestView.KnitUnit, dbo.TestView.McBrand, dbo.TestView.Color, dbo.TestView.OrderNo, dbo.TestView.FabricName, dbo.TestView.BuyerName, 
                      dbo.TestView.ChallanNo, dbo.TestView.DeliveryDate, dbo.TestView.McDiaGauge, dbo.TestView.FabricTypeID, dbo.TestView.BuyerID, dbo.TestView.FabricCreateTime, dbo.TestView.DiaGaugeID, 
                      dbo.TestView.YarnCountID, dbo.TestView.KnitUnitID, dbo.TestView.McBrandID, dbo.TestView.KnitID, dbo.TestView.FabricID, dbo.TestView.DyeingUnitID, dbo.TestView.BatchNo, 
                      dbo.TestView.SerialNo, dbo.TestView.DyeingUnitName, dbo.TestView.Temp, dbo.TestView.Speed, dbo.TestView.Peder, dbo.TestView.Blower, dbo.Remarks.ApprovedStatus, 
                      UserInfo_1.Name AS CreateByName, UserInfo_2.Name AS UpdateByName, dbo.UserInfo.Name AS ApprovedByName, dbo.TestView.DIA, dbo.TestView.GSM, dbo.TestView.BatchQty, 
                      dbo.TestView.WidthSet, dbo.TestView.OverFeed, dbo.TestView.DeliveryQty, dbo.TestView.Note, dbo.TestView.LabdipStatus, dbo.TestView.TumbleGSM, dbo.TestView.MCRPM, dbo.TestView.MCNO, 
                      dbo.TestView.StitchLength, dbo.TestView.RequiredGSM, dbo.TestView.RequiredWidth, dbo.TestView.TumbleWidthKnit
FROM         dbo.Remarks LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Remarks.ApprovedBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Remarks.UpdateBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Remarks.CreateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.TestView ON dbo.Remarks.TestReportID = dbo.TestView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[11] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Remarks"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 403
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 224
               Left = 413
               Bottom = 295
               Right = 580
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 141
               Left = 412
               Bottom = 216
               Right = 579
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 58
               Left = 413
               Bottom = 135
               Right = 580
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TestView"
            Begin Extent = 
               Top = 0
               Left = 923
               Bottom = 407
               Right = 1098
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 62
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RemarksView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RemarksView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'RemarksView'
GO
/****** Object:  View [dbo].[ReportView]    Script Date: 07/04/2019 06:35:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReportView]
AS
SELECT     dbo.Report.Id, dbo.Report.FabridID, dbo.Report.KnitID, dbo.Report.DyeingID, dbo.Report.StenterID, dbo.Report.AOPID, dbo.Report.TesReportID, dbo.Report.RemarksID, dbo.Report.CreateTime, 
                      dbo.Report.CreateBy, dbo.Knitting.CreateBy AS CreateByKnit, dbo.Knitting.CreateTime AS CreateTimeKnit, dbo.Knitting.UpdateTime AS UpdateTimeKnit, dbo.Knitting.UpdateBy AS UpdateByKnit, 
                      dbo.Knitting.ApprovedTime AS ApprovedTimeKnit, dbo.Knitting.ApprovedBy AS ApprovedByKnit, dbo.Dyeing.CreateBy AS CreateByDyeing, dbo.Dyeing.UpdateTime AS UpdateTimeDyeing, 
                      dbo.Dyeing.UpdateBy AS UpdateByDyeing, dbo.Dyeing.ApprovedTime AS ApprovedTimeDyeing, dbo.Dyeing.ApprovedBy AS ApprovedByDyeing, dbo.Dyeing.CreateTime AS CreateTimeDyeing, 
                      dbo.Stenter.CreateTime AS CreateTimeStenter, dbo.Stenter.CreateBy AS CreateByStenter, dbo.Stenter.UpdateTime AS UpdateTimeStenter, dbo.Stenter.UpdateBy AS UpdateByStenter, 
                      dbo.Stenter.ApprovedTime AS ApprovedTimeStenter, dbo.Stenter.ApprovedBy AS ApprovedByStenter, dbo.Aop.CreateTime AS CreateTimeAop, dbo.Aop.CreateBy AS CreateByAop, 
                      dbo.Aop.UpdateTime AS UpdateTimeAop, dbo.Aop.UpdateBy AS UpdateByAop, dbo.Aop.ApprovedTime AS ApprovedTimeAop, dbo.Aop.ApprovedBy AS ApprovedByAop, 
                      dbo.Test.CreateTime AS CreateTimeTest, dbo.Test.CreateBy AS CreateByTest, dbo.Test.UpdateTime AS UpdateTimeTest, dbo.Test.UpdateBy AS UpdateByTest, 
                      dbo.Test.ApprovedTime AS ApprovedTimeTest, dbo.Test.ApprovedBy AS ApprovedByTest, dbo.Remarks.CreateTime AS CreateTimeRemarks, dbo.Remarks.CreateBy AS CreateByRemarks, 
                      dbo.Remarks.UpdateTime AS UpdateTimeRemarks, dbo.Remarks.UpdateBy AS UpdateByRemarks, dbo.Remarks.ApprovedTime AS ApprovedTimeRemarks, 
                      dbo.Remarks.ApprovedBy AS ApprovedByRemarks, dbo.RemarksView.BarCode, dbo.RemarksView.Remarks, dbo.RemarksView.FinalWidth, dbo.RemarksView.FinalGSM, 
                      dbo.RemarksView.TumbleLength, dbo.RemarksView.TumbleWidth, dbo.RemarksView.TumbleSP, dbo.RemarksView.PrintName, dbo.RemarksView.MachineName, dbo.RemarksView.PrintType, 
                      dbo.RemarksView.MachineType, dbo.RemarksView.SoftenerGL, dbo.RemarksView.SoftenerName, dbo.RemarksView.GreyWidth, dbo.RemarksView.GreyGSM, dbo.RemarksView.YarnBrand, 
                      dbo.RemarksView.YarnLot, dbo.RemarksView.YarnCount, dbo.RemarksView.KnitUnit, dbo.RemarksView.McBrand, dbo.RemarksView.Color, dbo.RemarksView.OrderNo, 
                      dbo.RemarksView.FabricName, dbo.RemarksView.BuyerName, dbo.RemarksView.ChallanNo, dbo.RemarksView.DeliveryDate, dbo.RemarksView.McDiaGauge, dbo.RemarksView.DiaGaugeID, 
                      dbo.RemarksView.YarnCountID, dbo.RemarksView.KnitUnitID, dbo.RemarksView.McBrandID, dbo.RemarksView.DyeingUnitID, dbo.RemarksView.BatchNo, dbo.RemarksView.SerialNo, 
                      dbo.RemarksView.DyeingUnitName, dbo.RemarksView.Temp, dbo.RemarksView.Speed, dbo.RemarksView.Peder, dbo.RemarksView.Blower, dbo.RemarksView.DIA, dbo.RemarksView.GSM, 
                      dbo.RemarksView.BatchQty, dbo.RemarksView.WidthSet, dbo.RemarksView.OverFeed, dbo.RemarksView.DeliveryQty, dbo.RemarksView.Note, dbo.RemarksView.LabdipStatus, 
                      dbo.RemarksView.TumbleGSM, dbo.RemarksView.MCRPM, dbo.RemarksView.MCNO, dbo.RemarksView.StitchLength, dbo.RemarksView.RequiredGSM, dbo.RemarksView.RequiredWidth, 
                      dbo.RemarksView.TumbleWidthKnit, dbo.RemarksView.FabricTypeID, dbo.RemarksView.BuyerID, dbo.RemarksView.FabricID
FROM         dbo.Report LEFT OUTER JOIN
                      dbo.RemarksView ON dbo.Report.RemarksID = dbo.RemarksView.Id LEFT OUTER JOIN
                      dbo.Remarks ON dbo.Report.RemarksID = dbo.Remarks.Id LEFT OUTER JOIN
                      dbo.Test ON dbo.Report.TesReportID = dbo.Test.Id LEFT OUTER JOIN
                      dbo.Aop ON dbo.Report.AOPID = dbo.Aop.Id LEFT OUTER JOIN
                      dbo.Stenter ON dbo.Report.StenterID = dbo.Stenter.Id LEFT OUTER JOIN
                      dbo.Dyeing ON dbo.Report.DyeingID = dbo.Dyeing.Id LEFT OUTER JOIN
                      dbo.Knitting ON dbo.Report.KnitID = dbo.Knitting.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[38] 2[7] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Report"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 254
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RemarksView"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 411
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Remarks"
            Begin Extent = 
               Top = 0
               Left = 1259
               Bottom = 77
               Right = 1426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Test"
            Begin Extent = 
               Top = 0
               Left = 1073
               Bottom = 76
               Right = 1240
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "Aop"
            Begin Extent = 
               Top = 2
               Left = 876
               Bottom = 77
               Right = 1043
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Stenter"
            Begin Extent = 
               Top = 0
               Left = 683
               Bottom = 75
               Right = 850
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "Dyeing"
            Begin Extent = 
               Top = 1
               Left = 496
               Bottom = 77
               Right = 663
            End
            DisplayFlags = 280
            ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReportView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'TopColumn = 13
         End
         Begin Table = "Knitting"
            Begin Extent = 
               Top = 6
               Left = 316
               Bottom = 73
               Right = 483
            End
            DisplayFlags = 280
            TopColumn = 17
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 105
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2100
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1290
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReportView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ReportView'
GO
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_MachineUnit] FOREIGN KEY([MachineType])
REFERENCES [dbo].[MachineUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_PrintUnit] FOREIGN KEY([PrintType])
REFERENCES [dbo].[PrintUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Dyeing_DyeingUnit]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Dyeing]  WITH CHECK ADD  CONSTRAINT [FK_Dyeing_DyeingUnit] FOREIGN KEY([DyeingUnitID])
REFERENCES [dbo].[DyeingUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Dyeing] CHECK CONSTRAINT [FK_Dyeing_DyeingUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_Buyer] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Buyer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 07/04/2019 06:35:46 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_FabricType] FOREIGN KEY([FabricTypeID])
REFERENCES [dbo].[FabricType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  ForeignKey [FK_Stenter_SoftenerUnit]    Script Date: 07/04/2019 06:35:47 ******/
ALTER TABLE [dbo].[Stenter]  WITH CHECK ADD  CONSTRAINT [FK_Stenter_SoftenerUnit] FOREIGN KEY([SoftenerID])
REFERENCES [dbo].[SoftenerUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stenter] CHECK CONSTRAINT [FK_Stenter_SoftenerUnit]
GO
