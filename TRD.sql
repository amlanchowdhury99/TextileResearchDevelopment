USE [TextileResearchDevelopment]
GO
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 09/01/2019 18:02:34 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 09/01/2019 18:02:34 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 09/01/2019 18:02:39 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 09/01/2019 18:02:39 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  View [dbo].[ReportView]    Script Date: 09/01/2019 18:02:49 ******/
DROP VIEW [dbo].[ReportView]
GO
/****** Object:  View [dbo].[RemarksView]    Script Date: 09/01/2019 18:02:49 ******/
DROP VIEW [dbo].[RemarksView]
GO
/****** Object:  View [dbo].[TestView]    Script Date: 09/01/2019 18:02:49 ******/
DROP VIEW [dbo].[TestView]
GO
/****** Object:  View [dbo].[AopView]    Script Date: 09/01/2019 18:02:49 ******/
DROP VIEW [dbo].[AopView]
GO
/****** Object:  View [dbo].[StenterView]    Script Date: 09/01/2019 18:02:49 ******/
DROP VIEW [dbo].[StenterView]
GO
/****** Object:  View [dbo].[DyeingView]    Script Date: 09/01/2019 18:02:49 ******/
DROP VIEW [dbo].[DyeingView]
GO
/****** Object:  View [dbo].[KnitView]    Script Date: 09/01/2019 18:02:49 ******/
DROP VIEW [dbo].[KnitView]
GO
/****** Object:  View [dbo].[FabricProcessView]    Script Date: 09/01/2019 18:02:49 ******/
DROP VIEW [dbo].[FabricProcessView]
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 09/01/2019 18:02:49 ******/
DROP VIEW [dbo].[FabricView]
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 09/01/2019 18:02:39 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
DROP TABLE [dbo].[Fabric]
GO
/****** Object:  Table [dbo].[Aop]    Script Date: 09/01/2019 18:02:34 ******/
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_MachineUnit]
GO
ALTER TABLE [dbo].[Aop] DROP CONSTRAINT [FK_Aop_PrintUnit]
GO
DROP TABLE [dbo].[Aop]
GO
/****** Object:  View [dbo].[YDView]    Script Date: 09/01/2019 18:02:50 ******/
DROP VIEW [dbo].[YDView]
GO
/****** Object:  View [dbo].[UserView]    Script Date: 09/01/2019 18:02:50 ******/
DROP VIEW [dbo].[UserView]
GO
/****** Object:  Table [dbo].[YarnColorType]    Script Date: 09/01/2019 18:02:47 ******/
DROP TABLE [dbo].[YarnColorType]
GO
/****** Object:  Table [dbo].[YarnCompositionType]    Script Date: 09/01/2019 18:02:47 ******/
DROP TABLE [dbo].[YarnCompositionType]
GO
/****** Object:  Table [dbo].[YarnCountType]    Script Date: 09/01/2019 18:02:47 ******/
DROP TABLE [dbo].[YarnCountType]
GO
/****** Object:  Table [dbo].[YarnDetails]    Script Date: 09/01/2019 18:02:47 ******/
DROP TABLE [dbo].[YarnDetails]
GO
/****** Object:  Table [dbo].[YarnDyedRepeat]    Script Date: 09/01/2019 18:02:47 ******/
DROP TABLE [dbo].[YarnDyedRepeat]
GO
/****** Object:  Table [dbo].[YarnSupplierType]    Script Date: 09/01/2019 18:02:48 ******/
DROP TABLE [dbo].[YarnSupplierType]
GO
/****** Object:  Table [dbo].[YarnType]    Script Date: 09/01/2019 18:02:48 ******/
DROP TABLE [dbo].[YarnType]
GO
/****** Object:  Table [dbo].[FabricProcess]    Script Date: 09/01/2019 18:02:40 ******/
DROP TABLE [dbo].[FabricProcess]
GO
/****** Object:  Table [dbo].[HSP]    Script Date: 09/01/2019 18:02:40 ******/
DROP TABLE [dbo].[HSP]
GO
/****** Object:  Table [dbo].[HSPMcNoType]    Script Date: 09/01/2019 18:02:40 ******/
DROP TABLE [dbo].[HSPMcNoType]
GO
/****** Object:  Table [dbo].[Knitting]    Script Date: 09/01/2019 18:02:41 ******/
DROP TABLE [dbo].[Knitting]
GO
/****** Object:  Table [dbo].[KnittingMachine]    Script Date: 09/01/2019 18:02:41 ******/
DROP TABLE [dbo].[KnittingMachine]
GO
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 09/01/2019 18:02:42 ******/
DROP TABLE [dbo].[KnitUnit]
GO
/****** Object:  Table [dbo].[Brush]    Script Date: 09/01/2019 18:02:34 ******/
DROP TABLE [dbo].[Brush]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 09/01/2019 18:02:34 ******/
DROP TABLE [dbo].[Buyer]
GO
/****** Object:  Table [dbo].[Compacting]    Script Date: 09/01/2019 18:02:35 ******/
DROP TABLE [dbo].[Compacting]
GO
/****** Object:  Table [dbo].[CompactingMcNoType]    Script Date: 09/01/2019 18:02:36 ******/
DROP TABLE [dbo].[CompactingMcNoType]
GO
/****** Object:  Table [dbo].[CompositionType]    Script Date: 09/01/2019 18:02:36 ******/
DROP TABLE [dbo].[CompositionType]
GO
/****** Object:  Table [dbo].[ContinueWashing]    Script Date: 09/01/2019 18:02:37 ******/
DROP TABLE [dbo].[ContinueWashing]
GO
/****** Object:  Table [dbo].[CWMcNoType]    Script Date: 09/01/2019 18:02:37 ******/
DROP TABLE [dbo].[CWMcNoType]
GO
/****** Object:  Table [dbo].[Dryer]    Script Date: 09/01/2019 18:02:37 ******/
DROP TABLE [dbo].[Dryer]
GO
/****** Object:  Table [dbo].[DryerMcNoType]    Script Date: 09/01/2019 18:02:38 ******/
DROP TABLE [dbo].[DryerMcNoType]
GO
/****** Object:  Table [dbo].[Dyeing]    Script Date: 09/01/2019 18:02:38 ******/
DROP TABLE [dbo].[Dyeing]
GO
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 09/01/2019 18:02:38 ******/
DROP TABLE [dbo].[DyeingUnit]
GO
/****** Object:  Table [dbo].[FabricType]    Script Date: 09/01/2019 18:02:40 ******/
DROP TABLE [dbo].[FabricType]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 09/01/2019 18:02:44 ******/
DROP TABLE [dbo].[Report]
GO
/****** Object:  Table [dbo].[Peach]    Script Date: 09/01/2019 18:02:42 ******/
DROP TABLE [dbo].[Peach]
GO
/****** Object:  Table [dbo].[PrintFactoryType]    Script Date: 09/01/2019 18:02:43 ******/
DROP TABLE [dbo].[PrintFactoryType]
GO
/****** Object:  Table [dbo].[PrintInfo]    Script Date: 09/01/2019 18:02:43 ******/
DROP TABLE [dbo].[PrintInfo]
GO
/****** Object:  Table [dbo].[PrintMcNoType]    Script Date: 09/01/2019 18:02:44 ******/
DROP TABLE [dbo].[PrintMcNoType]
GO
/****** Object:  Table [dbo].[Remarks]    Script Date: 09/01/2019 18:02:44 ******/
DROP TABLE [dbo].[Remarks]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 09/01/2019 18:02:46 ******/
DROP TABLE [dbo].[UserInfo]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 09/01/2019 18:02:46 ******/
DROP TABLE [dbo].[UserRole]
GO
/****** Object:  Table [dbo].[RolePermission]    Script Date: 09/01/2019 18:02:44 ******/
DROP TABLE [dbo].[RolePermission]
GO
/****** Object:  Table [dbo].[Singeing]    Script Date: 09/01/2019 18:02:44 ******/
DROP TABLE [dbo].[Singeing]
GO
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 09/01/2019 18:02:45 ******/
DROP TABLE [dbo].[SoftenerUnit]
GO
/****** Object:  Table [dbo].[Stenter]    Script Date: 09/01/2019 18:02:45 ******/
DROP TABLE [dbo].[Stenter]
GO
/****** Object:  Table [dbo].[StenterMcNoType]    Script Date: 09/01/2019 18:02:45 ******/
DROP TABLE [dbo].[StenterMcNoType]
GO
/****** Object:  Table [dbo].[StenterMcNoType]    Script Date: 09/01/2019 18:02:45 ******/
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
/****** Object:  Table [dbo].[Stenter]    Script Date: 09/01/2019 18:02:45 ******/
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
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 09/01/2019 18:02:45 ******/
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
/****** Object:  Table [dbo].[Singeing]    Script Date: 09/01/2019 18:02:44 ******/
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
/****** Object:  Table [dbo].[RolePermission]    Script Date: 09/01/2019 18:02:44 ******/
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
/****** Object:  Table [dbo].[UserRole]    Script Date: 09/01/2019 18:02:46 ******/
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
/****** Object:  Table [dbo].[UserInfo]    Script Date: 09/01/2019 18:02:46 ******/
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
/****** Object:  Table [dbo].[Remarks]    Script Date: 09/01/2019 18:02:44 ******/
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
/****** Object:  Table [dbo].[PrintMcNoType]    Script Date: 09/01/2019 18:02:44 ******/
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
/****** Object:  Table [dbo].[PrintInfo]    Script Date: 09/01/2019 18:02:43 ******/
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
/****** Object:  Table [dbo].[PrintFactoryType]    Script Date: 09/01/2019 18:02:43 ******/
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
/****** Object:  Table [dbo].[Peach]    Script Date: 09/01/2019 18:02:42 ******/
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
/****** Object:  Table [dbo].[Report]    Script Date: 09/01/2019 18:02:44 ******/
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
/****** Object:  Table [dbo].[FabricType]    Script Date: 09/01/2019 18:02:40 ******/
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
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 09/01/2019 18:02:38 ******/
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
/****** Object:  Table [dbo].[Dyeing]    Script Date: 09/01/2019 18:02:38 ******/
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
/****** Object:  Table [dbo].[DryerMcNoType]    Script Date: 09/01/2019 18:02:38 ******/
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
/****** Object:  Table [dbo].[Dryer]    Script Date: 09/01/2019 18:02:37 ******/
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
/****** Object:  Table [dbo].[CWMcNoType]    Script Date: 09/01/2019 18:02:37 ******/
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
/****** Object:  Table [dbo].[ContinueWashing]    Script Date: 09/01/2019 18:02:37 ******/
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
	[CWSEW] [varchar](150) NOT NULL,
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
/****** Object:  Table [dbo].[CompositionType]    Script Date: 09/01/2019 18:02:36 ******/
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
/****** Object:  Table [dbo].[CompactingMcNoType]    Script Date: 09/01/2019 18:02:36 ******/
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
/****** Object:  Table [dbo].[Compacting]    Script Date: 09/01/2019 18:02:35 ******/
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
/****** Object:  Table [dbo].[Buyer]    Script Date: 09/01/2019 18:02:34 ******/
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
/****** Object:  Table [dbo].[Brush]    Script Date: 09/01/2019 18:02:34 ******/
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
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 09/01/2019 18:02:42 ******/
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
/****** Object:  Table [dbo].[KnittingMachine]    Script Date: 09/01/2019 18:02:41 ******/
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
/****** Object:  Table [dbo].[Knitting]    Script Date: 09/01/2019 18:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Knitting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[BarCode] [bigint] NOT NULL,
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
INSERT [dbo].[Knitting] ([Id], [FabricID], [BarCode], [ErpNo], [McNoID], [McSpeed], [SL], [YarnTension], [LycraTension], [GreyDia], [GreyGSM], [ReqDia], [ReqGSM], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedBy], [ApprovedTime], [ReviseStatus], [ApprovedStatus]) VALUES (6, 4, 20198251, N'123', 1, 2321, CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), CAST(213.00 AS Decimal(18, 2)), 213, 213, 123, 7777, CAST(0x0000AAB600E0ABA0 AS DateTime), 3, CAST(0x0000AAB600F4FEC0 AS DateTime), 3, 0, NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[Knitting] OFF
/****** Object:  Table [dbo].[HSPMcNoType]    Script Date: 09/01/2019 18:02:40 ******/
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
/****** Object:  Table [dbo].[HSP]    Script Date: 09/01/2019 18:02:40 ******/
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
/****** Object:  Table [dbo].[FabricProcess]    Script Date: 09/01/2019 18:02:40 ******/
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
/****** Object:  Table [dbo].[YarnType]    Script Date: 09/01/2019 18:02:48 ******/
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
/****** Object:  Table [dbo].[YarnSupplierType]    Script Date: 09/01/2019 18:02:48 ******/
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
/****** Object:  Table [dbo].[YarnDyedRepeat]    Script Date: 09/01/2019 18:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YarnDyedRepeat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KnitID] [int] NOT NULL,
	[YDRepeat] [varchar](50) NOT NULL,
	[YDColor] [varchar](50) NOT NULL,
	[YDFeederNo] [int] NOT NULL,
	[YDMeasurement] [decimal](18, 2) NOT NULL,
	[YDUOM] [varchar](50) NULL,
	[YDBatchNo] [varchar](100) NOT NULL,
	[YDCK] [int] NOT NULL,
 CONSTRAINT [PK_YarnDyedRepeat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[YarnDyedRepeat] ON
INSERT [dbo].[YarnDyedRepeat] ([Id], [KnitID], [YDRepeat], [YDColor], [YDFeederNo], [YDMeasurement], [YDUOM], [YDBatchNo], [YDCK]) VALUES (1, 6, N'22', N'222', 22, CAST(22.00 AS Decimal(18, 2)), N'22', N'22', 222)
INSERT [dbo].[YarnDyedRepeat] ([Id], [KnitID], [YDRepeat], [YDColor], [YDFeederNo], [YDMeasurement], [YDUOM], [YDBatchNo], [YDCK]) VALUES (2, 6, N'22222', N'asd', 22, CAST(111.00 AS Decimal(18, 2)), N'111', N'121', 111)
SET IDENTITY_INSERT [dbo].[YarnDyedRepeat] OFF
/****** Object:  Table [dbo].[YarnDetails]    Script Date: 09/01/2019 18:02:47 ******/
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
/****** Object:  Table [dbo].[YarnCountType]    Script Date: 09/01/2019 18:02:47 ******/
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
/****** Object:  Table [dbo].[YarnCompositionType]    Script Date: 09/01/2019 18:02:47 ******/
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
/****** Object:  Table [dbo].[YarnColorType]    Script Date: 09/01/2019 18:02:47 ******/
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
/****** Object:  View [dbo].[UserView]    Script Date: 09/01/2019 18:02:50 ******/
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
/****** Object:  View [dbo].[YDView]    Script Date: 09/01/2019 18:02:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[YDView]
AS
SELECT     dbo.YarnDetails.Id, dbo.YarnDetails.KnitID, dbo.YarnDetails.YDCountID, dbo.YarnDetails.YDCompositionID, dbo.YarnDetails.YDYarnTypeID, dbo.YarnDetails.YDYarnColorID, 
                      dbo.YarnDetails.YDSupplierID, dbo.YarnDetails.Lot, dbo.YarnDetails.TPI, dbo.YarnCountType.YarnCount, dbo.YarnColorType.YarnColor, dbo.YarnType.YarnName, 
                      dbo.YarnSupplierType.YarnSupplier, dbo.YarnCompositionType.YarnComposition
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
         Configuration = "(H (1[43] 4[26] 2[14] 3) )"
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
               Bottom = 312
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnSupplierType"
            Begin Extent = 
               Top = 339
               Left = 1172
               Bottom = 429
               Right = 1332
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnColorType"
            Begin Extent = 
               Top = 256
               Left = 961
               Bottom = 346
               Right = 1121
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnType"
            Begin Extent = 
               Top = 180
               Left = 750
               Bottom = 270
               Right = 910
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnCompositionType"
            Begin Extent = 
               Top = 98
               Left = 536
               Bottom = 188
               Right = 696
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnCountType"
            Begin Extent = 
               Top = 7
               Left = 347
               Bottom = 97
               Right = 507
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
         Wi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'YDView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'dth = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'YDView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'YDView'
GO
/****** Object:  Table [dbo].[Aop]    Script Date: 09/01/2019 18:02:34 ******/
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
/****** Object:  Table [dbo].[Fabric]    Script Date: 09/01/2019 18:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fabric](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BarCode] [bigint] NOT NULL,
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
INSERT [dbo].[Fabric] ([Id], [BarCode], [BuyerID], [FabricTypeID], [CompositionTypeID], [OrderNo], [Color], [RefNo], [BatchNo], [Season], [Version], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime]) VALUES (7, 20198311, 1, 1, 1, N'asd', N'asd', N'asd', N'asd', N'asd', N'asd', 3, CAST(0x0000AABA00F54510 AS DateTime), NULL, CAST(0x0000AABA00F54510 AS DateTime))
INSERT [dbo].[Fabric] ([Id], [BarCode], [BuyerID], [FabricTypeID], [CompositionTypeID], [OrderNo], [Color], [RefNo], [BatchNo], [Season], [Version], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime]) VALUES (10, 20198312, 2, 2, 1, N'asd', N'asd', N'asd', N'asd', N'asd', N'asd', 3, CAST(0x0000AABA00FA36B0 AS DateTime), NULL, CAST(0x0000AABA00FA36B0 AS DateTime))
SET IDENTITY_INSERT [dbo].[Fabric] OFF
/****** Object:  View [dbo].[FabricView]    Script Date: 09/01/2019 18:02:49 ******/
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
/****** Object:  View [dbo].[FabricProcessView]    Script Date: 09/01/2019 18:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FabricProcessView]
AS
SELECT     dbo.FabricProcess.Id, dbo.FabricProcess.FabricID, dbo.FabricProcess.Knitting, dbo.FabricProcess.CW, dbo.FabricProcess.HSP, dbo.FabricProcess.Dyeing, dbo.FabricProcess.Topping, 
                      dbo.FabricProcess.Stenter, dbo.FabricProcess.Compacting, dbo.FabricProcess.Peach, dbo.FabricProcess.Brush, dbo.FabricProcess.PrintInfo, dbo.FabricProcess.QC
FROM         dbo.Fabric LEFT OUTER JOIN
                      dbo.FabricProcess ON dbo.Fabric.Id = dbo.FabricProcess.FabricID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[10] 2[11] 3) )"
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
               Bottom = 212
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "FabricProcess"
            Begin Extent = 
               Top = 0
               Left = 396
               Bottom = 217
               Right = 556
            End
            DisplayFlags = 280
            TopColumn = 3
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FabricProcessView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FabricProcessView'
GO
/****** Object:  View [dbo].[KnitView]    Script Date: 09/01/2019 18:02:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KnitView]
AS
SELECT     dbo.Knitting.Id, dbo.Knitting.FabricID, dbo.Knitting.GreyGSM, dbo.Knitting.ReviseStatus, dbo.Knitting.ApprovedStatus, dbo.Knitting.BarCode, dbo.Knitting.CreateBy, dbo.Knitting.UpdateBy, 
                      dbo.Knitting.ApprovedBy, dbo.Knitting.CreateTime, dbo.Knitting.UpdateTime, dbo.Knitting.ApprovedTime, dbo.UserInfo.Name AS CreateByName, UserInfo_2.Name AS UpdateByName, 
                      UserInfo_1.Name AS ApprovedByName, dbo.Knitting.YarnTension, dbo.Knitting.LycraTension, dbo.Knitting.GreyDia, dbo.Knitting.ReqDia, dbo.Knitting.ReqGSM, dbo.Knitting.SL, 
                      dbo.Knitting.McSpeed, dbo.Knitting.ErpNo, dbo.FabricView.OrderNo, dbo.FabricView.BuyerName, dbo.FabricView.FabricName, dbo.FabricView.RefNo, dbo.FabricView.Composition, 
                      dbo.KnittingMachine.McDia, dbo.KnittingMachine.McGauge, dbo.KnittingMachine.McBrand, dbo.Knitting.McNoID, dbo.KnittingMachine.McNo
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
         Configuration = "(H (1[65] 4[21] 2[7] 3) )"
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
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 0
               Left = 983
               Bottom = 163
               Right = 1165
            End
            DisplayFlags = 280
            TopColumn = 10
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
/****** Object:  View [dbo].[DyeingView]    Script Date: 09/01/2019 18:02:49 ******/
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
/****** Object:  View [dbo].[StenterView]    Script Date: 09/01/2019 18:02:49 ******/
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
/****** Object:  View [dbo].[AopView]    Script Date: 09/01/2019 18:02:49 ******/
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
/****** Object:  View [dbo].[TestView]    Script Date: 09/01/2019 18:02:49 ******/
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
/****** Object:  View [dbo].[RemarksView]    Script Date: 09/01/2019 18:02:49 ******/
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
/****** Object:  View [dbo].[ReportView]    Script Date: 09/01/2019 18:02:49 ******/
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
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 09/01/2019 18:02:34 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_MachineUnit] FOREIGN KEY([MachineType])
REFERENCES [dbo].[PrintMcNoType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 09/01/2019 18:02:34 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_PrintUnit] FOREIGN KEY([PrintType])
REFERENCES [dbo].[PrintFactoryType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 09/01/2019 18:02:39 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_Buyer] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Buyer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 09/01/2019 18:02:39 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_FabricType] FOREIGN KEY([FabricTypeID])
REFERENCES [dbo].[FabricType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_FabricType]
GO
