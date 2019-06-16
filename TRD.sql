USE [TextileResearchDevelopment]
GO
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 06/16/2019 20:55:42 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 06/16/2019 20:55:42 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Dyeing_DyeingUnit]    Script Date: 06/16/2019 20:55:42 ******/
ALTER TABLE [dbo].[Dyeing] DROP CONSTRAINT [FK_Dyeing_DyeingUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 06/16/2019 20:55:43 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 06/16/2019 20:55:43 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  ForeignKey [FK_Stenter_SoftenerUnit]    Script Date: 06/16/2019 20:55:43 ******/
ALTER TABLE [dbo].[Stenter] DROP CONSTRAINT [FK_Stenter_SoftenerUnit]
GO
/****** Object:  View [dbo].[TestView]    Script Date: 06/16/2019 20:55:43 ******/
DROP VIEW [dbo].[TestView]
GO
/****** Object:  View [dbo].[AopView]    Script Date: 06/16/2019 20:55:43 ******/
DROP VIEW [dbo].[AopView]
GO
/****** Object:  View [dbo].[StenterView]    Script Date: 06/16/2019 20:55:43 ******/
DROP VIEW [dbo].[StenterView]
GO
/****** Object:  View [dbo].[DyeingView]    Script Date: 06/16/2019 20:55:43 ******/
DROP VIEW [dbo].[DyeingView]
GO
/****** Object:  View [dbo].[KnitView]    Script Date: 06/16/2019 20:55:43 ******/
DROP VIEW [dbo].[KnitView]
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 06/16/2019 20:55:43 ******/
DROP VIEW [dbo].[FabricView]
GO
/****** Object:  Table [dbo].[Aop]    Script Date: 06/16/2019 20:55:42 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
DROP TABLE [dbo].[Aop]
GO
/****** Object:  Table [dbo].[Stenter]    Script Date: 06/16/2019 20:55:43 ******/
ALTER TABLE [dbo].[Stenter] DROP CONSTRAINT [FK_Stenter_SoftenerUnit]
GO
DROP TABLE [dbo].[Stenter]
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 06/16/2019 20:55:43 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
DROP TABLE [dbo].[Fabric]
GO
/****** Object:  Table [dbo].[Dyeing]    Script Date: 06/16/2019 20:55:42 ******/
ALTER TABLE [dbo].[Dyeing] DROP CONSTRAINT [FK_Dyeing_DyeingUnit]
GO
DROP TABLE [dbo].[Dyeing]
GO
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 06/16/2019 20:55:42 ******/
DROP TABLE [dbo].[DyeingUnit]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 06/16/2019 20:55:42 ******/
DROP TABLE [dbo].[Buyer]
GO
/****** Object:  Table [dbo].[FabricType]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[FabricType]
GO
/****** Object:  Table [dbo].[MachineUnit]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[MachineUnit]
GO
/****** Object:  Table [dbo].[McBrand]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[McBrand]
GO
/****** Object:  Table [dbo].[McDia]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[McDia]
GO
/****** Object:  Table [dbo].[PrintUnit]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[PrintUnit]
GO
/****** Object:  Table [dbo].[Remarks]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[Remarks]
GO
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[SoftenerUnit]
GO
/****** Object:  Table [dbo].[Knitting]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[Knitting]
GO
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[KnitUnit]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[Test]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[UserInfo]
GO
/****** Object:  Table [dbo].[YarnCount]    Script Date: 06/16/2019 20:55:43 ******/
DROP TABLE [dbo].[YarnCount]
GO
/****** Object:  Table [dbo].[YarnCount]    Script Date: 06/16/2019 20:55:43 ******/
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
/****** Object:  Table [dbo].[UserInfo]    Script Date: 06/16/2019 20:55:43 ******/
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
INSERT [dbo].[UserInfo] ([Id], [EmpID], [Name], [UserName], [Password], [PermissionString], [Date], [LogIn], [Fabric], [Knitting], [Dyeing], [Slitting], [Stenter], [Aop], [Test], [Remarks]) VALUES (3, NULL, N'Amlan', N'amlan@gmail.com', N'as', N'1,2', CAST(0xB23F0B00 AS Date), 1, 1, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[UserInfo] ([Id], [EmpID], [Name], [UserName], [Password], [PermissionString], [Date], [LogIn], [Fabric], [Knitting], [Dyeing], [Slitting], [Stenter], [Aop], [Test], [Remarks]) VALUES (4, NULL, N'Nabid', N'nabid@gmail.com', N'123', N'3,4', CAST(0xB23F0B00 AS Date), 0, 0, 0, 1, 1, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Table [dbo].[Test]    Script Date: 06/16/2019 20:55:43 ******/
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
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 06/16/2019 20:55:43 ******/
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
/****** Object:  Table [dbo].[Knitting]    Script Date: 06/16/2019 20:55:43 ******/
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
 CONSTRAINT [PK_Knitting_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Knitting] ON
INSERT [dbo].[Knitting] ([Id], [FabricID], [DiaGaugeID], [YarnCountID], [YarnBrand], [YarnLot], [StitchLength], [KnitUnitID], [MCNO], [MCRPM], [GreyWidth], [GreyGSM], [TumbleWidth], [TumbleGSM], [McBrandID], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus]) VALUES (22, 4, 1, 2, N'asd', N'a', CAST(0.00 AS Decimal(18, 2)), 1, 1, 1, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, 1, CAST(0x002D247F00000000 AS DateTime), 3, NULL, 0, CAST(0x0000AA5C00BCF700 AS DateTime), 3, 2019561, 4)
INSERT [dbo].[Knitting] ([Id], [FabricID], [DiaGaugeID], [YarnCountID], [YarnBrand], [YarnLot], [StitchLength], [KnitUnitID], [MCNO], [MCRPM], [GreyWidth], [GreyGSM], [TumbleWidth], [TumbleGSM], [McBrandID], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus]) VALUES (23, 4, 1, 2, N'asd', N'a', CAST(0.00 AS Decimal(18, 2)), 1, 1, 1, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, 0, CAST(0x002D247F018B3BB0 AS DateTime), NULL, NULL, 0, NULL, 0, 2019561, 5)
INSERT [dbo].[Knitting] ([Id], [FabricID], [DiaGaugeID], [YarnCountID], [YarnBrand], [YarnLot], [StitchLength], [KnitUnitID], [MCNO], [MCRPM], [GreyWidth], [GreyGSM], [TumbleWidth], [TumbleGSM], [McBrandID], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus]) VALUES (24, 17, 1, 1, N'WEDE', N'EWE', CAST(0.00 AS Decimal(18, 2)), 2, 12, 100, CAST(23.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(456.00 AS Decimal(18, 2)), 1, 0, CAST(0x0000AA6E00F00D20 AS DateTime), 3, NULL, 0, NULL, 0, 20196161, 0)
INSERT [dbo].[Knitting] ([Id], [FabricID], [DiaGaugeID], [YarnCountID], [YarnBrand], [YarnLot], [StitchLength], [KnitUnitID], [MCNO], [MCRPM], [GreyWidth], [GreyGSM], [TumbleWidth], [TumbleGSM], [McBrandID], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus]) VALUES (25, 17, 1, 1, N'WEDE', N'EWE', CAST(0.00 AS Decimal(18, 2)), 2, 12, 100, CAST(23.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(456.00 AS Decimal(18, 2)), 1, 1, CAST(0x002D247F018B3BB0 AS DateTime), 3, NULL, 0, CAST(0x0000AA6E00F099C0 AS DateTime), 3, 20196161, 1)
INSERT [dbo].[Knitting] ([Id], [FabricID], [DiaGaugeID], [YarnCountID], [YarnBrand], [YarnLot], [StitchLength], [KnitUnitID], [MCNO], [MCRPM], [GreyWidth], [GreyGSM], [TumbleWidth], [TumbleGSM], [McBrandID], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus]) VALUES (26, 17, 1, 1, N'WEDE', N'EWE', CAST(0.00 AS Decimal(18, 2)), 2, 12, 100, CAST(23.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), CAST(456.00 AS Decimal(18, 2)), 1, 1, CAST(0x002D247F018B3BB0 AS DateTime), 3, CAST(0x0000AA6E00F12660 AS DateTime), 3, CAST(0x0000AA6E00F12660 AS DateTime), 3, 20196161, 2)
SET IDENTITY_INSERT [dbo].[Knitting] OFF
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 06/16/2019 20:55:43 ******/
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
/****** Object:  Table [dbo].[Remarks]    Script Date: 06/16/2019 20:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Remarks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BarCode] [bigint] NOT NULL,
	[ReviseStatus] [int] NOT NULL,
	[Remark] [varchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[PrintUnit]    Script Date: 06/16/2019 20:55:43 ******/
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
/****** Object:  Table [dbo].[McDia]    Script Date: 06/16/2019 20:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[McDia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[McDiaGauge] [varchar](50) NOT NULL,
 CONSTRAINT [PK_McDiaGuage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[McDia] ON
INSERT [dbo].[McDia] ([Id], [McDiaGauge]) VALUES (1, N'36*24')
INSERT [dbo].[McDia] ([Id], [McDiaGauge]) VALUES (2, N'24*36')
SET IDENTITY_INSERT [dbo].[McDia] OFF
/****** Object:  Table [dbo].[McBrand]    Script Date: 06/16/2019 20:55:43 ******/
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
/****** Object:  Table [dbo].[MachineUnit]    Script Date: 06/16/2019 20:55:43 ******/
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
/****** Object:  Table [dbo].[FabricType]    Script Date: 06/16/2019 20:55:43 ******/
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
/****** Object:  Table [dbo].[Buyer]    Script Date: 06/16/2019 20:55:42 ******/
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
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 06/16/2019 20:55:42 ******/
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
/****** Object:  Table [dbo].[Dyeing]    Script Date: 06/16/2019 20:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dyeing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KnitID] [int] NOT NULL,
	[FabricID] [int] NOT NULL,
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
INSERT [dbo].[Dyeing] ([Id], [KnitID], [FabricID], [DyeingUnitID], [BatchNo], [BatchQty], [SerialNo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (5, 22, 4, 4, N'asd', 1, 122, CAST(0x0000AA5C01586BE0 AS DateTime), 3, CAST(0x002D247F018B3BB0 AS DateTime), NULL, NULL, NULL, 2019561, 0, 0)
INSERT [dbo].[Dyeing] ([Id], [KnitID], [FabricID], [DyeingUnitID], [BatchNo], [BatchQty], [SerialNo], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [BarCode], [ReviseStatus], [ApprovedStatus]) VALUES (7, 22, 4, 2, N'asd', 1, 12233, CAST(0x0000AA6000C64DA0 AS DateTime), 3, NULL, 0, CAST(0x0000AA6000C9DFB0 AS DateTime), 3, 2019561, 1, 1)
SET IDENTITY_INSERT [dbo].[Dyeing] OFF
/****** Object:  Table [dbo].[Fabric]    Script Date: 06/16/2019 20:55:43 ******/
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
SET IDENTITY_INSERT [dbo].[Fabric] OFF
/****** Object:  Table [dbo].[Stenter]    Script Date: 06/16/2019 20:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stenter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DyeingID] [int] NOT NULL,
	[WidthSet] [int] NOT NULL,
	[OverFeed] [decimal](18, 2) NOT NULL,
	[Temp] [decimal](18, 2) NOT NULL,
	[Speed] [decimal](18, 2) NOT NULL,
	[Peder] [varchar](50) NOT NULL,
	[Blower] [int] NOT NULL,
	[SoftenerID] [int] NOT NULL,
	[SoftenerGL] [varchar](50) NOT NULL,
	[DIA] [int] NOT NULL,
	[GSM] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Aop]    Script Date: 06/16/2019 20:55:42 ******/
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
/****** Object:  View [dbo].[FabricView]    Script Date: 06/16/2019 20:55:43 ******/
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
/****** Object:  View [dbo].[KnitView]    Script Date: 06/16/2019 20:55:43 ******/
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
                      dbo.Buyer.Id AS BuyerID, dbo.FabricType.Id AS FabricTypeID, dbo.McDia.McDiaGauge
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
            TopColumn = 0
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
               Bottom = 98
               Right = 536
            End
            DisplayFlags = 280
            TopColumn = 14
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
/****** Object:  View [dbo].[DyeingView]    Script Date: 06/16/2019 20:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DyeingView]
AS
SELECT     dbo.Dyeing.Id, dbo.KnitView.GreyWidth, dbo.KnitView.GreyGSM, dbo.KnitView.YarnBrand, dbo.KnitView.YarnLot, dbo.KnitView.YarnCount, dbo.KnitView.KnitUnit, dbo.KnitView.McBrand, 
                      dbo.KnitView.Color, dbo.KnitView.OrderNo, dbo.KnitView.FabricName, dbo.KnitView.BuyerName, dbo.KnitView.ChallanNo, dbo.KnitView.DeliveryDate, UserInfo_1.Name AS CreateByName, 
                      dbo.UserInfo.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, dbo.KnitView.McDiaGauge, dbo.KnitView.FabricTypeID, dbo.KnitView.BuyerID, dbo.KnitView.FabricCreateTime, 
                      dbo.KnitView.DiaGaugeID, dbo.KnitView.YarnCountID, dbo.KnitView.KnitUnitID, dbo.KnitView.McBrandID, dbo.Dyeing.KnitID, dbo.Dyeing.FabricID, dbo.Dyeing.DyeingUnitID, dbo.Dyeing.BatchNo, 
                      dbo.Dyeing.BatchQty, dbo.Dyeing.SerialNo, dbo.Dyeing.CreateTime, dbo.Dyeing.CreateBy, dbo.Dyeing.UpdateTime, dbo.Dyeing.UpdateBy, dbo.Dyeing.ApprovedTime, dbo.Dyeing.ApprovedBy, 
                      dbo.Dyeing.BarCode, dbo.Dyeing.ReviseStatus, dbo.Dyeing.ApprovedStatus, dbo.DyeingUnit.DyeingUnitName
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
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 33
         Width = 284
         Width = 1500
         Width = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
/****** Object:  View [dbo].[StenterView]    Script Date: 06/16/2019 20:55:43 ******/
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
                      dbo.DyeingView.DeliveryDate, dbo.DyeingView.CreateByName, dbo.DyeingView.UpdateByName, dbo.DyeingView.ApprovedByName, dbo.DyeingView.McDiaGauge, dbo.DyeingView.FabricTypeID, 
                      dbo.DyeingView.BuyerID, dbo.DyeingView.FabricCreateTime, dbo.DyeingView.DiaGaugeID, dbo.DyeingView.YarnCountID, dbo.DyeingView.KnitUnitID, dbo.DyeingView.McBrandID, 
                      dbo.DyeingView.KnitID, dbo.DyeingView.FabricID, dbo.DyeingView.DyeingUnitID, dbo.DyeingView.BatchNo, dbo.DyeingView.BatchQty, dbo.DyeingView.SerialNo, dbo.DyeingView.DyeingUnitName, 
                      dbo.Stenter.ApprovedStatus, dbo.Stenter.SoftenerID
