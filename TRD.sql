USE [TextileResearchDevelopment]
GO
/****** Object:  Table [dbo].[HSPMcNoType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[HSPMcNoType] ON
INSERT [dbo].[HSPMcNoType] ([Id], [HSPMcNo]) VALUES (1, N'1')
INSERT [dbo].[HSPMcNoType] ([Id], [HSPMcNo]) VALUES (2, N'2')
INSERT [dbo].[HSPMcNoType] ([Id], [HSPMcNo]) VALUES (3, N'3')
SET IDENTITY_INSERT [dbo].[HSPMcNoType] OFF
/****** Object:  Table [dbo].[HSP]    Script Date: 09/29/2019 22:12:28 ******/
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
INSERT [dbo].[HSP] ([Id], [FabricID], [HPMcNoId], [HPTemp], [HPSpeed], [HPTime], [HPFeed], [HPStrech], [HPChemical], [HPDia], [HPGSM], [HPShrinkage], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [ReviseStatus], [ApprovedStatus]) VALUES (9, 31, 1, N'195', N'22', N'45', N'45', N'4', N'Detergent -5 g/l', N'52', N'165', N'L%=5, W%=4, T%=.5', CAST(0x0000AAD7015FD650 AS DateTime), 3, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[HSP] ([Id], [FabricID], [HPMcNoId], [HPTemp], [HPSpeed], [HPTime], [HPFeed], [HPStrech], [HPChemical], [HPDia], [HPGSM], [HPShrinkage], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [ReviseStatus], [ApprovedStatus]) VALUES (10, 31, 2, N'195', N'22', N'45', N'45', N'4', N'Detergent -5 g/l', N'52', N'165', N'L%=5, W%=4, T%=.5', CAST(0x0000AAD70160A940 AS DateTime), 3, NULL, NULL, CAST(0x0000AAD70160A940 AS DateTime), 3, 1, 1)
SET IDENTITY_INSERT [dbo].[HSP] OFF
/****** Object:  Table [dbo].[HistoryType]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistoryType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[History] [varchar](50) NOT NULL,
 CONSTRAINT [PK_HistoryType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HistoryType] ON
INSERT [dbo].[HistoryType] ([Id], [History]) VALUES (1, N'Topping')
INSERT [dbo].[HistoryType] ([Id], [History]) VALUES (2, N'Addition')
SET IDENTITY_INSERT [dbo].[HistoryType] OFF
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[KnittingMachine]    Script Date: 09/29/2019 22:12:28 ******/
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
INSERT [dbo].[KnittingMachine] ([Id], [McNo], [McDia], [McGauge], [McBrand]) VALUES (1, 1, 42, 24, N'Fukuhara')
INSERT [dbo].[KnittingMachine] ([Id], [McNo], [McDia], [McGauge], [McBrand]) VALUES (4, 2, 42, 24, N'Fukuhara')
SET IDENTITY_INSERT [dbo].[KnittingMachine] OFF
/****** Object:  Table [dbo].[Knitting]    Script Date: 09/29/2019 22:12:28 ******/
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
	[McSpeed] [varchar](200) NULL,
	[SL] [varchar](200) NOT NULL,
	[YarnTension] [varchar](200) NULL,
	[LycraTension] [varchar](200) NULL,
	[GreyDia] [varchar](200) NULL,
	[GreyGSM] [varchar](200) NULL,
	[ReqDia] [varchar](200) NOT NULL,
	[ReqGSM] [varchar](200) NOT NULL,
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
INSERT [dbo].[Knitting] ([Id], [FabricID], [BarCode], [ErpNo], [McNoID], [McSpeed], [SL], [YarnTension], [LycraTension], [GreyDia], [GreyGSM], [ReqDia], [ReqGSM], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedBy], [ApprovedTime], [ReviseStatus], [ApprovedStatus]) VALUES (24, 31, N'20199291', N'30714', 1, N'22', N'2.76', N'4', N'2.5', N'52', N'170', N'54', N'160', CAST(0x0000AAD7015E3070 AS DateTime), 3, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[Knitting] ([Id], [FabricID], [BarCode], [ErpNo], [McNoID], [McSpeed], [SL], [YarnTension], [LycraTension], [GreyDia], [GreyGSM], [ReqDia], [ReqGSM], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedBy], [ApprovedTime], [ReviseStatus], [ApprovedStatus]) VALUES (25, 31, N'20199291', N'30714', 1, N'22', N'2.76', N'4', N'2.5', N'52', N'170', N'54', N'160', CAST(0x0000AAD7015F9000 AS DateTime), 3, NULL, 0, 3, CAST(0x0000AAD7015F9000 AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Knitting] OFF
/****** Object:  Table [dbo].[FabricType]    Script Date: 09/29/2019 22:12:28 ******/
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
INSERT [dbo].[FabricType] ([Id], [FabricTypeName]) VALUES (1, N'S/J')
INSERT [dbo].[FabricType] ([Id], [FabricTypeName]) VALUES (2, N'L S/J')
INSERT [dbo].[FabricType] ([Id], [FabricTypeName]) VALUES (4, N'1x1 R|B')
SET IDENTITY_INSERT [dbo].[FabricType] OFF
/****** Object:  Table [dbo].[FabricProcess]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FabricProcess](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BarCode] [int] NOT NULL,
	[Knit] [int] NOT NULL,
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
INSERT [dbo].[FabricProcess] ([Id], [BarCode], [Knit], [CW], [HSP], [Singeing], [Dyeing], [Dryer], [Stenter], [Compacting], [Peach], [Brush], [PrintInfo], [QC]) VALUES (30, 20199291, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[FabricProcess] OFF
/****** Object:  Table [dbo].[CompactingMcNoType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[CompactingMcNoType] ON
INSERT [dbo].[CompactingMcNoType] ([Id], [CompactingMcNo]) VALUES (1, N'1')
INSERT [dbo].[CompactingMcNoType] ([Id], [CompactingMcNo]) VALUES (2, N'2')
INSERT [dbo].[CompactingMcNoType] ([Id], [CompactingMcNo]) VALUES (3, N'3')
SET IDENTITY_INSERT [dbo].[CompactingMcNoType] OFF
/****** Object:  Table [dbo].[Compacting]    Script Date: 09/29/2019 22:12:28 ******/
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
	[CCompaction] [varchar](150) NOT NULL,
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
SET IDENTITY_INSERT [dbo].[Compacting] ON
INSERT [dbo].[Compacting] ([Id], [FabricID], [CMcNoID], [CTemp], [CFeed], [CSpeed], [CSteam], [CCompaction], [CDia], [CGSM], [CProductionTypeID], [CRemarks], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [ReviseStatus], [ApprovedStatus]) VALUES (6, 31, N'1', N'130', N'25', N'18', N'Medium', N'L = 4%, W = 5%', N'54', N'160', 7, N'', CAST(0x0000AAD70160A940 AS DateTime), 3, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[Compacting] ([Id], [FabricID], [CMcNoID], [CTemp], [CFeed], [CSpeed], [CSteam], [CCompaction], [CDia], [CGSM], [CProductionTypeID], [CRemarks], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [ReviseStatus], [ApprovedStatus]) VALUES (7, 31, N'1', N'130', N'25', N'18', N'Medium', N'L = 4%, W = 5%', N'54', N'160', 8, N'', CAST(0x0000AAD70160A940 AS DateTime), 3, NULL, NULL, CAST(0x0000AAD701632210 AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Compacting] OFF
/****** Object:  Table [dbo].[Buyer]    Script Date: 09/29/2019 22:12:28 ******/
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
INSERT [dbo].[Buyer] ([Id], [BuyerName]) VALUES (2, N'M&S')
INSERT [dbo].[Buyer] ([Id], [BuyerName]) VALUES (5, N'H&M')
SET IDENTITY_INSERT [dbo].[Buyer] OFF
/****** Object:  Table [dbo].[CWMcNoType]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[CProductionType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[CProductionType] ON
INSERT [dbo].[CProductionType] ([Id], [CProduction]) VALUES (6, N'After Brush')
INSERT [dbo].[CProductionType] ([Id], [CProduction]) VALUES (7, N'After Peach Finish')
INSERT [dbo].[CProductionType] ([Id], [CProduction]) VALUES (8, N'After AOP')
INSERT [dbo].[CProductionType] ([Id], [CProduction]) VALUES (9, N'SP Chemical Finish')
SET IDENTITY_INSERT [dbo].[CProductionType] OFF
/****** Object:  Table [dbo].[ContinueWashing]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[CompositionType]    Script Date: 09/29/2019 22:12:28 ******/
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
INSERT [dbo].[CompositionType] ([Id], [Composition]) VALUES (3, N'75% Cotton, 25% Polyester')
SET IDENTITY_INSERT [dbo].[CompositionType] OFF
/****** Object:  Table [dbo].[DryerMcNoType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[DryerMcNoType] ON
INSERT [dbo].[DryerMcNoType] ([Id], [DryerMcNo]) VALUES (1, N'D')
SET IDENTITY_INSERT [dbo].[DryerMcNoType] OFF
/****** Object:  Table [dbo].[Dryer]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[DyeingUnit]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[Dyeing]    Script Date: 09/29/2019 22:12:28 ******/
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
	[Comments] [varchar](150) NULL,
	[DyeingDate] [date] NOT NULL,
	[DyeingTime] [varchar](150) NOT NULL,
	[RFTNoID] [int] NOT NULL,
	[HistoryID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Brush]    Script Date: 09/29/2019 22:12:28 ******/
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
	[BSpeed] [varchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[Singeing]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[RFTType]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RFTType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RFT] [varchar](50) NULL,
 CONSTRAINT [PK_RFTType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RFTType] ON
INSERT [dbo].[RFTType] ([Id], [RFT]) VALUES (1, N'OK')
INSERT [dbo].[RFTType] ([Id], [RFT]) VALUES (2, N'NOtOK')
SET IDENTITY_INSERT [dbo].[RFTType] OFF
/****** Object:  Table [dbo].[Report]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[Remarks]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[QC]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[QDia] [varchar](100) NOT NULL,
	[QGSM] [varchar](100) NOT NULL,
	[QShrinkage] [varchar](100) NOT NULL,
	[QWash] [varchar](100) NULL,
	[QWater] [varchar](100) NULL,
	[QAcid] [varchar](100) NULL,
	[QAlkhali] [varchar](100) NULL,
	[QBursting] [varchar](100) NULL,
	[QPilling] [varchar](100) NULL,
	[QStrech] [varchar](100) NULL,
	[QRecovery] [varchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[ApprovedTime] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ReviseStatus] [int] NULL,
	[ApprovedStatus] [int] NULL,
 CONSTRAINT [PK_QC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[QC] ON
INSERT [dbo].[QC] ([Id], [FabricID], [QDia], [QGSM], [QShrinkage], [QWash], [QWater], [QAcid], [QAlkhali], [QBursting], [QPilling], [QStrech], [QRecovery], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [ReviseStatus], [ApprovedStatus]) VALUES (8, 31, N'56', N'160', N'L%=5, W%=4, T%=.5', N'S(4-5), C(4-5)', N'S(4-5), C(4)', N'S(3-4), C(4-5)', N'S(3-4), C(4-5)', N'250', N'3-4', N'L=4%, W=100%', N'L=15%, W=20%', CAST(0x0000AAD70163AEB0 AS DateTime), 3, NULL, NULL, CAST(0x0000AAD70163AEB0 AS DateTime), 3, 0, 1)
INSERT [dbo].[QC] ([Id], [FabricID], [QDia], [QGSM], [QShrinkage], [QWash], [QWater], [QAcid], [QAlkhali], [QBursting], [QPilling], [QStrech], [QRecovery], [CreateTime], [CreateBy], [UpdateTime], [UpdateBy], [ApprovedTime], [ApprovedBy], [ReviseStatus], [ApprovedStatus]) VALUES (9, 31, N'56', N'160', N'L%=5, W%=4, T%=.5', N'S(4-5), C(4-5)', N'S(4-5), C(4)', N'S(3-4), C(4-5)', N'S(3-4), C(4-5)', N'250', N'3-4', N'L=4%, W=100%', N'L=15%, W=20%', CAST(0x0000AAD70163AEB0 AS DateTime), 3, NULL, NULL, CAST(0x0000AAD70163AEB0 AS DateTime), 3, 1, 1)
SET IDENTITY_INSERT [dbo].[QC] OFF
/****** Object:  Table [dbo].[PrintType]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrintName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_PrintType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PrintType] ON
INSERT [dbo].[PrintType] ([Id], [PrintName]) VALUES (1, N'aaa')
SET IDENTITY_INSERT [dbo].[PrintType] OFF
/****** Object:  Table [dbo].[PrintMcNoType]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[PrintInfo]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrintInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricID] [int] NOT NULL,
	[MachineTypeID] [int] NOT NULL,
	[PrintFactoryID] [int] NOT NULL,
	[PrintTypeID] [int] NOT NULL,
	[PrintCoverage] [varchar](150) NOT NULL,
	[OtherInfo] [varchar](150) NULL,
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
/****** Object:  Table [dbo].[PrintFactoryType]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[Peach]    Script Date: 09/29/2019 22:12:28 ******/
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
	[PRemarks] [varchar](150) NOT NULL,
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
/****** Object:  Table [dbo].[UserRole]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserPermissionID] [int] NOT NULL,
	[Crud] [tinyint] NOT NULL,
	[LibrarySet] [tinyint] NOT NULL,
	[Approval] [tinyint] NOT NULL,
	[CValue] [int] NULL,
	[LValue] [int] NULL,
	[AValue] [int] NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (47, 41, 0, 1, 0, 31, 32, 33)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (48, 42, 1, 1, 0, 11, 12, 13)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (49, 43, 0, 0, 0, 11, 12, 13)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (50, 44, 0, 0, 0, 21, 22, 23)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (51, 45, 0, 0, 0, 11, 12, 13)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (52, 46, 1, 0, 0, 21, 22, 23)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (60, 54, 1, 1, 1, 11, 12, 13)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (61, 55, 1, 1, 1, 21, 22, 23)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (62, 56, 1, 1, 1, 31, 32, 33)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (63, 57, 1, 1, 1, 111, 112, 113)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (64, 58, 1, 1, 1, 121, 122, 123)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (65, 59, 1, 1, 1, 131, 132, 133)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (66, 60, 1, 1, 1, 41, 42, 43)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (67, 61, 1, 1, 1, 51, 52, 53)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (68, 62, 1, 1, 1, 61, 62, 63)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (69, 63, 1, 1, 1, 71, 72, 73)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (70, 64, 1, 1, 1, 81, 82, 83)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (71, 65, 1, 1, 1, 91, 92, 93)
INSERT [dbo].[UserRole] ([Id], [UserPermissionID], [Crud], [LibrarySet], [Approval], [CValue], [LValue], [AValue]) VALUES (72, 66, 1, 1, 1, 101, 102, 103)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
/****** Object:  Table [dbo].[UserPermission]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserPermission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](150) NOT NULL,
	[Sector] [int] NOT NULL,
 CONSTRAINT [PK_UserPermission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserPermission] ON
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (41, N'mohi@gmail.com', 3)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (42, N's@gmail.com', 1)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (45, N'm@gmail.com', 1)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (46, N'm@gmail.com', 2)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (54, N'amlan@gmail.com', 1)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (55, N'amlan@gmail.com', 2)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (56, N'amlan@gmail.com', 3)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (57, N'amlan@gmail.com', 11)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (58, N'amlan@gmail.com', 12)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (59, N'amlan@gmail.com', 13)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (60, N'amlan@gmail.com', 4)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (61, N'amlan@gmail.com', 5)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (62, N'amlan@gmail.com', 6)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (63, N'amlan@gmail.com', 7)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (64, N'amlan@gmail.com', 8)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (65, N'amlan@gmail.com', 9)
INSERT [dbo].[UserPermission] ([Id], [UserName], [Sector]) VALUES (66, N'amlan@gmail.com', 10)
SET IDENTITY_INSERT [dbo].[UserPermission] OFF
/****** Object:  Table [dbo].[UserInfo]    Script Date: 09/29/2019 22:12:28 ******/
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
	[Report] [tinyint] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON
INSERT [dbo].[UserInfo] ([Id], [Name], [UserName], [Password], [Date], [PermissionString], [LogIn], [SuperAdmin], [Report]) VALUES (3, N'Amlan Chowdhury', N'amlan@gmail.com', N'as', CAST(0xB23F0B00 AS Date), N'1,2,3,4,5,6,7,8,9,10', 1, 0, 1)
INSERT [dbo].[UserInfo] ([Id], [Name], [UserName], [Password], [Date], [PermissionString], [LogIn], [SuperAdmin], [Report]) VALUES (5, N'Super Admin', N'SuperAdmin@gmail.com', N'urmi@admin', CAST(0xB23F0B00 AS Date), N'1,2,3,4,5,6,7,8,9,10', 0, 1, 1)
INSERT [dbo].[UserInfo] ([Id], [Name], [UserName], [Password], [Date], [PermissionString], [LogIn], [SuperAdmin], [Report]) VALUES (8, N'Mahabub', N'm@gmail.com', N'123', CAST(0x21400B00 AS Date), NULL, 1, 0, 0)
INSERT [dbo].[UserInfo] ([Id], [Name], [UserName], [Password], [Date], [PermissionString], [LogIn], [SuperAdmin], [Report]) VALUES (9, N'shumul', N's@gmail.com', N's123', CAST(0x21400B00 AS Date), NULL, NULL, 0, 0)
INSERT [dbo].[UserInfo] ([Id], [Name], [UserName], [Password], [Date], [PermissionString], [LogIn], [SuperAdmin], [Report]) VALUES (10, N'mohi', N'mohi@gmail.com', N'123', CAST(0x21400B00 AS Date), NULL, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
/****** Object:  Table [dbo].[StenterMcNoType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[StenterMcNoType] ON
INSERT [dbo].[StenterMcNoType] ([Id], [StenterMcNo]) VALUES (1, N'1')
INSERT [dbo].[StenterMcNoType] ([Id], [StenterMcNo]) VALUES (2, N'2')
SET IDENTITY_INSERT [dbo].[StenterMcNoType] OFF
/****** Object:  Table [dbo].[Stenter]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[SProductionType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[SProductionType] ON
INSERT [dbo].[SProductionType] ([Id], [SProduction]) VALUES (1, N'After Brush')
INSERT [dbo].[SProductionType] ([Id], [SProduction]) VALUES (2, N'After Peach Finish')
INSERT [dbo].[SProductionType] ([Id], [SProduction]) VALUES (3, N'After AOP')
INSERT [dbo].[SProductionType] ([Id], [SProduction]) VALUES (4, N'SP Chemical Finish')
SET IDENTITY_INSERT [dbo].[SProductionType] OFF
/****** Object:  Table [dbo].[SoftenerUnit]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[YarnType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[YarnType] ON
INSERT [dbo].[YarnType] ([Id], [YarnName]) VALUES (1, N'Combed')
INSERT [dbo].[YarnType] ([Id], [YarnName]) VALUES (2, N'Card')
SET IDENTITY_INSERT [dbo].[YarnType] OFF
/****** Object:  Table [dbo].[YarnSupplierType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[YarnSupplierType] ON
INSERT [dbo].[YarnSupplierType] ([Id], [YarnSupplier]) VALUES (5, N'Square')
INSERT [dbo].[YarnSupplierType] ([Id], [YarnSupplier]) VALUES (7, N'NRG')
SET IDENTITY_INSERT [dbo].[YarnSupplierType] OFF
/****** Object:  Table [dbo].[YarnDyedRepeat]    Script Date: 09/29/2019 22:12:28 ******/
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
	[YDRFeederNo] [varchar](50) NOT NULL,
	[YDRMeasurement] [varchar](50) NOT NULL,
	[YDRUOM] [varchar](50) NULL,
	[YDRBatchNo] [varchar](100) NOT NULL,
	[YDRCK] [varchar](50) NOT NULL,
 CONSTRAINT [PK_YarnDyedRepeat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[YarnDyedRepeat] ON
INSERT [dbo].[YarnDyedRepeat] ([Id], [KnitID], [YDRRepeat], [YDRColor], [YDRFeederNo], [YDRMeasurement], [YDRUOM], [YDRBatchNo], [YDRCK]) VALUES (33, 25, N'Color 1', N'Black', N'20', N'.5', N'Inch', N'100A', N'1')
INSERT [dbo].[YarnDyedRepeat] ([Id], [KnitID], [YDRRepeat], [YDRColor], [YDRFeederNo], [YDRMeasurement], [YDRUOM], [YDRBatchNo], [YDRCK]) VALUES (35, 25, N'Color 2', N'Blue', N'10', N'.2', N'MM', N'332A', N'24')
SET IDENTITY_INSERT [dbo].[YarnDyedRepeat] OFF
/****** Object:  Table [dbo].[YarnDetails]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[YarnDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KnitID] [int] NOT NULL,
	[YDCountID] [int] NOT NULL,
	[YDCompositionID] [int] NOT NULL,
	[YDYarnTypeID] [int] NOT NULL,
	[YDYarnColorID] [int] NOT NULL,
	[YDSupplierID] [int] NOT NULL,
	[Lot] [varchar](50) NOT NULL,
	[TPI] [varchar](50) NULL,
 CONSTRAINT [PK_YarnDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[YarnDetails] ON
INSERT [dbo].[YarnDetails] ([Id], [KnitID], [YDCountID], [YDCompositionID], [YDYarnTypeID], [YDYarnColorID], [YDSupplierID], [Lot], [TPI]) VALUES (19, 25, 1, 1, 1, 1, 5, N'6024', N'80')
SET IDENTITY_INSERT [dbo].[YarnDetails] OFF
/****** Object:  Table [dbo].[YarnCountType]    Script Date: 09/29/2019 22:12:28 ******/
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
INSERT [dbo].[YarnCountType] ([Id], [YarnCount]) VALUES (1, N'30/1')
INSERT [dbo].[YarnCountType] ([Id], [YarnCount]) VALUES (2, N'32/1')
INSERT [dbo].[YarnCountType] ([Id], [YarnCount]) VALUES (9, N'50/D')
SET IDENTITY_INSERT [dbo].[YarnCountType] OFF
/****** Object:  Table [dbo].[YarnCompositionType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[YarnCompositionType] ON
INSERT [dbo].[YarnCompositionType] ([Id], [YarnComposition]) VALUES (1, N'100% Cotton')
INSERT [dbo].[YarnCompositionType] ([Id], [YarnComposition]) VALUES (2, N'100% Polyster')
SET IDENTITY_INSERT [dbo].[YarnCompositionType] OFF
/****** Object:  Table [dbo].[YarnColorType]    Script Date: 09/29/2019 22:12:28 ******/
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
SET IDENTITY_INSERT [dbo].[YarnColorType] ON
INSERT [dbo].[YarnColorType] ([Id], [YarnColor]) VALUES (1, N'Grey')
SET IDENTITY_INSERT [dbo].[YarnColorType] OFF
/****** Object:  Table [dbo].[UserRolewqwwqee]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRolewqwwqee](
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
SET IDENTITY_INSERT [dbo].[UserRolewqwwqee] ON
INSERT [dbo].[UserRolewqwwqee] ([Id], [UserName], [Fabric], [Knitting], [Washing], [HeatSetting], [Singeing], [Dyeing], [Dryer], [Stenter], [Compacting], [Peach], [Brush], [PrintInfo], [QC]) VALUES (7, N'amlan@gmail.com', 1, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[UserRolewqwwqee] OFF
/****** Object:  View [dbo].[YDView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[YDView]
AS
SELECT     dbo.YarnDetails.Id, dbo.YarnDetails.KnitID, dbo.YarnDetails.YDCountID, dbo.YarnDetails.YDCompositionID, dbo.YarnDetails.YDYarnTypeID, dbo.YarnDetails.YDYarnColorID, 
                      dbo.YarnDetails.YDSupplierID, dbo.YarnCountType.YarnCount, dbo.YarnCompositionType.YarnComposition, dbo.YarnType.YarnName, dbo.YarnSupplierType.YarnSupplier, 
                      dbo.YarnColorType.YarnColor, dbo.YarnDetails.Lot, dbo.YarnDetails.TPI
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
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'YDView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 3735
         Alias = 900
         Table = 4185
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
/****** Object:  View [dbo].[UserRoleView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[UserRoleView]
AS
SELECT     dbo.UserPermission.Id, dbo.UserInfo.Name, dbo.UserPermission.UserName, dbo.UserPermission.Sector, dbo.UserRole.Crud, dbo.UserRole.Approval, dbo.UserRole.LibrarySet, 
                      dbo.UserInfo.Date
FROM         dbo.UserPermission LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.UserPermission.UserName = dbo.UserInfo.UserName LEFT OUTER JOIN
                      dbo.UserRole ON dbo.UserPermission.Id = dbo.UserRole.UserPermissionID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[20] 2[7] 3) )"
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
         Begin Table = "UserPermission"
            Begin Extent = 
               Top = 9
               Left = 75
               Bottom = 127
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 104
               Left = 518
               Bottom = 212
               Right = 685
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserRole"
            Begin Extent = 
               Top = 7
               Left = 851
               Bottom = 157
               Right = 1023
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserRoleView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'UserRoleView'
GO
/****** Object:  Table [dbo].[Aop]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  Table [dbo].[Fabric]    Script Date: 09/29/2019 22:12:28 ******/
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
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_Fabric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Fabric] ON
INSERT [dbo].[Fabric] ([Id], [BarCode], [BuyerID], [FabricTypeID], [CompositionTypeID], [OrderNo], [Color], [RefNo], [BatchNo], [Season], [Version], [CreateBy], [CreateTime], [UpdateBy], [UpdateTime], [Status]) VALUES (31, N'20199291', 5, 1, 1, N'Bille S09', N'BLACK', N'FTML-FB-19-00021', N'RD-12034', N'Autumn', N'A', 5, CAST(0x0000AAD7015DEA20 AS DateTime), 5, CAST(0x0000AAD7015E3070 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Fabric] OFF
/****** Object:  View [dbo].[FPView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FPView]
AS
SELECT     BarCode, Knit AS Seq_Val, 1 Seq_No
FROM         FabricProcess
UNION
SELECT     BarCode, CW AS Seq_Val, 2 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, HSP AS Seq_Val, 3 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, Singeing AS Seq_Val, 4 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, Dyeing AS Seq_Val, 5 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, Dryer AS Seq_Val, 6 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, Stenter AS Seq_Val, 7 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, Compacting AS Seq_Val, 8 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, Peach AS Seq_Val, 9 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, Brush AS Seq_Val, 10 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, PrintInfo AS Seq_Val, 11 Seq
FROM         FabricProcess
UNION
SELECT     BarCode, QC AS Seq_Val, 12 Seq
FROM         FabricProcess
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[9] 4[24] 2[48] 3) )"
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FPView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FPView'
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FabricView]
AS
SELECT     dbo.Fabric.Id, dbo.Fabric.OrderNo, dbo.Fabric.Color, dbo.Fabric.BarCode, dbo.Fabric.BuyerID, dbo.Fabric.FabricTypeID, dbo.Buyer.BuyerName, dbo.Fabric.UpdateTime, dbo.Fabric.CreateTime, 
                      dbo.Fabric.Season, dbo.Fabric.BatchNo, dbo.Fabric.RefNo, dbo.Fabric.CompositionTypeID, UserInfo_1.Name AS CreateByName, dbo.CompositionType.Composition, 
                      dbo.UserInfo.Name AS UpdateByName, dbo.FabricProcess.Knit, dbo.FabricProcess.CW, dbo.FabricProcess.HSP, dbo.FabricProcess.Dyeing, dbo.FabricProcess.Dryer, dbo.FabricProcess.Stenter, 
                      dbo.FabricProcess.Compacting, dbo.FabricProcess.Peach, dbo.FabricProcess.Brush, dbo.FabricProcess.PrintInfo, dbo.FabricProcess.QC, dbo.Fabric.Version, dbo.FabricType.FabricTypeName, 
                      dbo.FabricProcess.Singeing, dbo.Fabric.Status
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
         Configuration = "(H (1[41] 4[32] 2[6] 3) )"
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
            TopColumn = 2
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 2250
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
/****** Object:  View [dbo].[StenterView]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  View [dbo].[SingeingView]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  View [dbo].[QCView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[QCView]
AS
SELECT     dbo.QC.Id, dbo.QC.FabricID, dbo.QC.QDia, dbo.QC.QGSM, dbo.QC.QShrinkage, dbo.QC.QWash, dbo.QC.QWater, dbo.QC.QAcid, dbo.QC.QAlkhali, dbo.QC.QBursting, dbo.QC.QPilling, dbo.QC.QStrech, 
                      dbo.QC.QRecovery, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.RefNo, dbo.FabricView.Composition, dbo.FabricView.FabricTypeName, 
                      dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, dbo.QC.CreateTime, dbo.QC.UpdateTime, dbo.QC.ApprovedTime, 
                      dbo.QC.ReviseStatus, dbo.QC.ApprovedStatus
FROM         dbo.QC LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.QC.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.QC.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.QC.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.QC.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[27] 2[3] 3) )"
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
         Begin Table = "QC"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 367
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 245
               Left = 1141
               Bottom = 345
               Right = 1308
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 150
               Left = 929
               Bottom = 270
               Right = 1096
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 65
               Left = 686
               Bottom = 185
               Right = 853
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 14
               Left = 379
               Bottom = 132
               Right = 561
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
      Begin ColumnWidths = 26
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
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'QCView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Width = 1500
         Width = 1500
         Width = 1500
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
         Alias = 1845
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'QCView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'QCView'
GO
/****** Object:  View [dbo].[KnitView]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  View [dbo].[HSPView]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  View [dbo].[PrintView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PrintView]
AS
SELECT     dbo.PrintInfo.Id, dbo.PrintInfo.FabricID, dbo.PrintInfo.PrintFactoryID, dbo.PrintInfo.PrintCoverage, dbo.PrintInfo.PrintTypeID, dbo.PrintInfo.MachineTypeID, dbo.PrintInfo.CreateTime, 
                      dbo.PrintInfo.CreateBy, dbo.PrintInfo.UpdateTime, dbo.PrintInfo.UpdateBy, dbo.PrintInfo.ApprovedTime, dbo.PrintInfo.ApprovedBy, dbo.PrintInfo.ReviseStatus, dbo.PrintInfo.ApprovedStatus, 
                      dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.RefNo, dbo.FabricView.Composition, dbo.FabricView.FabricTypeName, 
                      dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, dbo.PrintInfo.OtherInfo, dbo.PrintMcNoType.PrintMcNo, 
                      dbo.PrintFactoryType.PrintFactory, dbo.PrintType.PrintName
FROM         dbo.PrintInfo LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.PrintInfo.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.PrintType ON dbo.PrintInfo.PrintTypeID = dbo.PrintType.Id LEFT OUTER JOIN
                      dbo.PrintFactoryType ON dbo.PrintInfo.PrintFactoryID = dbo.PrintFactoryType.Id LEFT OUTER JOIN
                      dbo.PrintMcNoType ON dbo.PrintInfo.MachineTypeID = dbo.PrintMcNoType.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.PrintInfo.CreateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.PrintInfo.UpdateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.PrintInfo.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[69] 4[9] 2[5] 3) )"
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
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 191
               Left = 1319
               Bottom = 311
               Right = 1486
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PrintType"
            Begin Extent = 
               Top = 305
               Left = 356
               Bottom = 395
               Right = 516
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PrintFactoryType"
            Begin Extent = 
               Top = 306
               Left = 669
               Bottom = 396
               Right = 829
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PrintMcNoType"
            Begin Extent = 
               Top = 312
               Left = 1081
               Bottom = 402
               Right = 1241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 39
               Left = 711
               Bottom = 159
               Right = 878
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
            End' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrintView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
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
         Alias = 1680
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrintView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrintView'
GO
/****** Object:  View [dbo].[PeachView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PeachView]
AS
SELECT     dbo.Peach.Id, dbo.Peach.FabricID, dbo.Peach.PTaker, dbo.Peach.PPlaiter, dbo.Peach.PReturn, dbo.Peach.PTension, dbo.Peach.PRPM, dbo.Peach.PBrush, dbo.Peach.PSpeed, dbo.Peach.PDia, 
                      dbo.Peach.PGSM, dbo.Peach.CreateTime, dbo.Peach.CreateBy, dbo.Peach.UpdateTime, dbo.Peach.UpdateBy, dbo.Peach.ApprovedTime, dbo.Peach.ApprovedBy, dbo.Peach.ReviseStatus, 
                      dbo.Peach.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.BarCode, dbo.FabricView.RefNo, dbo.FabricView.Composition, dbo.FabricView.BuyerName, dbo.FabricView.FabricTypeName, 
                      dbo.UserInfo.Name AS CreateByName, UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, dbo.Peach.PRemarks
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
/****** Object:  View [dbo].[CWView]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  View [dbo].[CompactingView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CompactingView]
AS
SELECT     dbo.Compacting.Id, dbo.Compacting.FabricID, dbo.Compacting.CMcNoID, dbo.Compacting.CTemp, dbo.Compacting.CFeed, dbo.Compacting.CSpeed, dbo.Compacting.CSteam, dbo.Compacting.CDia, 
                      dbo.Compacting.CGSM, dbo.Compacting.CProductionTypeID, dbo.Compacting.CRemarks, dbo.Compacting.CreateTime, dbo.Compacting.CreateBy, dbo.Compacting.UpdateTime, 
                      dbo.Compacting.UpdateBy, dbo.Compacting.ApprovedTime, dbo.Compacting.ApprovedBy, dbo.Compacting.ReviseStatus, dbo.Compacting.ApprovedStatus, dbo.FabricView.OrderNo, 
                      dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.RefNo, dbo.FabricView.Composition, dbo.FabricView.FabricTypeName, dbo.UserInfo.Name AS CreateByName, 
                      UserInfo_1.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName, dbo.CompactingMcNoType.CompactingMcNo, dbo.CProductionType.CProduction, dbo.Compacting.CCompaction
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
         Configuration = "(H (1[46] 4[33] 2[7] 3) )"
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
         Begin Table = "CProductionType"
            Begin Extent = 
               Top = 324
               Left = 388
               Bottom = 414
               Right = 548
            End
            DisplayFlags = 280
            TopColumn = 0
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
            ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompactingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
            DisplayFlags = 280
            TopColumn = 6
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
/****** Object:  View [dbo].[BrushView]    Script Date: 09/29/2019 22:12:28 ******/
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
                      UserInfo_2.Name AS ApprovedByName, dbo.Brush.BSpeed
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
         Column = 3630
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
/****** Object:  View [dbo].[DyeingView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DyeingView]
AS
SELECT     dbo.Dyeing.Id, dbo.Dyeing.FabricID, dbo.Dyeing.DMC, dbo.Dyeing.DSpeed, dbo.Dyeing.DEnzy, dbo.Dyeing.Recipe, dbo.Dyeing.RecipeNo, dbo.Dyeing.Comments, dbo.Dyeing.DyeingTime, 
                      dbo.Dyeing.RFTNoID, dbo.Dyeing.Dyebath, dbo.Dyeing.Whiteness, dbo.Dyeing.CreateTime, dbo.Dyeing.CreateBy, dbo.Dyeing.UpdateTime, dbo.Dyeing.UpdateBy, dbo.Dyeing.ApprovedTime, 
                      dbo.Dyeing.ApprovedBy, dbo.Dyeing.ReviseStatus, dbo.Dyeing.ApprovedStatus, dbo.FabricView.OrderNo, dbo.FabricView.RefNo, dbo.FabricView.FabricTypeName, dbo.FabricView.Composition, 
                      dbo.FabricView.BarCode, dbo.FabricView.BuyerName, UserInfo_1.Name AS CreateByName, dbo.RFTType.RFT, dbo.Dyeing.HistoryID, dbo.HistoryType.History, dbo.Dyeing.DyeingDate, 
                      dbo.UserInfo.Name AS UpdateByName, UserInfo_2.Name AS ApprovedByName
FROM         dbo.Dyeing LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_2 ON dbo.Dyeing.ApprovedBy = UserInfo_2.Id LEFT OUTER JOIN
                      dbo.UserInfo ON dbo.Dyeing.UpdateBy = dbo.UserInfo.Id LEFT OUTER JOIN
                      dbo.HistoryType ON dbo.Dyeing.HistoryID = dbo.HistoryType.Id LEFT OUTER JOIN
                      dbo.RFTType ON dbo.Dyeing.RFTNoID = dbo.RFTType.Id LEFT OUTER JOIN
                      dbo.UserInfo AS UserInfo_1 ON dbo.Dyeing.CreateBy = UserInfo_1.Id LEFT OUTER JOIN
                      dbo.FabricView ON dbo.Dyeing.FabricID = dbo.FabricView.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[32] 2[11] 3) )"
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
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Dyeing"
            Begin Extent = 
               Top = 28
               Left = 25
               Bottom = 420
               Right = 192
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HistoryType"
            Begin Extent = 
               Top = 28
               Left = 1133
               Bottom = 118
               Right = 1293
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RFTType"
            Begin Extent = 
               Top = 22
               Left = 691
               Bottom = 112
               Right = 851
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_1"
            Begin Extent = 
               Top = 158
               Left = 781
               Bottom = 278
               Right = 948
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FabricView"
            Begin Extent = 
               Top = 5
               Left = 343
               Bottom = 107
               Right = 525
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo"
            Begin Extent = 
               Top = 226
               Left = 1074
               Bottom = 346
               Right = 1241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserInfo_2"
            Begin Extent = 
               Top = 368
               Left = 1066
               Bottom = 488
               Right = 1233
            End
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   DisplayFlags = 280
            TopColumn = 5
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
         Column = 3465
         Alias = 2025
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
/****** Object:  View [dbo].[DryerView]    Script Date: 09/29/2019 22:12:28 ******/
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
/****** Object:  View [dbo].[HSPViewAPP]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[HSPViewAPP]
AS
SELECT     FabricID, BarCode, HPMcNoId, HPTemp, HPSpeed, HPTime, HPFeed, HPStrech, HPChemical, HPDia, HPGSM, HPShrinkage, ApprovedStatus, HSPMcNo
FROM         dbo.HSPView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "HSPView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 235
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 19
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HSPViewAPP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HSPViewAPP'
GO
/****** Object:  View [dbo].[DyeingViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DyeingViewApp]
AS
SELECT     FabricID, DMC, DSpeed, DEnzy, Recipe, RecipeNo, DyeingTime, RFTNoID, Dyebath, Whiteness, BarCode, RFT, HistoryID, History, DyeingDate, ApprovedStatus
FROM         dbo.DyeingView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "DyeingView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 289
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 18
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DyeingViewApp'
GO
/****** Object:  View [dbo].[DryerViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DryerViewApp]
AS
SELECT     FabricID, DRMcNoID, DRTemp, DRFeed, DRSpeed, DRStreching, DRChemical, DRDia, DRGSM, DRShrinkage, Remarks, BarCode, DryerMcNo, ApprovedStatus
FROM         dbo.DryerView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "DryerView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 279
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 16
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DryerViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'DryerViewApp'
GO
/****** Object:  View [dbo].[CWViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CWViewApp]
AS
SELECT     BarCode, FabricID, CWMcNoId, CWTemp, CWChemical, CWSpeed, CWWELength, CWWashDia, ApprovedStatus, CWMcNo, CWSEWidth
FROM         dbo.CWView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "CWView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 299
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 12
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CWViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CWViewApp'
GO
/****** Object:  View [dbo].[CompactingViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CompactingViewApp]
AS
SELECT     FabricID, CMcNoID, CTemp, CFeed, CSpeed, CSteam, CDia, CGSM, CProductionTypeID, CRemarks, CreateTime, CCompaction, CProduction, CompactingMcNo, BarCode, ApprovedStatus
FROM         dbo.CompactingView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "CompactingView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 295
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 16
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompactingViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompactingViewApp'
GO
/****** Object:  View [dbo].[BrushViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BrushViewApp]
AS
SELECT     FabricID, BUpperPile, BUpperCounterPile, BUpperDrumTension, BUpperDrumRPM, BLowerPile, BLowerCounterPile, BLowerDrumTension, BLowerDrumRPM, BRemarks, BSpeed, BarCode, 
                      ApprovedStatus
FROM         dbo.BrushView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "BrushView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 299
               Right = 224
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BrushViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BrushViewApp'
GO
/****** Object:  View [dbo].[SingeingViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SingeingViewApp]
AS
SELECT     FabricID, SFHBurner1, SFHBurner2, SFWBurner1, SFWBurner2, SSpeed, SBurner, SFlamePosition, ApprovedStatus
FROM         dbo.SingeingView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "SingeingView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 245
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 9
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SingeingViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SingeingViewApp'
GO
/****** Object:  View [dbo].[StenterViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StenterViewApp]
AS
SELECT     FabricID, SMcNoID, STTemp, STFeed, STSpeed, STStreching, STChemical, STDia, STGSM, STShrinkage, STProductionTypeID, STRemarks, SProduction, StenterMcNo, BarCode, 
                      ApprovedStatus
FROM         dbo.StenterView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "StenterView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 285
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 18
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StenterViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StenterViewApp'
GO
/****** Object:  View [dbo].[QCViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[QCViewApp]
AS
SELECT     FabricID, QDia, QGSM, QShrinkage, QWash, QWater, QAcid, QAlkhali, QBursting, QPilling, QStrech, QRecovery, BarCode, ApprovedStatus
FROM         dbo.QCView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "QCView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 291
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'QCViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'QCViewApp'
GO
/****** Object:  View [dbo].[PrintViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PrintViewApp]
AS
SELECT     FabricID, PrintFactoryID, PrintCoverage, PrintTypeID, MachineTypeID, BarCode, PrintName, PrintFactory, PrintMcNo, OtherInfo, ApprovedStatus
FROM         dbo.PrintView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "PrintView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 296
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 2
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrintViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PrintViewApp'
GO
/****** Object:  View [dbo].[PeachViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PeachViewApp]
AS
SELECT     FabricID, PTaker, PPlaiter, PReturn, PTension, PRPM, PBrush, PSpeed, PDia, PGSM, BarCode, PRemarks, ApprovedStatus
FROM         dbo.PeachView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "PeachView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 299
               Right = 213
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PeachViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PeachViewApp'
GO
/****** Object:  View [dbo].[KnitViewApp]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KnitViewApp]
AS
SELECT     FabricID, GreyGSM, BarCode, YarnTension, LycraTension, GreyDia, ReqDia, ReqGSM, SL, McSpeed, ErpNo, McDia, McGauge, McBrand, McNoID, McNo, ApprovedStatus, Id
FROM         dbo.KnitView
WHERE     (ApprovedStatus = 1)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[21] 3[7] 2) )"
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
         Begin Table = "KnitView"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 286
               Right = 220
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitViewApp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitViewApp'
GO
/****** Object:  View [dbo].[MasterReportView]    Script Date: 09/29/2019 22:12:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MasterReportView]
AS
SELECT     dbo.FabricView.Id, dbo.FabricView.OrderNo, dbo.FabricView.Color, dbo.FabricView.BarCode, dbo.FabricView.BuyerName, dbo.FabricView.FabricTypeID, dbo.FabricView.BuyerID, 
                      dbo.FabricView.BatchNo, dbo.FabricView.RefNo, dbo.FabricView.Season, dbo.FabricView.CreateTime, dbo.FabricView.CompositionTypeID, dbo.FabricView.CreateByName, 
                      dbo.FabricView.Composition, dbo.FabricView.UpdateByName, dbo.FabricView.FabricTypeName, dbo.FabricView.Version, dbo.KnitViewApp.GreyGSM, dbo.KnitViewApp.YarnTension, 
                      dbo.KnitViewApp.LycraTension, dbo.KnitViewApp.GreyDia, dbo.KnitViewApp.ReqDia, dbo.KnitViewApp.ReqGSM, dbo.KnitViewApp.SL, dbo.KnitViewApp.McSpeed, dbo.KnitViewApp.ErpNo, 
                      dbo.KnitViewApp.McDia, dbo.KnitViewApp.McGauge, dbo.KnitViewApp.McBrand, dbo.KnitViewApp.McNo, dbo.CWViewApp.CWMcNo, dbo.CWViewApp.CWSEWidth, dbo.CWViewApp.CWWashDia, 
                      dbo.CWViewApp.CWWELength, dbo.CWViewApp.CWSpeed, dbo.CWViewApp.CWChemical, dbo.CWViewApp.CWTemp, dbo.HSPViewAPP.HPTemp, dbo.HSPViewAPP.HPSpeed, 
                      dbo.HSPViewAPP.HPTime, dbo.HSPViewAPP.HPFeed, dbo.HSPViewAPP.HPStrech, dbo.HSPViewAPP.HPChemical, dbo.HSPViewAPP.HPDia, dbo.HSPViewAPP.HPGSM, dbo.HSPViewAPP.HPShrinkage, 
                      dbo.HSPViewAPP.HSPMcNo, dbo.SingeingViewApp.SFHBurner1, dbo.SingeingViewApp.SFHBurner2, dbo.SingeingViewApp.SFWBurner1, dbo.SingeingViewApp.SFWBurner2, 
                      dbo.SingeingViewApp.SSpeed, dbo.SingeingViewApp.SBurner, dbo.SingeingViewApp.SFlamePosition, dbo.DyeingViewApp.DMC, dbo.DyeingViewApp.DSpeed, dbo.DyeingViewApp.DEnzy, 
                      dbo.DyeingViewApp.Recipe, dbo.DyeingViewApp.RecipeNo, dbo.DyeingViewApp.DyeingTime, dbo.DyeingViewApp.Dyebath, dbo.DyeingViewApp.Whiteness, dbo.DyeingViewApp.RFT, 
                      dbo.DyeingViewApp.DyeingDate, dbo.DyeingViewApp.History, dbo.StenterViewApp.STTemp, dbo.StenterViewApp.STFeed, dbo.StenterViewApp.STSpeed, dbo.StenterViewApp.STStreching, 
                      dbo.StenterViewApp.STChemical, dbo.StenterViewApp.STDia, dbo.StenterViewApp.STGSM, dbo.StenterViewApp.STShrinkage, dbo.StenterViewApp.STRemarks, dbo.StenterViewApp.StenterMcNo, 
                      dbo.StenterViewApp.SProduction, dbo.DryerViewApp.DRTemp, dbo.DryerViewApp.DRFeed, dbo.DryerViewApp.DRSpeed, dbo.DryerViewApp.DRStreching, dbo.DryerViewApp.DRChemical, 
                      dbo.DryerViewApp.DRDia, dbo.DryerViewApp.DRGSM, dbo.DryerViewApp.DRShrinkage, dbo.DryerViewApp.Remarks, dbo.DryerViewApp.DryerMcNo, dbo.CompactingViewApp.CTemp, 
                      dbo.CompactingViewApp.CFeed, dbo.CompactingViewApp.CSpeed, dbo.CompactingViewApp.CSteam, dbo.CompactingViewApp.CDia, dbo.CompactingViewApp.CGSM, 
                      dbo.CompactingViewApp.CRemarks, dbo.CompactingViewApp.CCompaction, dbo.CompactingViewApp.CProduction, dbo.CompactingViewApp.CompactingMcNo, dbo.PeachViewApp.PTaker, 
                      dbo.PeachViewApp.PPlaiter, dbo.PeachViewApp.PReturn, dbo.PeachViewApp.PTension, dbo.PeachViewApp.PRPM, dbo.PeachViewApp.PBrush, dbo.PeachViewApp.PSpeed, dbo.PeachViewApp.PDia, 
                      dbo.PeachViewApp.PGSM, dbo.PeachViewApp.PRemarks, dbo.BrushViewApp.BUpperPile, dbo.BrushViewApp.BUpperCounterPile, dbo.BrushViewApp.BUpperDrumTension, 
                      dbo.BrushViewApp.BUpperDrumRPM, dbo.BrushViewApp.BLowerPile, dbo.BrushViewApp.BLowerCounterPile, dbo.BrushViewApp.BLowerDrumTension, dbo.BrushViewApp.BLowerDrumRPM, 
                      dbo.BrushViewApp.BRemarks, dbo.StenterViewApp.STProductionTypeID, dbo.CompactingViewApp.CProductionTypeID, dbo.PrintViewApp.PrintCoverage, dbo.PrintViewApp.OtherInfo, 
                      dbo.PrintViewApp.PrintMcNo, dbo.PrintViewApp.PrintFactory, dbo.PrintViewApp.PrintName, dbo.QCViewApp.QDia, dbo.QCViewApp.QGSM, dbo.QCViewApp.QShrinkage, dbo.QCViewApp.QWash, 
                      dbo.QCViewApp.QWater, dbo.QCViewApp.QAcid, dbo.QCViewApp.QAlkhali, dbo.QCViewApp.QBursting, dbo.QCViewApp.QPilling, dbo.QCViewApp.QStrech, dbo.QCViewApp.QRecovery, 
                      dbo.BrushViewApp.BSpeed, dbo.KnitViewApp.Id AS KnitID, dbo.FabricView.UpdateTime
FROM         dbo.FabricView LEFT OUTER JOIN
                      dbo.BrushViewApp ON dbo.FabricView.Id = dbo.BrushViewApp.FabricID LEFT OUTER JOIN
                      dbo.QCViewApp ON dbo.FabricView.Id = dbo.QCViewApp.FabricID LEFT OUTER JOIN
                      dbo.PrintViewApp ON dbo.FabricView.Id = dbo.PrintViewApp.FabricID LEFT OUTER JOIN
                      dbo.PeachViewApp ON dbo.FabricView.Id = dbo.PeachViewApp.FabricID LEFT OUTER JOIN
                      dbo.CompactingViewApp ON dbo.FabricView.Id = dbo.CompactingViewApp.FabricID LEFT OUTER JOIN
                      dbo.StenterViewApp ON dbo.FabricView.Id = dbo.StenterViewApp.FabricID LEFT OUTER JOIN
                      dbo.DryerViewApp ON dbo.FabricView.Id = dbo.DryerViewApp.FabricID LEFT OUTER JOIN
                      dbo.DyeingViewApp ON dbo.FabricView.Id = dbo.DyeingViewApp.FabricID LEFT OUTER JOIN
                      dbo.SingeingViewApp ON dbo.FabricView.Id = dbo.SingeingViewApp.FabricID LEFT OUTER JOIN
                      dbo.HSPViewAPP ON dbo.FabricView.Id = dbo.HSPViewAPP.FabricID LEFT OUTER JOIN
                      dbo.CWViewApp ON dbo.FabricView.Id = dbo.CWViewApp.FabricID LEFT OUTER JOIN
                      dbo.KnitViewApp ON dbo.FabricView.Id = dbo.KnitViewApp.FabricID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[71] 2[3] 3) )"
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
               Top = 6
               Left = 38
               Bottom = 292
               Right = 220
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CWViewApp"
            Begin Extent = 
               Top = 82
               Left = 325
               Bottom = 149
               Right = 505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HSPViewAPP"
            Begin Extent = 
               Top = 155
               Left = 322
               Bottom = 230
               Right = 503
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SingeingViewApp"
            Begin Extent = 
               Top = 240
               Left = 322
               Bottom = 309
               Right = 501
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DyeingViewApp"
            Begin Extent = 
               Top = 326
               Left = 323
               Bottom = 386
               Right = 505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DryerViewApp"
            Begin Extent = 
               Top = 389
               Left = 323
               Bottom = 462
               Right = 508
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StenterViewApp"
            Begin Extent = 
               Top = 461
               Left = 320
               Bottom = 551
               Right = 508
            ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MasterReportView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "CompactingViewApp"
            Begin Extent = 
               Top = 6
               Left = 620
               Bottom = 87
               Right = 802
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PeachViewApp"
            Begin Extent = 
               Top = 103
               Left = 613
               Bottom = 180
               Right = 789
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "QCViewApp"
            Begin Extent = 
               Top = 315
               Left = 628
               Bottom = 413
               Right = 802
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PrintViewApp"
            Begin Extent = 
               Top = 194
               Left = 624
               Bottom = 301
               Right = 801
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "KnitViewApp"
            Begin Extent = 
               Top = 8
               Left = 324
               Bottom = 74
               Right = 506
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "BrushViewApp"
            Begin Extent = 
               Top = 53
               Left = 892
               Bottom = 153
               Right = 1078
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
      Begin ColumnWidths = 150
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
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MasterReportView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 4125
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
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MasterReportView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MasterReportView'
GO
/****** Object:  ForeignKey [FK_Aop_MachineUnit]    Script Date: 09/29/2019 22:12:28 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_MachineUnit] FOREIGN KEY([MachineType])
REFERENCES [dbo].[PrintMcNoType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_MachineUnit]
GO
/****** Object:  ForeignKey [FK_Aop_PrintUnit]    Script Date: 09/29/2019 22:12:28 ******/
ALTER TABLE [dbo].[Aop]  WITH CHECK ADD  CONSTRAINT [FK_Aop_PrintUnit] FOREIGN KEY([PrintType])
REFERENCES [dbo].[PrintFactoryType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Aop] CHECK CONSTRAINT [FK_Aop_PrintUnit]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 09/29/2019 22:12:28 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_Buyer] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Buyer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 09/29/2019 22:12:28 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_FabricType] FOREIGN KEY([FabricTypeID])
REFERENCES [dbo].[FabricType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_FabricType]
GO
