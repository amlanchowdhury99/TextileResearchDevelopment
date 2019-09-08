USE [TextileResearchDevelopment]
GO
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 09/08/2019 21:11:00 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 09/08/2019 21:11:00 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 09/08/2019 21:11:03 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 09/08/2019 21:11:03 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  View [dbo].[BrushView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[BrushView]
GO
/****** Object:  View [dbo].[CompactingView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[CompactingView]
GO
/****** Object:  View [dbo].[CWView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[CWView]
GO
/****** Object:  View [dbo].[DryerView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[DryerView]
GO
/****** Object:  View [dbo].[DyeingView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[DyeingView]
GO
/****** Object:  View [dbo].[HSPView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[HSPView]
GO
/****** Object:  View [dbo].[KnitView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[KnitView]
GO
/****** Object:  View [dbo].[PeachView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[PeachView]
GO
/****** Object:  View [dbo].[PrintView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[PrintView]
GO
/****** Object:  View [dbo].[StenterView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[StenterView]
GO
/****** Object:  View [dbo].[SingeingView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[SingeingView]
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[FabricView]
GO
/****** Object:  Table [dbo].[Aop]    Script Date: 09/08/2019 21:11:00 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
DROP TABLE [dbo].[Aop]
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 09/08/2019 21:11:03 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
DROP TABLE [dbo].[Fabric]
GO
/****** Object:  View [dbo].[UserView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[UserView]
GO
/****** Object:  View [dbo].[YDView]    Script Date: 09/08/2019 21:11:08 ******/
DROP VIEW [dbo].[YDView]
GO
/****** Object:  Table [dbo].[YarnColorType]    Script Date: 09/08/2019 21:11:07 ******/
DROP TABLE [dbo].[YarnColorType]
GO
/****** Object:  Table [dbo].[YarnCompositionType]    Script Date: 09/08/2019 21:11:07 ******/
DROP TABLE [dbo].[YarnCompositionType]
GO
/****** Object:  Table [dbo].[YarnCountType]    Script Date: 09/08/2019 21:11:07 ******/
DROP TABLE [dbo].[YarnCountType]
GO
/****** Object:  Table [dbo].[YarnDetails]    Script Date: 09/08/2019 21:11:07 ******/
DROP TABLE [dbo].[YarnDetails]
GO
/****** Object:  Table [dbo].[YarnDyedRepeat]    Script Date: 09/08/2019 21:11:07 ******/
DROP TABLE [dbo].[YarnDyedRepeat]
GO
/****** Object:  Table [dbo].[YarnSupplierType]    Script Date: 09/08/2019 21:11:07 ******/
DROP TABLE [dbo].[YarnSupplierType]
GO
/****** Object:  Table [dbo].[YarnType]    Script Date: 09/08/2019 21:11:08 ******/
DROP TABLE [dbo].[YarnType]
GO
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 09/08/2019 21:11:05 ******/
DROP TABLE [dbo].[SoftenerUnit]
GO
/****** Object:  Table [dbo].[SProductionType]    Script Date: 09/08/2019 21:11:06 ******/
DROP TABLE [dbo].[SProductionType]
GO
/****** Object:  Table [dbo].[Stenter]    Script Date: 09/08/2019 21:11:06 ******/
DROP TABLE [dbo].[Stenter]
GO
/****** Object:  Table [dbo].[StenterMcNoType]    Script Date: 09/08/2019 21:11:06 ******/
DROP TABLE [dbo].[StenterMcNoType]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 09/08/2019 21:11:06 ******/
DROP TABLE [dbo].[UserInfo]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 09/08/2019 21:11:06 ******/
DROP TABLE [dbo].[UserRole]
GO
/****** Object:  Table [dbo].[FabricProcess]    Script Date: 09/08/2019 21:11:03 ******/
DROP TABLE [dbo].[FabricProcess]
GO
/****** Object:  Table [dbo].[FabricType]    Script Date: 09/08/2019 21:11:03 ******/
DROP TABLE [dbo].[FabricType]
GO
/****** Object:  Table [dbo].[Dyeing]    Script Date: 09/08/2019 21:11:02 ******/
DROP TABLE [dbo].[Dyeing]
GO
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 09/08/2019 21:11:02 ******/
DROP TABLE [dbo].[DyeingUnit]
GO
/****** Object:  Table [dbo].[Dryer]    Script Date: 09/08/2019 21:11:02 ******/
DROP TABLE [dbo].[Dryer]
GO
/****** Object:  Table [dbo].[DryerMcNoType]    Script Date: 09/08/2019 21:11:02 ******/
DROP TABLE [dbo].[DryerMcNoType]
GO
/****** Object:  Table [dbo].[CompositionType]    Script Date: 09/08/2019 21:11:01 ******/
DROP TABLE [dbo].[CompositionType]
GO
/****** Object:  Table [dbo].[ContinueWashing]    Script Date: 09/08/2019 21:11:01 ******/
DROP TABLE [dbo].[ContinueWashing]
GO
/****** Object:  Table [dbo].[CProductionType]    Script Date: 09/08/2019 21:11:01 ******/
DROP TABLE [dbo].[CProductionType]
GO
/****** Object:  Table [dbo].[CWMcNoType]    Script Date: 09/08/2019 21:11:02 ******/
DROP TABLE [dbo].[CWMcNoType]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 09/08/2019 21:11:00 ******/
DROP TABLE [dbo].[Buyer]
GO
/****** Object:  Table [dbo].[Compacting]    Script Date: 09/08/2019 21:11:01 ******/
DROP TABLE [dbo].[Compacting]
GO
/****** Object:  Table [dbo].[CompactingMcNoType]    Script Date: 09/08/2019 21:11:01 ******/
DROP TABLE [dbo].[CompactingMcNoType]
GO
/****** Object:  Table [dbo].[Brush]    Script Date: 09/08/2019 21:11:00 ******/
DROP TABLE [dbo].[Brush]
GO
/****** Object:  Table [dbo].[Peach]    Script Date: 09/08/2019 21:11:04 ******/
DROP TABLE [dbo].[Peach]
GO
/****** Object:  Table [dbo].[Knitting]    Script Date: 09/08/2019 21:11:03 ******/
DROP TABLE [dbo].[Knitting]
GO
/****** Object:  Table [dbo].[KnittingMachine]    Script Date: 09/08/2019 21:11:04 ******/
DROP TABLE [dbo].[KnittingMachine]
GO
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 09/08/2019 21:11:04 ******/
DROP TABLE [dbo].[KnitUnit]
GO
/****** Object:  Table [dbo].[Remarks]    Script Date: 09/08/2019 21:11:05 ******/
DROP TABLE [dbo].[Remarks]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 09/08/2019 21:11:05 ******/
DROP TABLE [dbo].[Report]
GO
/****** Object:  Table [dbo].[RolePermission]    Script Date: 09/08/2019 21:11:05 ******/
DROP TABLE [dbo].[RolePermission]
GO
/****** Object:  Table [dbo].[Singeing]    Script Date: 09/08/2019 21:11:05 ******/
DROP TABLE [dbo].[Singeing]
GO
/****** Object:  Table [dbo].[PrintFactoryType]    Script Date: 09/08/2019 21:11:04 ******/
DROP TABLE [dbo].[PrintFactoryType]
GO
/****** Object:  Table [dbo].[PrintInfo]    Script Date: 09/08/2019 21:11:04 ******/
DROP TABLE [dbo].[PrintInfo]
GO
/****** Object:  Table [dbo].[PrintMcNoType]    Script Date: 09/08/2019 21:11:05 ******/
DROP TABLE [dbo].[PrintMcNoType]
GO
/****** Object:  Table [dbo].[HSP]    Script Date: 09/08/2019 21:11:03 ******/
DROP TABLE [dbo].[HSP]
GO
/****** Object:  Table [dbo].[HSPMcNoType]    Script Date: 09/08/2019 21:11:03 ******/
DROP TABLE [dbo].[HSPMcNoType]
GO
/****** Object:  Table [dbo].[HSPMcNoType]    Script Date: 09/08/2019 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HSPMcNoType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HSPMcNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_HSPMcNoType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HSP]    Script Date: 09/08/2019 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HSP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[HPMcNoId] [int] NOT NULL,
	[HPTemp] [varchar](150) NOT NULL,
	[HPSpeed] [varchar](150) NOT NULL,
	[HPTime] [varchar](150) NOT NULL,
	[HPFeed] [varchar](150) NOT NULL,
	[HPStrech] [varchar](150) NOT NULL,
	[HPChemical] [varchar](150) NOT NULL,
	[HPDia] [varchar](150) NOT NULL,
	[HPGSM] [varchar](150) NOT NULL,
	[HPShrinkage] [varchar](150) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_HSP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HSP] ON
INSERT [dbo].[HSP] ([Id], [FabricID], [HPMcNoId], [HPTemp], [HPSpeed], [HPTime], [HPFeed], [HPStrech], [HPChemical], [HPDia], [HPGSM], [HPShrinkage], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [ReviseStatus], [ApprovedStatus]) VALUES (1, 7, 1, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1', CAST(0x0000AAC201186D10 AS DateTime), 3, NULL, NULL, CAST(0x0000AAC2011B7280 AS DateTime), 3, 0, 1)
SET IDENTITY_INSERT [dbo].[HSP] OFF
/****** Object:  Table [dbo].[PrintMcNoType]    Script Date: 09/08/2019 21:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintMcNoType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrintMcNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MachineUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PrintMcNoType] ON
INSERT [dbo].[PrintMcNoType] ([Id], [PrintMcNo]) VALUES (1, N'Auto')
INSERT [dbo].[PrintMcNoType] ([Id], [PrintMcNo]) VALUES (2, N'Manual')
SET IDENTITY_INSERT [dbo].[PrintMcNoType] OFF
/****** Object:  Table [dbo].[PrintInfo]    Script Date: 09/08/2019 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[PrintFactoryID] [int] NOT NULL,
	[PrintCoverage] [varchar](150) NOT NULL,
	[PrintTypeID] [int] NOT NULL,
	[MachineTypeID] [int] NOT NULL,
	[OrderInfo] [varchar](150) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_PrintInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrintFactoryType]    Script Date: 09/08/2019 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintFactoryType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrintFactory] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PrintUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PrintFactoryType] ON
INSERT [dbo].[PrintFactoryType] ([Id], [PrintFactory]) VALUES (1, N'Rubber')
INSERT [dbo].[PrintFactoryType] ([Id], [PrintFactory]) VALUES (2, N'Pigment')
SET IDENTITY_INSERT [dbo].[PrintFactoryType] OFF
/****** Object:  Table [dbo].[Singeing]    Script Date: 09/08/2019 21:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Singeing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[SFHBurner1] [varchar](150) NOT NULL,
	[SFHBurner2] [varchar](150) NOT NULL,
	[SFWBurner1] [varchar](150) NOT NULL,
	[SFWBurner2] [varchar](150) NOT NULL,
	[SSpeed] [varchar](150) NOT NULL,
	[SBurner] [varchar](150) NOT NULL,
	[SFlamePosition] [varchar](150) NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Singeing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RolePermission]    Script Date: 09/08/2019 21:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RolePermission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Crud] [tinyint] NULL,
	[Approval] [tinyint] NULL,
	[LibrarySet] [tinyint] NULL,
	[Roles] [tinyint] NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RolePermission] ON
INSERT [dbo].[RolePermission] ([Id], [UserName], [Crud], [Approval], [LibrarySet], [Roles]) VALUES (7, N'amlan@gmail.com', 1, 1, 1, 1)
INSERT [dbo].[RolePermission] ([Id], [UserName], [Crud], [Approval], [LibrarySet], [Roles]) VALUES (14, N'amlan@gmail.com', 1, 1, 1, 2)
INSERT [dbo].[RolePermission] ([Id], [UserName], [Crud], [Approval], [LibrarySet], [Roles]) VALUES (15, N'amlan@gmail.com', 1, 1, 1, 3)
INSERT [dbo].[RolePermission] ([Id], [UserName], [Crud], [Approval], [LibrarySet], [Roles]) VALUES (16, N'amlan@gmail.com', 1, 1, 1, 4)
SET IDENTITY_INSERT [dbo].[RolePermission] OFF
/****** Object:  Table [dbo].[Report]    Script Date: 09/08/2019 21:11:05 ******/
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
/****** Object:  Table [dbo].[Remarks]    Script Date: 09/08/2019 21:11:05 ******/
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
INSERT [dbo].[Remarks] ([Id], [TestReportID], [BarCode], [ReviseStatus], [Remarks], [ApprovedStatus], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy]) VALUES (4, 14, 20196161, 1, N'dasd', 1, CAST(0x0000AA7E00A36BF0 AS DateTime), 3, NULL, 0, CAST(0x0000AA8000C766E0 AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Remarks] OFF
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 09/08/2019 21:11:04 ******/
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
INSERT [dbo].[KnitUnit] ([Id], [KnitUnit]) VALUES (1, N'Floor1')
INSERT [dbo].[KnitUnit] ([Id], [KnitUnit]) VALUES (2, N'Floor2')
INSERT [dbo].[KnitUnit] ([Id], [KnitUnit]) VALUES (4, N'Floor3')
SET IDENTITY_INSERT [dbo].[KnitUnit] OFF
/****** Object:  Table [dbo].[KnittingMachine]    Script Date: 09/08/2019 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KnittingMachine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[McNo] [int] NOT NULL,
	[McDia] [int] NOT NULL,
	[McGauge] [int] NOT NULL,
	[McBrand] [varchar](50) NOT NULL,
 CONSTRAINT [PK_KnittingMachine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KnittingMachine] ON
INSERT [dbo].[KnittingMachine] ([Id], [McNo], [McDia], [McGauge], [McBrand]) VALUES (1, 1, 2, 22, N'PUMA')
INSERT [dbo].[KnittingMachine] ([Id], [McNo], [McDia], [McGauge], [McBrand]) VALUES (4, 23, 22, 22, N'Fukuhara')
SET IDENTITY_INSERT [dbo].[KnittingMachine] OFF
/****** Object:  Table [dbo].[Knitting]    Script Date: 09/08/2019 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Knitting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[BarCode] [varchar](200) NOT NULL,
	[ErpNo] [varchar](150) NOT NULL,
	[McNoID] [int] NOT NULL,
	[McSpeed] [int] NULL,
	[SL] [decimal](18, 2) NOT NULL,
	[YarnTension] [decimal](18, 2) NULL,
	[LycraTension] [decimal](18, 2) NULL,
	[GreyDia] [int] NULL,
	[GreyGSM] [int] NULL,
	[ReqDia] [int] NOT NULL,
	[ReqGSM] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateBy] [int] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Knitting_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Knitting] ON
INSERT [dbo].[Knitting] ([Id], [FabricID], [BarCode], [ErpNo], [McNoID], [McSpeed], [SL], [YarnTension], [LycraTension], [GreyDia], [GreyGSM], [ReqDia], [ReqGSM], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedBy], [ApprovedTime], [ReviseStatus], [ApprovedStatus]) VALUES (7, 7, N'20198311', N'1', 1, 1, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, 1, 1, 1, CAST(0x0000AABE00F00D20 AS DateTime), 3, NULL, 0, 0, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[Knitting] OFF
/****** Object:  Table [dbo].[Peach]    Script Date: 09/08/2019 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Peach](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[PTaker] [varchar](150) NOT NULL,
	[PPlaiter] [varchar](150) NOT NULL,
	[PReturn] [varchar](150) NOT NULL,
	[PTension] [varchar](150) NOT NULL,
	[PRPM] [varchar](150) NOT NULL,
	[PBrush] [varchar](150) NOT NULL,
	[PSpeed] [varchar](150) NOT NULL,
	[PDia] [varchar](150) NOT NULL,
	[PGSM] [varchar](150) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Peach] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brush]    Script Date: 09/08/2019 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brush](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[BUpperPile] [varchar](150) NOT NULL,
	[BUpperCounterPile] [varchar](150) NOT NULL,
	[BUpperDrumTension] [varchar](150) NOT NULL,
	[BUpperDrumRPM] [varchar](150) NOT NULL,
	[BLowerPile] [varchar](150) NOT NULL,
	[BLowerCounterPile] [varchar](150) NOT NULL,
	[BLowerDrumTension] [varchar](150) NOT NULL,
	[BLowerDrumRPM] [varchar](150) NOT NULL,
	[BRemarks] [nchar](10) NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Brush] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompactingMcNoType]    Script Date: 09/08/2019 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompactingMcNoType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompactingMcNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CompactingMcNoType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compacting]    Script Date: 09/08/2019 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compacting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[CMcNoID] [varchar](150) NOT NULL,
	[CTemp] [varchar](150) NOT NULL,
	[CFeed] [varchar](150) NOT NULL,
	[CSpeed] [varchar](150) NOT NULL,
	[CSteam] [varchar](150) NOT NULL,
	[CCompacting] [varchar](150) NOT NULL,
	[CDia] [varchar](150) NOT NULL,
	[CGSM] [varchar](150) NOT NULL,
	[CProductionTypeID] [int] NOT NULL,
	[CRemarks] [varchar](150) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Compacting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 09/08/2019 21:11:00 ******/
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
INSERT [dbo].[Buyer] ([Id], [BuyerName]) VALUES (1, N'PUMA')
INSERT [dbo].[Buyer] ([Id], [BuyerName]) VALUES (2, N'DECATHLON')
INSERT [dbo].[Buyer] ([Id], [BuyerName]) VALUES (4, N'H&M')
SET IDENTITY_INSERT [dbo].[Buyer] OFF
/****** Object:  Table [dbo].[CWMcNoType]    Script Date: 09/08/2019 21:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CWMcNoType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CWMcNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CWMcNoType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CWMcNoType] ON
INSERT [dbo].[CWMcNoType] ([Id], [CWMcNo]) VALUES (1, N'2001')
INSERT [dbo].[CWMcNoType] ([Id], [CWMcNo]) VALUES (2, N'2002')
SET IDENTITY_INSERT [dbo].[CWMcNoType] OFF
/****** Object:  Table [dbo].[CProductionType]    Script Date: 09/08/2019 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CProductionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CProduction] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CProductionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContinueWashing]    Script Date: 09/08/2019 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContinueWashing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[CWMcNoId] [int] NOT NULL,
	[CWTemp] [varchar](150) NOT NULL,
	[CWChemical] [varchar](150) NOT NULL,
	[CWSpeed] [varchar](150) NOT NULL,
	[CWWELength] [varchar](150) NOT NULL,
	[CWSEWidth] [varchar](150) NOT NULL,
	[CWWashDia] [varchar](150) NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_ContinueWashing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ContinueWashing] ON
INSERT [dbo].[ContinueWashing] ([Id], [FabricID], [CWMcNoId], [CWTemp], [CWChemical], [CWSpeed], [CWWELength], [CWSEWidth], [CWWashDia], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [ReviseStatus], [ApprovedStatus]) VALUES (1, 7, 1, N'22', N'22', N'33', N'33', N'33', N'2', CAST(0x0000AAC200B7BF10 AS DateTime), 3, NULL, NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ContinueWashing] ([Id], [FabricID], [CWMcNoId], [CWTemp], [CWChemical], [CWSpeed], [CWWELength], [CWSEWidth], [CWWashDia], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [ReviseStatus], [ApprovedStatus]) VALUES (2, 10, 2, N'2223', N'223', N'333', N'333', N'333', N'21', CAST(0x0000AAC200B8D850 AS DateTime), 3, NULL, NULL, CAST(0x0000AAC200BE5690 AS DateTime), 3, 0, 1)
SET IDENTITY_INSERT [dbo].[ContinueWashing] OFF
/****** Object:  Table [dbo].[CompositionType]    Script Date: 09/08/2019 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompositionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Composition] [varchar](150) NOT NULL,
 CONSTRAINT [PK_CompositionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CompositionType] ON
INSERT [dbo].[CompositionType] ([Id], [Composition]) VALUES (1, N'95% Cotton 5% Elastane')
SET IDENTITY_INSERT [dbo].[CompositionType] OFF
/****** Object:  Table [dbo].[DryerMcNoType]    Script Date: 09/08/2019 21:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DryerMcNoType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DryerMcNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DryerMcNoType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dryer]    Script Date: 09/08/2019 21:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dryer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[DRMcNoID] [int] NOT NULL,
	[DRTemp] [varchar](150) NOT NULL,
	[DRFeed] [varchar](150) NOT NULL,
	[DRSpeed] [varchar](150) NOT NULL,
	[DRStreching] [varchar](150) NOT NULL,
	[DRChemical] [varchar](150) NOT NULL,
	[DRDia] [varchar](150) NOT NULL,
	[DRGSM] [varchar](150) NOT NULL,
	[DRShrinkage] [varchar](150) NOT NULL,
	[Remarks] [varchar](150) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Dryer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 09/08/2019 21:11:02 ******/
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
INSERT [dbo].[DyeingUnit] ([Id], [DyeingUnitName]) VALUES (1, N'Dyeing Floor1')
INSERT [dbo].[DyeingUnit] ([Id], [DyeingUnitName]) VALUES (2, N'Dyeing Floor2')
INSERT [dbo].[DyeingUnit] ([Id], [DyeingUnitName]) VALUES (4, N'Dyeing Floor3')
SET IDENTITY_INSERT [dbo].[DyeingUnit] OFF
/****** Object:  Table [dbo].[Dyeing]    Script Date: 09/08/2019 21:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dyeing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[DMC] [varchar](150) NOT NULL,
	[DSpeed] [varchar](150) NOT NULL,
	[DEnzy] [varchar](150) NOT NULL,
	[Recipe] [varchar](350) NOT NULL,
	[RecipeNo] [varchar](150) NOT NULL,
	[Comments] [varchar](150) NOT NULL,
	[DyeingTime] [varchar](150) NOT NULL,
	[RFTNoID] [int] NOT NULL,
	[Dyebath] [varchar](150) NOT NULL,
	[Whiteness] [varchar](150) NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
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
/****** Object:  Table [dbo].[FabricType]    Script Date: 09/08/2019 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FabricType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FabricType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FabricType] ON
INSERT [dbo].[FabricType] ([Id], [FabricTypeName]) VALUES (1, N'PP')
INSERT [dbo].[FabricType] ([Id], [FabricTypeName]) VALUES (2, N'Photo')
INSERT [dbo].[FabricType] ([Id], [FabricTypeName]) VALUES (4, N'PP')
SET IDENTITY_INSERT [dbo].[FabricType] OFF
/****** Object:  Table [dbo].[FabricProcess]    Script Date: 09/08/2019 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FabricProcess](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BarCode] [int] NOT NULL,
	[Knitting] [int] NOT NULL,
	[CW] [int] NOT NULL,
	[HSP] [int] NOT NULL,
	[Singeing] [int] NOT NULL,
	[Dyeing] [int] NOT NULL,
	[Dryer] [int] NOT NULL,
	[Stenter] [int] NOT NULL,
	[Compacting] [int] NOT NULL,
	[Peach] [int] NOT NULL,
	[Brush] [int] NOT NULL,
	[PrintInfo] [int] NOT NULL,
	[QC] [int] NOT NULL,
 CONSTRAINT [PK_FabricProcess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FabricProcess] ON
INSERT [dbo].[FabricProcess] ([Id], [BarCode], [Knitting], [CW], [HSP], [Singeing], [Dyeing], [Dryer], [Stenter], [Compacting], [Peach], [Brush], [PrintInfo], [QC]) VALUES (8, 20198311, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[FabricProcess] ([Id], [BarCode], [Knitting], [CW], [HSP], [Singeing], [Dyeing], [Dryer], [Stenter], [Compacting], [Peach], [Brush], [PrintInfo], [QC]) VALUES (9, 20198312, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[FabricProcess] OFF
/****** Object:  Table [dbo].[UserRole]    Script Date: 09/08/2019 21:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Fabric] [tinyint] NULL,
	[Knitting] [tinyint] NULL,
	[Washing] [tinyint] NULL,
	[HeatSetting] [tinyint] NULL,
	[Singeing] [tinyint] NULL,
	[Dyeing] [tinyint] NULL,
	[Dryer] [tinyint] NULL,
	[Stenter] [tinyint] NULL,
	[Compacting] [tinyint] NULL,
	[Peach] [tinyint] NULL,
	[Brush] [tinyint] NULL,
	[PrintInfo] [tinyint] NULL,
	[QC] [tinyint] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON
INSERT [dbo].[UserRole] ([Id], [UserName], [Fabric], [Knitting], [Washing], [HeatSetting], [Singeing], [Dyeing], [Dryer], [Stenter], [Compacting], [Peach], [Brush], [PrintInfo], [QC]) VALUES (7, N'amlan@gmail.com', 1, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
/****** Object:  Table [dbo].[UserInfo]    Script Date: 09/08/2019 21:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Date] [date] NULL,
	[PermissionString] [varchar](50) NULL,
	[LogIn] [tinyint] NULL,
	[SuperAdmin] [tinyint] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON
INSERT [dbo].[UserInfo] ([Id], [Name], [UserName], [Password], [Date], [PermissionString], [LogIn], [SuperAdmin]) VALUES (3, N'Amlan Chowdhury', N'amlan@gmail.com', N'as', CAST(0xB23F0B00 AS Date), N'1,2,3,4,5,6,7,8,9,10', 1, NULL)
INSERT [dbo].[UserInfo] ([Id], [Name], [UserName], [Password], [Date], [PermissionString], [LogIn], [SuperAdmin]) VALUES (5, N'Super Admin', N'SuperAdmin@gmail.com', N'urmi@admin', CAST(0xB23F0B00 AS Date), N'1,2,3,4,5,6,7,8,9,10', 0, NULL)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Table [dbo].[StenterMcNoType]    Script Date: 09/08/2019 21:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StenterMcNoType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StenterMcNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StenterMcNoType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stenter]    Script Date: 09/08/2019 21:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stenter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[SMcNoID] [int] NOT NULL,
	[STTemp] [varchar](150) NOT NULL,
	[STFeed] [varchar](150) NOT NULL,
	[STSpeed] [varchar](150) NOT NULL,
	[STStreching] [varchar](150) NOT NULL,
	[STChemical] [varchar](150) NOT NULL,
	[STDia] [varchar](150) NOT NULL,
	[STGSM] [varchar](150) NOT NULL,
	[STShrinkage] [varchar](150) NOT NULL,
	[STProductionTypeID] [int] NOT NULL,
	[STRemarks] [varchar](150) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
 CONSTRAINT [PK_Stenters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SProductionType]    Script Date: 09/08/2019 21:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SProductionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SProduction] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 09/08/2019 21:11:05 ******/
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
INSERT [dbo].[SoftenerUnit] ([Id], [SoftenerName]) VALUES (1, N'NOF')
INSERT [dbo].[SoftenerUnit] ([Id], [SoftenerName]) VALUES (3, N'NS108')
SET IDENTITY_INSERT [dbo].[SoftenerUnit] OFF
/****** Object:  Table [dbo].[YarnType]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YarnType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YarnName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_YarnType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YarnSupplierType]    Script Date: 09/08/2019 21:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YarnSupplierType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YarnSupplier] [varchar](150) NOT NULL,
 CONSTRAINT [PK_YarnSupplierType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YarnDyedRepeat]    Script Date: 09/08/2019 21:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YarnDyedRepeat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KnitID] [int] NOT NULL,
	[YDRRepeat] [varchar](50) NOT NULL,
	[YDRColor] [varchar](50) NOT NULL,
	[YDRFeederNo] [int] NOT NULL,
	[YDRMeasurement] [decimal](18, 2) NOT NULL,
	[YDRUOM] [varchar](50) NULL,
	[YDRBatchNo] [varchar](100) NOT NULL,
	[YDRCK] [int] NOT NULL,
 CONSTRAINT [PK_YarnDyedRepeat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[YarnDyedRepeat] ON
INSERT [dbo].[YarnDyedRepeat] ([Id], [KnitID], [YDRRepeat], [YDRColor], [YDRFeederNo], [YDRMeasurement], [YDRUOM], [YDRBatchNo], [YDRCK]) VALUES (1, 6, N'22', N'222', 22, CAST(22.00 AS Decimal(18, 2)), N'22', N'22', 222)
INSERT [dbo].[YarnDyedRepeat] ([Id], [KnitID], [YDRRepeat], [YDRColor], [YDRFeederNo], [YDRMeasurement], [YDRUOM], [YDRBatchNo], [YDRCK]) VALUES (2, 6, N'22222', N'asd', 22, CAST(111.00 AS Decimal(18, 2)), N'111', N'121', 111)
SET IDENTITY_INSERT [dbo].[YarnDyedRepeat] OFF
/****** Object:  Table [dbo].[YarnDetails]    Script Date: 09/08/2019 21:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YarnDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KnitID] [int] NOT NULL,
	[YDCountID] [int] NOT NULL,
	[YDCompositionID] [int] NOT NULL,
	[YDYarnTypeID] [int] NOT NULL,
	[YDYarnColorID] [int] NOT NULL,
	[YDSupplierID] [int] NOT NULL,
	[Lot] [int] NOT NULL,
	[TPI] [int] NULL,
 CONSTRAINT [PK_YarnDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YarnCountType]    Script Date: 09/08/2019 21:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YarnCountType](
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
SET IDENTITY_INSERT [dbo].[YarnCountType] ON
INSERT [dbo].[YarnCountType] ([Id], [YarnCount]) VALUES (1, N'40SL')
INSERT [dbo].[YarnCountType] ([Id], [YarnCount]) VALUES (2, N'50SL')
INSERT [dbo].[YarnCountType] ([Id], [YarnCount]) VALUES (9, N'60SL')
SET IDENTITY_INSERT [dbo].[YarnCountType] OFF
/****** Object:  Table [dbo].[YarnCompositionType]    Script Date: 09/08/2019 21:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YarnCompositionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YarnComposition] [varchar](50) NOT NULL,
 CONSTRAINT [PK_YarnCompositionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[YarnColorType]    Script Date: 09/08/2019 21:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YarnColorType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YarnColor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_YarnColorType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[YDView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[YDView]
AS
SELECT     dbo.YarnDetails.Id, dbo.YarnDetails.KnitID, dbo.YarnDetails.YDCountID, dbo.YarnDetails.YDCompositionID, dbo.YarnDetails.YDYarnTypeID, dbo.YarnDetails.YDYarnColorID, 
                      dbo.YarnDetails.YDSupplierID, dbo.YarnDetails.Lot, dbo.YarnDetails.TPI, dbo.YarnCountType.YarnCount, dbo.YarnCompositionType.YarnComposition, dbo.YarnType.YarnName, 
                      dbo.YarnSupplierType.YarnSupplier, dbo.YarnColorType.YarnColor
FROM         dbo.YarnDetails LEFT OUTER JOIN
                      dbo.YarnSupplierType ON dbo.YarnDetails.YDSupplierID = dbo.YarnSupplierType.Id LEFT OUTER JOIN
                      dbo.YarnColorType ON dbo.YarnDetails.YDYarnColorID = dbo.YarnColorType.Id LEFT OUTER JOIN
                      dbo.YarnType ON dbo.YarnDetails.YDYarnTypeID = dbo.YarnType.Id LEFT OUTER JOIN
                      dbo.YarnCompositionType ON dbo.YarnDetails.YDCompositionID = dbo.YarnCompositionType.Id LEFT OUTER JOIN
                      dbo.YarnCountType ON dbo.YarnDetails.YDCountID = dbo.YarnCountType.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[35] 2[5] 3) )"
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
         Begin Table = "YarnDetails"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 262
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnSupplierType"
            Begin Extent = 
               Top = 225
               Left = 1272
               Bottom = 315
               Right = 1432
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnColorType"
            Begin Extent = 
               Top = 174
               Left = 1082
               Bottom = 264
               Right = 1242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnType"
            Begin Extent = 
               Top = 104
               Left = 815
               Bottom = 207
               Right = 1012
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnCompositionType"
            Begin Extent = 
               Top = 74
               Left = 599
               Bottom = 164
               Right = 768
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnCountType"
            Begin Extent = 
               Top = 16
               Left = 397
               Bottom = 106
               Right = 557
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'YDView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 11
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'YDView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'YDView'
GO
/****** Object:  View [dbo].[UserView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UserView]
AS
SELECT     dbo.UserRole.Fabric, dbo.UserRole.Knitting, dbo.UserRole.Washing, dbo.UserRole.HeatSetting, dbo.UserRole.Singeing, dbo.UserRole.Dyeing, dbo.UserRole.Dryer, dbo.UserRole.Stenter, 
                      dbo.UserRole.Compacting, dbo.UserRole.Peach, dbo.UserRole.Brush, dbo.UserRole.PrintInfo, dbo.UserRole.QC, dbo.UserInfo.UserName, dbo.UserInfo.Password, dbo.UserInfo.Name, 
                      dbo.UserInfo.Id, dbo.UserInfo.Date, dbo.UserInfo.SuperAdmin
FROM         dbo.UserInfo LEFT OUTER JOIN
                      dbo.UserRole ON dbo.UserInfo.UserName = dbo.UserRole.UserName
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[59] 4[2] 2[20] 3) )"
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
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 234
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserRole"
            Begin Extent = 
               Top = 6
               Left = 604
               Bottom = 295
               Right = 764
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
      Begin ColumnWidths = 19
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserView'
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 09/08/2019 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fabric](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BarCode] [varchar](200) NOT NULL,
	[BuyerID] [int] NOT NULL,
	[FabricTypeID] [int] NOT NULL,
	[CompositionTypeID] [int] NOT NULL,
	[OrderNo] [varchar](150) NOT NULL,
	[Color] [varchar](150) NOT NULL,
	[RefNo] [varchar](150) NOT NULL,
	[BatchNo] [varchar](150) NOT NULL,
	[Season] [varchar](150) NOT NULL,
	[Version] [varchar](150) NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Fabric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Fabric] ON
INSERT [dbo].[Fabric] ([Id], [BarCode], [BuyerID], [FabricTypeID], [CompositionTypeID], [OrderNo], [Color], [RefNo], [BatchNo], [Season], [Version], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime]) VALUES (7, N'20198311', 1, 1, 1, N'asd', N'asd', N'asd', N'asd', N'asd', N'asd', 3, CAST(0x0000AABA00F54510 AS DateTime), NULL, CAST(0x0000AABA00F54510 AS DateTime))
INSERT [dbo].[Fabric] ([Id], [BarCode], [BuyerID], [FabricTypeID], [CompositionTypeID], [OrderNo], [Color], [RefNo], [BatchNo], [Season], [Version], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime]) VALUES (10, N'20198312', 2, 2, 1, N'asd', N'asd', N'asd', N'asd', N'asd', N'asd', 3, CAST(0x0000AABA00FA36B0 AS DateTime), NULL, CAST(0x0000AABA00FA36B0 AS DateTime))
SET IDENTITY_INSERT [dbo].[Fabric] OFF
/****** Object:  Table [dbo].[Aop]    Script Date: 09/08/2019 21:11:00 ******/
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
/****** Object:  View [dbo].[FabricView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FabricView]
AS
SELECT     dbo.Fabric.Id, dbo.Fabric.OrderNo, dbo.Fabric.Color, dbo.Fabric.BarCode, dbo.Fabric.BuyerID, dbo.Fabric.FabricTypeID, dbo.Buyer.BuyerName, dbo.Fabric.UpdateTime, dbo.Fabric.CreateTime, 
                      dbo.Fabric.Season, dbo.Fabric.BatchNo, dbo.Fabric.RefNo, dbo.Fabric.CompositionTypeID, UserInfo_1.Name AS CreateByName, dbo.CompositionType.Composition, 
                      dbo.UserInfo.Name AS UpdateByName, dbo.FabricProcess.Knitting, dbo.FabricProcess.CW, dbo.FabricProcess.HSP, dbo.FabricProcess.Dyeing, dbo.FabricProcess.Dryer, 
                      dbo.FabricProcess.Stenter, dbo.FabricProcess.Compacting, dbo.FabricProcess.Peach, dbo.FabricProcess.Brush, dbo.FabricProcess.PrintInfo, dbo.FabricProcess.QC, dbo.Fabric.Version, 
                      dbo.FabricType.FabricTypeName, dbo.FabricProcess.Singeing
FROM         dbo.Fabric LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Fabric.UpdateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.CompositionType ON dbo.Fabric.CompositionTypeID = dbo.CompositionType.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Fabric.CreateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.FabricType ON dbo.Fabric.FabricTypeID = dbo.FabricType.Id LEFT OUTER JOIN
                      dbo.Buyer ON dbo.Fabric.BuyerID = dbo.Buyer.Id LEFT OUTER JOIN
                      dbo.FabricProcess ON dbo.Fabric.BarCode = dbo.FabricProcess.BarCode
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[5] 2[15] 3) )"
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
               Bottom = 338
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 381
               Left = 304
               Bottom = 500
               Right = 468
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CompositionType"
            Begin Extent = 
               Top = 274
               Left = 836
               Bottom = 382
               Right = 996
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 235
               Left = 319
               Bottom = 355
               Right = 486
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricType"
            Begin Extent = 
               Top = 157
               Left = 836
               Bottom = 266
               Right = 996
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Buyer"
            Begin Extent = 
               Top = 39
               Left = 553
               Bottom = 144
               Right = 713
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricProcess"
            Begin Extent = 
               Top = 10
               Left = 1304
               Bottom = 216
               Right = 1464
            End
          ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FabricView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 30
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FabricView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FabricView'
GO
/****** Object:  View [dbo].[SingeingView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SingeingView]
AS
SELECT     dbo.Singeing.Id, dbo.Singeing.FabricID, dbo.Singeing.SFHBurner1, dbo.Singeing.SFHBurner2, dbo.Singeing.SFWBurner1, dbo.Singeing.SFWBurner2, dbo.Singeing.SSpeed, dbo.Singeing.SBurner, 
                      dbo.Singeing.SFlamePosition, dbo.Singeing.CreateTime, dbo.Singeing.CreateBy, dbo.Singeing.UpdateTime, dbo.Singeing.UpdateBy, dbo.Singeing.ApprovedTime, dbo.Singeing.ApprovedBy, 
                      dbo.Singeing.ReviseStatus, dbo.Singeing.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.RefNo, dbo.FabricView.Composition, 
                      dbo.FabricView.FabricTypeName, dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName
FROM         dbo.Singeing LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Singeing.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Singeing.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Singeing.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.Singeing.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[53] 4[22] 2[7] 3) )"
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
         Begin Table = "Singeing"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 345
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 4
               Left = 351
               Bottom = 81
               Right = 533
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 0
               Left = 782
               Bottom = 120
               Right = 949
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 88
               Left = 996
               Bottom = 208
               Right = 1163
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 210
               Left = 1185
               Bottom = 330
               Right = 1352
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
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
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SingeingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SingeingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SingeingView'
GO
/****** Object:  View [dbo].[StenterView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StenterView]
AS
SELECT     dbo.Stenter.Id, dbo.Stenter.FabricID, dbo.Stenter.SMcNoID, dbo.Stenter.STTemp, dbo.Stenter.STFeed, dbo.Stenter.STSpeed, dbo.Stenter.STStreching, dbo.Stenter.STChemical, dbo.Stenter.STDia, 
                      dbo.Stenter.STGSM, dbo.Stenter.STShrinkage, dbo.Stenter.STProductionTypeID, dbo.Stenter.STRemarks, dbo.Stenter.CreateTime, dbo.Stenter.CreateBy, dbo.Stenter.UpdateTime, 
                      dbo.Stenter.UpdateBy, dbo.Stenter.ApprovedTime, dbo.Stenter.ApprovedBy, dbo.Stenter.ReviseStatus, dbo.Stenter.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, 
                      dbo.FabricView.BuyerName, dbo.FabricView.Composition, dbo.FabricView.FabricTypeName, dbo.FabricView.RefNo, dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, 
                      UserInfo_2.Name AS ApprovedByName, dbo.StenterMcNoType.StenterMcNo, dbo.SProductionType.SProduction
FROM         dbo.Stenter LEFT OUTER JOIN
                      dbo.SProductionType ON dbo.Stenter.STProductionTypeID = dbo.SProductionType.Id LEFT OUTER JOIN
                      dbo.StenterMcNoType ON dbo.Stenter.SMcNoID = dbo.StenterMcNoType.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Stenter.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Stenter.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Stenter.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.Stenter.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[72] 4[6] 2[5] 3) )"
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
               Bottom = 399
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 220
               Left = 1185
               Bottom = 340
               Right = 1352
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 97
               Left = 939
               Bottom = 217
               Right = 1106
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 32
               Left = 699
               Bottom = 152
               Right = 866
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 3
               Left = 407
               Bottom = 110
               Right = 589
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StenterMcNoType"
            Begin Extent = 
               Top = 314
               Left = 547
               Bottom = 404
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SProductionType"
            Begin Extent = 
               Top = 367
               Left = 349
               Bottom = 457
               Right = 509
            End
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StenterView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
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
/****** Object:  View [dbo].[PrintView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PrintView]
AS
SELECT     dbo.PrintInfo.Id, dbo.PrintInfo.FabricID, dbo.PrintInfo.PrintFactoryID, dbo.PrintInfo.PrintCoverage, dbo.PrintInfo.PrintTypeID, dbo.PrintInfo.MachineTypeID, dbo.PrintInfo.OrderInfo, 
                      dbo.PrintInfo.CreateTime, dbo.PrintInfo.CreateBy, dbo.PrintInfo.UpdateTime, dbo.PrintInfo.UpdateBy, dbo.PrintInfo.ApprovedTime, dbo.PrintInfo.ApprovedBy, dbo.PrintInfo.ReviseStatus, 
                      dbo.PrintInfo.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.RefNo, dbo.FabricView.Composition, dbo.FabricView.FabricTypeName, 
                      dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName
FROM         dbo.PrintInfo LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.PrintInfo.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.PrintInfo.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.PrintInfo.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.PrintInfo.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[23] 2[5] 3) )"
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
         Begin Table = "PrintInfo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 299
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 2
               Left = 353
               Bottom = 107
               Right = 535
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 26
               Left = 749
               Bottom = 146
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 101
               Left = 1062
               Bottom = 221
               Right = 1229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 199
               Left = 1268
               Bottom = 319
               Right = 1435
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
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
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrintView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrintView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrintView'
GO
/****** Object:  View [dbo].[PeachView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PeachView]
AS
SELECT     dbo.Peach.Id, dbo.Peach.FabricID, dbo.Peach.PTaker, dbo.Peach.PPlaiter, dbo.Peach.PReturn, dbo.Peach.PTension, dbo.Peach.PRPM, dbo.Peach.PBrush, dbo.Peach.PSpeed, dbo.Peach.PDia, 
                      dbo.Peach.PGSM, dbo.Peach.CreateTime, dbo.Peach.CreateBy, dbo.Peach.UpdateTime, dbo.Peach.UpdateBy, dbo.Peach.ApprovedTime, dbo.Peach.ApprovedBy, dbo.Peach.ReviseStatus, 
                      dbo.Peach.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.RefNo, dbo.FabricView.Composition, dbo.FabricView.BuyerName, dbo.FabricView.FabricTypeName, 
                      dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName
FROM         dbo.Peach LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Peach.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Peach.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Peach.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.Peach.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[63] 4[15] 2[3] 3) )"
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
         Begin Table = "Peach"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 377
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 3
               Left = 358
               Bottom = 130
               Right = 540
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 41
               Left = 857
               Bottom = 158
               Right = 1024
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 106
               Left = 1054
               Bottom = 226
               Right = 1221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 233
               Left = 1255
               Bottom = 353
               Right = 1422
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
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
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PeachView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PeachView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PeachView'
GO
/****** Object:  View [dbo].[KnitView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KnitView]
AS
SELECT     dbo.Knitting.Id, dbo.Knitting.FabricID, dbo.Knitting.GreyGSM, dbo.Knitting.ReviseStatus, dbo.Knitting.ApprovedStatus, dbo.Knitting.BarCode, dbo.Knitting.CreateBy, dbo.Knitting.UpdateBy, 
                      dbo.Knitting.ApprovedBy, dbo.Knitting.CreateTime, dbo.Knitting.UpdateTime, dbo.Knitting.ApprovedTime, dbo.UserInfo.Name AS CreateByName, UserInfo_2.Name AS UpdateByName, 
                      UserInfo_1.Name AS ApprovedByName, dbo.Knitting.YarnTension, dbo.Knitting.LycraTension, dbo.Knitting.GreyDia, dbo.Knitting.ReqDia, dbo.Knitting.ReqGSM, dbo.Knitting.SL, 
                      dbo.Knitting.McSpeed, dbo.Knitting.ErpNo, dbo.FabricView.OrderNo, dbo.FabricView.BuyerName, dbo.FabricView.RefNo, dbo.FabricView.Composition, dbo.KnittingMachine.McDia, 
                      dbo.KnittingMachine.McGauge, dbo.KnittingMachine.McBrand, dbo.Knitting.McNoID, dbo.KnittingMachine.McNo, dbo.FabricView.BuyerID, dbo.FabricView.FabricTypeID, 
                      dbo.FabricView.FabricTypeName, dbo.FabricView.CompositionTypeID
FROM         dbo.KnittingMachine RIGHT OUTER JOIN
                      dbo.Knitting INNER JOIN
                      dbo.UserInfo ON dbo.Knitting.CreateBy = dbo.UserInfo.Id ON dbo.KnittingMachine.Id = dbo.Knitting.McNoID LEFT OUTER JOIN
                      dbo.FabricView ON dbo.Knitting.FabricID = dbo.FabricView.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Knitting.ApprovedBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Knitting.UpdateBy = UserInfo_2.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[24] 2[9] 3) )"
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
         Begin Table = "KnittingMachine"
            Begin Extent = 
               Top = 75
               Left = 645
               Bottom = 195
               Right = 805
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
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 178
               Left = 1096
               Bottom = 274
               Right = 1263
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 1
               Left = 873
               Bottom = 352
               Right = 1055
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 370
               Left = 1099
               Bottom = 470
               Right = 1266
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 281
               Left = 1096
               Bottom = 359
               Right = 1263
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
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
/****** Object:  View [dbo].[HSPView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[HSPView]
AS
SELECT     dbo.HSP.FabricID, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.RefNo, dbo.FabricView.Composition, dbo.FabricView.FabricTypeName, 
                      dbo.HSP.HPMcNoId, dbo.HSP.HPTemp, dbo.HSP.HPSpeed, dbo.HSP.HPTime, dbo.HSP.HPFeed, dbo.HSP.HPStrech, dbo.HSP.HPChemical, dbo.HSP.HPDia, dbo.HSP.HPGSM, dbo.HSP.HPShrinkage, 
                      dbo.HSP.CreateTime, dbo.HSP.CreateBy, dbo.HSP.UpdateTime, dbo.HSP.UpdateBy, dbo.HSP.ApprovedTime, dbo.HSP.ApprovedBy, dbo.HSP.ReviseStatus, dbo.HSP.ApprovedStatus, dbo.HSP.Id, 
                      dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, dbo.HSPMcNoType.HSPMcNo
FROM         dbo.HSP INNER JOIN
                      dbo.UserInfo ON dbo.HSP.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.HSPMcNoType ON dbo.HSP.HPMcNoId = dbo.HSPMcNoType.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.HSP.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.HSP.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.HSP.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[22] 2[8] 3) )"
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
         Begin Table = "HSP"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 368
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 41
               Left = 730
               Bottom = 161
               Right = 897
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HSPMcNoType"
            Begin Extent = 
               Top = 328
               Left = 317
               Bottom = 418
               Right = 477
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 245
               Left = 1226
               Bottom = 365
               Right = 1393
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 120
               Left = 973
               Bottom = 240
               Right = 1140
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 0
               Left = 384
               Bottom = 133
               Right = 555
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
      Begin ColumnWidths = 31
         Width = 284
         Width = 1500
         Width ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HSPView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 2055
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HSPView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HSPView'
GO
/****** Object:  View [dbo].[DyeingView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DyeingView]
AS
SELECT     dbo.Dyeing.Id, dbo.Dyeing.FabricID, dbo.Dyeing.DMC, dbo.Dyeing.DSpeed, dbo.Dyeing.DEnzy, dbo.Dyeing.Recipe, dbo.Dyeing.RecipeNo, dbo.Dyeing.Comments, dbo.Dyeing.DyeingTime, 
                      dbo.Dyeing.RFTNoID, dbo.Dyeing.Dyebath, dbo.Dyeing.Whiteness, dbo.Dyeing.CreateTime, dbo.Dyeing.CreateBy, dbo.Dyeing.UpdateTime, dbo.Dyeing.UpdateBy, dbo.Dyeing.ApprovedTime, 
                      dbo.Dyeing.ApprovedBy, dbo.Dyeing.ReviseStatus, dbo.Dyeing.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.RefNo, dbo.FabricView.FabricTypeName, dbo.FabricView.Composition, 
                      dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.UserInfo.Name AS CreateByName, UserInfo_2.Name AS UpdateByName, UserInfo_1.Name AS ApprovedByName
FROM         dbo.Dyeing LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Dyeing.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Dyeing.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Dyeing.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.Dyeing.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[35] 2[11] 3) )"
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
               Bottom = 399
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 6
               Left = 375
               Bottom = 91
               Right = 557
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 39
               Left = 799
               Bottom = 159
               Right = 966
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 134
               Left = 1039
               Bottom = 254
               Right = 1206
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 241
               Left = 1258
               Bottom = 344
               Right = 1425
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
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'    Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingView'
GO
/****** Object:  View [dbo].[DryerView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DryerView]
AS
SELECT     dbo.Dryer.Id, dbo.Dryer.FabricID, dbo.Dryer.DRMcNoID, dbo.Dryer.DRTemp, dbo.Dryer.DRFeed, dbo.Dryer.DRSpeed, dbo.Dryer.DRStreching, dbo.Dryer.DRChemical, dbo.Dryer.DRDia, 
                      dbo.Dryer.DRGSM, dbo.Dryer.DRShrinkage, dbo.Dryer.Remarks, dbo.Dryer.CreateTime, dbo.Dryer.CreateBy, dbo.Dryer.UpdateTime, dbo.Dryer.UpdateBy, dbo.Dryer.ApprovedTime, 
                      dbo.Dryer.ApprovedBy, dbo.Dryer.ReviseStatus, dbo.Dryer.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.RefNo, 
                      dbo.FabricView.Composition, dbo.FabricView.FabricTypeName, dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, 
                      dbo.DryerMcNoType.DryerMcNo
FROM         dbo.Dryer LEFT OUTER JOIN
                      dbo.DryerMcNoType ON dbo.Dryer.DRMcNoID = dbo.DryerMcNoType.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Dryer.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Dryer.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Dryer.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.Dryer.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[67] 4[8] 2[8] 3) )"
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
         Begin Table = "Dryer"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 403
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 221
               Left = 1199
               Bottom = 299
               Right = 1366
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 112
               Left = 999
               Bottom = 208
               Right = 1166
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 48
               Left = 789
               Bottom = 151
               Right = 956
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 23
               Left = 363
               Bottom = 112
               Right = 545
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DryerMcNoType"
            Begin Extent = 
               Top = 335
               Left = 558
               Bottom = 425
               Right = 718
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Wid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DryerView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'th = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DryerView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DryerView'
GO
/****** Object:  View [dbo].[CWView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CWView]
AS
SELECT     dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.FabricTypeName, dbo.FabricView.Composition, dbo.FabricView.RefNo, dbo.ContinueWashing.Id, 
                      dbo.ContinueWashing.FabricID, dbo.ContinueWashing.CWMcNoId, dbo.ContinueWashing.CWTemp, dbo.ContinueWashing.CWChemical, dbo.ContinueWashing.CWSpeed, 
                      dbo.ContinueWashing.CWWELength, dbo.ContinueWashing.CWWashDia, dbo.ContinueWashing.CreateTime, dbo.ContinueWashing.CreateBy, dbo.ContinueWashing.UpdateTime, 
                      dbo.ContinueWashing.UpdateBy, dbo.ContinueWashing.ApprovedTime, dbo.ContinueWashing.ApprovedBy, dbo.ContinueWashing.ReviseStatus, dbo.ContinueWashing.ApprovedStatus, 
                      dbo.UserInfo.Name AS CreateByName, UserInfo_2.Name AS ApprovedByName, dbo.CWMcNoType.CWMcNo, dbo.ContinueWashing.CWSEWidth, UserInfo_1.Name AS UpdateByName
FROM         dbo.ContinueWashing LEFT OUTER JOIN
                      dbo.CWMcNoType ON dbo.ContinueWashing.CWMcNoId = dbo.CWMcNoType.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.ContinueWashing.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.ContinueWashing.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.ContinueWashing.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.ContinueWashing.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[24] 2[10] 3) )"
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
         Begin Table = "ContinueWashing"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 323
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CWMcNoType"
            Begin Extent = 
               Top = 323
               Left = 307
               Bottom = 413
               Right = 467
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 164
               Left = 1092
               Bottom = 251
               Right = 1259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 103
               Left = 851
               Bottom = 189
               Right = 1018
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 62
               Left = 618
               Bottom = 201
               Right = 785
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 11
               Left = 382
               Bottom = 83
               Right = 564
            End
            DisplayFlags = 280
            TopColumn = 11
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 27
         Width = 284
         Width = 1500
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CWView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Table = 1590
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CWView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CWView'
GO
/****** Object:  View [dbo].[CompactingView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CompactingView]
AS
SELECT     dbo.Compacting.Id, dbo.Compacting.FabricID, dbo.Compacting.CMcNoID, dbo.Compacting.CTemp, dbo.Compacting.CFeed, dbo.Compacting.CSpeed, dbo.Compacting.CSteam, 
                      dbo.Compacting.CCompacting, dbo.Compacting.CDia, dbo.Compacting.CGSM, dbo.Compacting.CProductionTypeID, dbo.Compacting.CRemarks, dbo.Compacting.CreateTime, 
                      dbo.Compacting.CreateBy, dbo.Compacting.UpdateTime, dbo.Compacting.UpdateBy, dbo.Compacting.ApprovedTime, dbo.Compacting.ApprovedBy, dbo.Compacting.ReviseStatus, 
                      dbo.Compacting.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.RefNo, dbo.FabricView.Composition, 
                      dbo.FabricView.FabricTypeName, dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, dbo.CompactingMcNoType.CompactingMcNo,
                       dbo.CProductionType.CProduction
FROM         dbo.Compacting LEFT OUTER JOIN
                      dbo.CProductionType ON dbo.Compacting.CProductionTypeID = dbo.CProductionType.Id LEFT OUTER JOIN
                      dbo.CompactingMcNoType ON dbo.Compacting.CMcNoID = dbo.CompactingMcNoType.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Compacting.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Compacting.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Compacting.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.Compacting.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[70] 4[7] 2[7] 3) )"
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
         Begin Table = "Compacting"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 390
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 256
               Left = 1260
               Bottom = 376
               Right = 1427
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 120
               Left = 1015
               Bottom = 240
               Right = 1182
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 15
               Left = 790
               Bottom = 135
               Right = 957
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 7
               Left = 416
               Bottom = 118
               Right = 598
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "CompactingMcNoType"
            Begin Extent = 
               Top = 330
               Left = 712
               Bottom = 420
               Right = 883
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CProductionType"
            Begin Extent = 
               Top = 324
               Left = 388
               Bottom = 414
               Right = 548
            E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompactingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompactingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompactingView'
GO
/****** Object:  View [dbo].[BrushView]    Script Date: 09/08/2019 21:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BrushView]
AS
SELECT     dbo.Brush.Id, dbo.Brush.FabricID, dbo.Brush.BUpperPile, dbo.Brush.BUpperCounterPile, dbo.Brush.BUpperDrumTension, dbo.Brush.BUpperDrumRPM, dbo.Brush.BLowerPile, 
                      dbo.Brush.BLowerCounterPile, dbo.Brush.BLowerDrumTension, dbo.Brush.BLowerDrumRPM, dbo.Brush.BRemarks, dbo.Brush.CreateTime, dbo.Brush.CreateBy, dbo.Brush.UpdateTime, 
                      dbo.Brush.UpdateBy, dbo.Brush.ApprovedTime, dbo.Brush.ApprovedBy, dbo.Brush.ReviseStatus, dbo.Brush.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, 
                      dbo.FabricView.BuyerName, dbo.FabricView.RefNo, dbo.FabricView.Composition, dbo.FabricView.FabricTypeName, dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, 
                      UserInfo_2.Name AS ApprovedByName
FROM         dbo.Brush LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Brush.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Brush.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Brush.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.Brush.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[53] 4[26] 2[2] 3) )"
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
         Begin Table = "Brush"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 432
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 0
               Left = 415
               Bottom = 81
               Right = 597
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 0
               Left = 801
               Bottom = 120
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 82
               Left = 1038
               Bottom = 202
               Right = 1205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 215
               Left = 1231
               Bottom = 335
               Right = 1398
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
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
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BrushView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BrushView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BrushView'
GO
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 09/08/2019 21:11:00 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_MachineUnit] FOREIGN KEY([MachineType])
REFERENCES [dbo].[PrintMcNoType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 09/08/2019 21:11:00 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_PrintUnit] FOREIGN KEY([PrintType])
REFERENCES [dbo].[PrintFactoryType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 09/08/2019 21:11:03 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_Buyer] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Buyer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 09/08/2019 21:11:03 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_FabricType] FOREIGN KEY([FabricTypeID])
REFERENCES [dbo].[FabricType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_FabricType]
GO