FROM         dbo.Stenter LEFT OUTER JOIN
                      dbo.SoftenerUnit ON dbo.Stenter.SoftenerID = dbo.SoftenerUnit.Id LEFT OUTER JOIN
                      dbo.DyeingView ON dbo.Stenter.DyeingID = dbo.DyeingView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[57] 4[27] 2[3] 3) )"
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
               Bottom = 362
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "SoftenerUnit"
            Begin Extent = 
               Top = 184
               Left = 335
               Bottom = 281
               Right = 495
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
            TopColumn = 5
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StenterView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StenterView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StenterView'
GO
/****** Object:  View [dbo].[AopView]    Script Date: 06/16/2019 20:55:43 ******/
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
                      dbo.Aop.ApprovedStatus, dbo.StenterView.SoftenerGL, dbo.StenterView.SoftenerID
FROM         dbo.Aop LEFT OUTER JOIN
                      dbo.StenterView ON dbo.Aop.StenterID = dbo.StenterView.Id LEFT OUTER JOIN
                      dbo.MachineUnit ON dbo.Aop.MachineType = dbo.MachineUnit.Id LEFT OUTER JOIN
                      dbo.PrintUnit ON dbo.Aop.PrintType = dbo.PrintUnit.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[59] 4[3] 2[27] 3) )"
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
         Begin Table = "StenterView"
            Begin Extent = 
               Top = 22
               Left = 556
               Bottom = 386
               Right = 731
            End
            DisplayFlags = 280
            TopColumn = 33
         End
         Begin Table = "MachineUnit"
            Begin Extent = 
               Top = 250
               Left = 291
               Bottom = 340
               Right = 451
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PrintUnit"
            Begin Extent = 
               Top = 125
               Left = 291
               Bottom = 245
               Right = 451
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
         Width =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AopView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
