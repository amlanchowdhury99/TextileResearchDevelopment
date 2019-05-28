USE [TextileResearchDevelopment]
GO
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Dyeing_DyeingUnit]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Dyeing] DROP CONSTRAINT [FK_Dyeing_DyeingUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  ForeignKey [FK_Stenter_SoftenerUnit]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Stenter] DROP CONSTRAINT [FK_Stenter_SoftenerUnit]
GO
/****** Object:  View [dbo].[DyeingView]    Script Date: 05/28/2019 19:08:28 ******/
DROP VIEW [dbo].[DyeingView]
GO
/****** Object:  View [dbo].[KnitView]    Script Date: 05/28/2019 19:08:28 ******/
DROP VIEW [dbo].[KnitView]
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 05/28/2019 19:08:28 ******/
DROP VIEW [dbo].[FabricView]
GO
/****** Object:  Table [dbo].[Stenter]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Stenter] DROP CONSTRAINT [FK_Stenter_SoftenerUnit]
GO
DROP TABLE [dbo].[Stenter]
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
DROP TABLE [dbo].[Fabric]
GO
/****** Object:  Table [dbo].[Aop]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
DROP TABLE [dbo].[Aop]
GO
/****** Object:  Table [dbo].[Dyeing]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Dyeing] DROP CONSTRAINT [FK_Dyeing_DyeingUnit]
GO
DROP TABLE [dbo].[Dyeing]
GO
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[DyeingUnit]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[Buyer]
GO
/****** Object:  Table [dbo].[FabricType]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[FabricType]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[Test]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[UserInfo]
GO
/****** Object:  Table [dbo].[YarnCount]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[YarnCount]
GO
/****** Object:  Table [dbo].[Knitting]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[Knitting]
GO
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[KnitUnit]
GO
/****** Object:  Table [dbo].[MachineUnit]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[MachineUnit]
GO
/****** Object:  Table [dbo].[McBrand]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[McBrand]
GO
/****** Object:  Table [dbo].[McDiaGuage]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[McDiaGuage]
GO
/****** Object:  Table [dbo].[PrintUnit]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[PrintUnit]
GO
/****** Object:  Table [dbo].[Remarks]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[Remarks]
GO
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 05/28/2019 19:08:28 ******/
DROP TABLE [dbo].[SoftenerUnit]
GO
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 05/28/2019 19:08:28 ******/
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
/****** Object:  Table [dbo].[Remarks]    Script Date: 05/28/2019 19:08:28 ******/
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
/****** Object:  Table [dbo].[PrintUnit]    Script Date: 05/28/2019 19:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrintName] [varchar](50) NOT NULL,
	[BarCode] [bigint] NOT NULL,
	[ReviseStatus] [int] NOT NULL,
 CONSTRAINT [PK_PrintUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[McDiaGuage]    Script Date: 05/28/2019 19:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[McDiaGuage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[McDiaGuage] [varchar](50) NOT NULL,
 CONSTRAINT [PK_McDiaGuage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[McDiaGuage] ON
INSERT [dbo].[McDiaGuage] ([Id], [McDiaGuage]) VALUES (1, N'36*24')
INSERT [dbo].[McDiaGuage] ([Id], [McDiaGuage]) VALUES (2, N'24*36')
SET IDENTITY_INSERT [dbo].[McDiaGuage] OFF
/****** Object:  Table [dbo].[McBrand]    Script Date: 05/28/2019 19:08:28 ******/
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
SET IDENTITY_INSERT [dbo].[McBrand] OFF
/****** Object:  Table [dbo].[MachineUnit]    Script Date: 05/28/2019 19:08:28 ******/
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
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 05/28/2019 19:08:28 ******/
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
SET IDENTITY_INSERT [dbo].[KnitUnit] OFF
/****** Object:  Table [dbo].[Knitting]    Script Date: 05/28/2019 19:08:28 ******/
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
/****** Object:  Table [dbo].[YarnCount]    Script Date: 05/28/2019 19:08:28 ******/
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
SET IDENTITY_INSERT [dbo].[YarnCount] OFF
/****** Object:  Table [dbo].[UserInfo]    Script Date: 05/28/2019 19:08:28 ******/
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
/****** Object:  Table [dbo].[Test]    Script Date: 05/28/2019 19:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FabricType]    Script Date: 05/28/2019 19:08:28 ******/
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
/****** Object:  Table [dbo].[Buyer]    Script Date: 05/28/2019 19:08:28 ******/
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
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 05/28/2019 19:08:28 ******/
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
SET IDENTITY_INSERT [dbo].[DyeingUnit] OFF
/****** Object:  Table [dbo].[Dyeing]    Script Date: 05/28/2019 19:08:28 ******/
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
 CONSTRAINT [PK_Dyeing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aop]    Script Date: 05/28/2019 19:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [PK_Aop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 05/28/2019 19:08:28 ******/
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
SET IDENTITY_INSERT [dbo].[Fabric] OFF
/****** Object:  Table [dbo].[Stenter]    Script Date: 05/28/2019 19:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stenter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WidthSet] [int] NOT NULL,
	[Overfeed] [decimal](18, 2) NOT NULL,
	[Temp] [decimal](18, 2) NOT NULL,
	[Speed] [decimal](18, 2) NOT NULL,
	[Peder] [varchar](50) NOT NULL,
	[Blower] [int] NOT NULL,
	[Softener] [int] NOT NULL,
	[SoftenerGL] [varchar](50) NOT NULL,
	[Dia] [int] NOT NULL,
	[GSM] [int] NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[BarCode] [bigint] NOT NULL,
	[ReviseStatus] [int] NOT NULL,
 CONSTRAINT [PK_Stenter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 05/28/2019 19:08:28 ******/
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
/****** Object:  View [dbo].[KnitView]    Script Date: 05/28/2019 19:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KnitView]
AS
SELECT     dbo.Knitting.Id AS KnitId, dbo.Knitting.FabricID, dbo.Knitting.DiaGaugeID, dbo.Knitting.YarnCountID, dbo.Knitting.YarnBrand, dbo.Knitting.YarnLot, dbo.Knitting.StitchLength, dbo.Knitting.KnitUnitID, 
                      dbo.Knitting.MCNO, dbo.Knitting.MCRPM, dbo.Knitting.GreyWidth, dbo.Knitting.GreyGSM, dbo.Knitting.TumbleWidth, dbo.Knitting.TumbleGSM, dbo.Knitting.McBrandID, dbo.Knitting.ReviseStatus, 
                      dbo.Knitting.ApprovedStatus, dbo.Fabric.ChallanNo, dbo.Fabric.DeliveryDate, dbo.Buyer.BuyerName, dbo.FabricType.FabricName, dbo.Fabric.OrderNo, dbo.Fabric.Color, dbo.McBrand.McBrand, 
                      dbo.KnitUnit.KnitUnit, dbo.McDiaGuage.McDiaGuage, dbo.YarnCount.YarnCount, dbo.Knitting.BarCode, dbo.Knitting.CreateBy, dbo.Knitting.UpdateBy, dbo.Knitting.ApprovedBy, 
                      dbo.Knitting.CreateTime, dbo.Knitting.UpdateTime, dbo.Knitting.ApprovedTime, dbo.UserInfo.Name AS CreateByName, UserInfo_2.Name AS UpdateByName, UserInfo_1.Name AS ApprovedByName, 
                      dbo.Fabric.CreateTime AS FabricCreateTime, dbo.Buyer.Id AS BuyerID, dbo.FabricType.Id AS FabricTypeID
FROM         dbo.KnitUnit RIGHT OUTER JOIN
                      dbo.UserInfo RIGHT OUTER JOIN
                      dbo.Knitting LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Knitting.ApprovedBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Knitting.UpdateBy = UserInfo_2.Id ON dbo.UserInfo.Id = dbo.Knitting.CreateBy LEFT OUTER JOIN
                      dbo.McBrand ON dbo.Knitting.McBrandID = dbo.McBrand.Id ON dbo.KnitUnit.Id = dbo.Knitting.KnitUnitID LEFT OUTER JOIN
                      dbo.YarnCount ON dbo.Knitting.YarnCountID = dbo.YarnCount.Id LEFT OUTER JOIN
                      dbo.McDiaGuage ON dbo.Knitting.DiaGaugeID = dbo.McDiaGuage.Id LEFT OUTER JOIN
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
         Begin Table = "KnitUnit"
            Begin Extent = 
               Top = 269
               Left = 376
               Bottom = 359
               Right = 536
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
         Begin Table = "McDiaGuage"
            Begin Extent = 
               Top = 97
               Left = 376
               Bottom = 186
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
            DisplayFl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ags = 280
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
/****** Object:  View [dbo].[DyeingView]    Script Date: 05/28/2019 19:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DyeingView]
AS
SELECT     dbo.Dyeing.*, dbo.KnitView.GreyWidth, dbo.KnitView.GreyGSM, dbo.KnitView.YarnBrand, dbo.KnitView.YarnLot, dbo.KnitView.YarnCount, dbo.KnitView.McDiaGuage, dbo.KnitView.KnitUnit, 
                      dbo.KnitView.McBrand, dbo.KnitView.Color, dbo.KnitView.OrderNo, dbo.KnitView.FabricName, dbo.KnitView.BuyerName, dbo.KnitView.ChallanNo, dbo.KnitView.DeliveryDate, 
                      UserInfo_1.Name AS CreateByName, dbo.UserInfo.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName
FROM         dbo.Dyeing LEFT OUTER JOIN
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
         Configuration = "(H (1[52] 4[28] 2[7] 3) )"
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
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 238
               Left = 295
               Bottom = 320
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 170
               Left = 296
               Bottom = 242
               Right = 463
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_MachineUnit] FOREIGN KEY([MachineType])
REFERENCES [dbo].[MachineUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_PrintUnit] FOREIGN KEY([PrintType])
REFERENCES [dbo].[PrintUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Dyeing_DyeingUnit]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Dyeing]  WITH CHECK ADD  CONSTRAINT [FK_Dyeing_DyeingUnit] FOREIGN KEY([DyeingUnitID])
REFERENCES [dbo].[DyeingUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Dyeing] CHECK CONSTRAINT [FK_Dyeing_DyeingUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_Buyer] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Buyer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_FabricType] FOREIGN KEY([FabricTypeID])
REFERENCES [dbo].[FabricType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  ForeignKey [FK_Stenter_SoftenerUnit]    Script Date: 05/28/2019 19:08:28 ******/
ALTER TABLE [dbo].[Stenter]  WITH CHECK ADD  CONSTRAINT [FK_Stenter_SoftenerUnit] FOREIGN KEY([Softener])
REFERENCES [dbo].[SoftenerUnit] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Stenter] CHECK CONSTRAINT [FK_Stenter_SoftenerUnit]
GO