/****** Object:  View [dbo].[TestView]    Script Date: 06/16/2019 20:55:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TestView]
AS
SELECT     dbo.Test.Id, dbo.Test.AOPID, dbo.Test.FinalWidth, dbo.Test.FinalGSM, dbo.Test.TumbleLength, dbo.Test.TumbleWidth, dbo.Test.TumbleSP, dbo.Test.CreateTime, dbo.Test.CreateBy, 
                      dbo.Test.UpdateTime, dbo.Test.UpdateBy, dbo.Test.ApprovedTime, dbo.Test.ApprovedBy, dbo.Test.BarCode, dbo.Test.ReviseStatus, dbo.Test.ApprovedStatus, dbo.AopView.PrintName, 
                      dbo.AopView.MachineName, dbo.AopView.StenterID, dbo.AopView.PrintType, dbo.AopView.MachineType, dbo.AopView.Softener, dbo.AopView.SoftenerGL, dbo.AopView.SoftenerName, 
                      dbo.AopView.DyeingID, dbo.AopView.GreyWidth, dbo.AopView.GreyGSM, dbo.AopView.YarnBrand, dbo.AopView.YarnLot, dbo.AopView.YarnCount, dbo.AopView.KnitUnit, dbo.AopView.McBrand, 
                      dbo.AopView.Color, dbo.AopView.OrderNo, dbo.AopView.FabricName, dbo.AopView.BuyerName, dbo.AopView.ChallanNo, dbo.AopView.DeliveryDate, dbo.AopView.McDiaGauge, 
                      dbo.AopView.FabricTypeID, dbo.AopView.BuyerID, dbo.AopView.FabricCreateTime, dbo.AopView.DiaGaugeID, dbo.AopView.YarnCountID, dbo.AopView.KnitUnitID, dbo.AopView.McBrandID, 
                      dbo.AopView.KnitID, dbo.AopView.FabricID, dbo.AopView.DyeingUnitID, dbo.AopView.BatchNo, dbo.AopView.SerialNo, dbo.AopView.DyeingUnitName
FROM         dbo.Test LEFT OUTER JOIN
                      dbo.AopView ON dbo.Test.AOPID = dbo.AopView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[21] 2[6] 3) )"
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
         Begin Table = "AopView"
            Begin Extent = 
               Top = 9
               Left = 376
               Bottom = 366
               Right = 549
            End
            DisplayFlags = 280
            TopColumn = 26
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 21
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TestView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TestView'
GO
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 06/16/2019 20:55:42 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_MachineUnit] FOREIGN KEY([MachineType])
REFERENCES [dbo].[MachineUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 06/16/2019 20:55:42 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_PrintUnit] FOREIGN KEY([PrintType])
REFERENCES [dbo].[PrintUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Dyeing_DyeingUnit]    Script Date: 06/16/2019 20:55:42 ******/
ALTER TABLE [dbo].[Dyeing]  WITH CHECK ADD  CONSTRAINT [FK_Dyeing_DyeingUnit] FOREIGN KEY([DyeingUnitID])
REFERENCES [dbo].[DyeingUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Dyeing] CHECK CONSTRAINT [FK_Dyeing_DyeingUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 06/16/2019 20:55:43 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_Buyer] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Buyer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 06/16/2019 20:55:43 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_FabricType] FOREIGN KEY([FabricTypeID])
REFERENCES [dbo].[FabricType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  ForeignKey [FK_Stenter_SoftenerUnit]    Script Date: 06/16/2019 20:55:43 ******/
ALTER TABLE [dbo].[Stenter]  WITH CHECK ADD  CONSTRAINT [FK_Stenter_SoftenerUnit] FOREIGN KEY([SoftenerID])
REFERENCES [dbo].[SoftenerUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stenter] CHECK CONSTRAINT [FK_Stenter_SoftenerUnit]
GO
