USE [TextileResearchDevelopment]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 05/19/2019 21:03:28 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 05/19/2019 21:03:28 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  ForeignKey [FK_Knitting_Fabric]    Script Date: 05/19/2019 21:03:28 ******/
ALTER TABLE [dbo].[Knitting] DROP CONSTRAINT [FK_Knitting_Fabric]
GO
/****** Object:  View [dbo].[KnitView]    Script Date: 05/19/2019 21:03:28 ******/
DROP VIEW [dbo].[KnitView]
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 05/19/2019 21:03:28 ******/
DROP VIEW [dbo].[FabricView]
GO
/****** Object:  Table [dbo].[Knitting]    Script Date: 05/19/2019 21:03:28 ******/
ALTER TABLE [dbo].[Knitting] DROP CONSTRAINT [FK_Knitting_Fabric]
GO
DROP TABLE [dbo].[Knitting]
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 05/19/2019 21:03:28 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
DROP TABLE [dbo].[Fabric]
GO
/****** Object:  Table [dbo].[FabricType]    Script Date: 05/19/2019 21:03:28 ******/
DROP TABLE [dbo].[FabricType]
GO
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 05/19/2019 21:03:28 ******/
DROP TABLE [dbo].[KnitUnit]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 05/19/2019 21:03:28 ******/
DROP TABLE [dbo].[Buyer]
GO
/****** Object:  Table [dbo].[McBrand]    Script Date: 05/19/2019 21:03:28 ******/
DROP TABLE [dbo].[McBrand]
GO
/****** Object:  Table [dbo].[McDiaGuage]    Script Date: 05/19/2019 21:03:28 ******/
DROP TABLE [dbo].[McDiaGuage]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/19/2019 21:03:28 ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[YarnCount]    Script Date: 05/19/2019 21:03:28 ******/
DROP TABLE [dbo].[YarnCount]
GO
/****** Object:  Table [dbo].[YarnCount]    Script Date: 05/19/2019 21:03:28 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 05/19/2019 21:03:28 ******/
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
/****** Object:  Table [dbo].[McDiaGuage]    Script Date: 05/19/2019 21:03:28 ******/
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
/****** Object:  Table [dbo].[McBrand]    Script Date: 05/19/2019 21:03:28 ******/
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
/****** Object:  Table [dbo].[Buyer]    Script Date: 05/19/2019 21:03:28 ******/
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
/****** Object:  Table [dbo].[KnitUnit]    Script Date: 05/19/2019 21:03:28 ******/
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
/****** Object:  Table [dbo].[FabricType]    Script Date: 05/19/2019 21:03:28 ******/
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
/****** Object:  Table [dbo].[Fabric]    Script Date: 05/19/2019 21:03:28 ******/
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
 CONSTRAINT [PK_Fabric] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Fabric] ON
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode]) VALUES (4, 1, 1, N'asd', N'asdaw', N'asd', N'asd', 1, N'asd', N'asd', CAST(1.00 AS Decimal(18, 2)), CAST(0xB63F0B00 AS Date), 2019561)
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode]) VALUES (14, 1, 3, N'asd', N'asdaw', N'asd', N'asd', 1, N'asd', N'asd', CAST(1.00 AS Decimal(18, 2)), CAST(0xB63F0B00 AS Date), 20195121)
INSERT [dbo].[Fabric] ([Id], [BuyerID], [FabricTypeID], [OrderNo], [Color], [Note], [Width], [GSM], [LabdipStatus], [ChallanNo], [DeliveryQty], [DeliveryDate], [Barcode]) VALUES (16, 2, 2, N'asd', N'asdaw', N'asd', N'asd', 1, N'asd', N'asd', CAST(1.00 AS Decimal(18, 2)), CAST(0xB63F0B00 AS Date), 20195141)
SET IDENTITY_INSERT [dbo].[Fabric] OFF
/****** Object:  Table [dbo].[Knitting]    Script Date: 05/19/2019 21:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Knitting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
	[ReviseStatus] [int] NOT NULL,
	[ApprovedStatus] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[FabricID] [int] NOT NULL,
	[BarCode] [bigint] NULL,
 CONSTRAINT [PK_Knitting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 05/19/2019 21:03:28 ******/
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
/****** Object:  View [dbo].[KnitView]    Script Date: 05/19/2019 21:03:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[KnitView]
AS
SELECT     dbo.Knitting.Id, dbo.Knitting.DiaGaugeID, dbo.Knitting.YarnCountID, dbo.Knitting.YarnBrand, dbo.Knitting.YarnLot, dbo.Knitting.StitchLength, dbo.Knitting.KnitUnitID, dbo.Knitting.MCNO, 
                      dbo.Knitting.MCRPM, dbo.Knitting.GreyWidth, dbo.Knitting.GreyGSM, dbo.Knitting.TumbleWidth, dbo.Knitting.TumbleGSM, dbo.Knitting.McBrandID, dbo.Knitting.ReviseStatus, 
                      dbo.Knitting.ApprovedStatus, dbo.Knitting.OrderDate, dbo.Knitting.FabricID, dbo.Fabric.ChallanNo, dbo.Fabric.DeliveryDate, dbo.Buyer.BuyerName, dbo.FabricType.FabricName, dbo.Fabric.OrderNo, 
                      dbo.Fabric.Color, dbo.McBrand.McBrand, dbo.KnitUnit.KnitUnit, dbo.McDiaGuage.McDiaGuage, dbo.YarnCount.YarnCount, dbo.Fabric.Barcode, dbo.Knitting.BarCode AS Expr1
FROM         dbo.Buyer RIGHT OUTER JOIN
                      dbo.Fabric ON dbo.Buyer.Id = dbo.Fabric.BuyerID RIGHT OUTER JOIN
                      dbo.Knitting LEFT OUTER JOIN
                      dbo.YarnCount ON dbo.Knitting.YarnCountID = dbo.YarnCount.Id LEFT OUTER JOIN
                      dbo.McBrand ON dbo.Knitting.McBrandID = dbo.McBrand.Id LEFT OUTER JOIN
                      dbo.McDiaGuage ON dbo.Knitting.DiaGaugeID = dbo.McDiaGuage.Id LEFT OUTER JOIN
                      dbo.KnitUnit ON dbo.Knitting.KnitUnitID = dbo.KnitUnit.Id ON dbo.Fabric.Id = dbo.Knitting.FabricID LEFT OUTER JOIN
                      dbo.FabricType ON dbo.Fabric.FabricTypeID = dbo.FabricType.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[11] 2[13] 3) )"
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
         Begin Table = "Buyer"
            Begin Extent = 
               Top = 0
               Left = 528
               Bottom = 90
               Right = 688
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Fabric"
            Begin Extent = 
               Top = 13
               Left = 261
               Bottom = 270
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Knitting"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 507
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YarnCount"
            Begin Extent = 
               Top = 274
               Left = 756
               Bottom = 365
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "McBrand"
            Begin Extent = 
               Top = 311
               Left = 499
               Bottom = 401
               Right = 659
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "McDiaGuage"
            Begin Extent = 
               Top = 132
               Left = 535
               Bottom = 221
               Right = 695
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KnitUnit"
            Begin Extent = 
               Top = 442
               Left = 380
               Bottom = 532
               Right = 540
            End
            DisplayFlags = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'280
            TopColumn = 0
         End
         Begin Table = "FabricType"
            Begin Extent = 
               Top = 48
               Left = 745
               Bottom = 138
               Right = 905
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'KnitView'
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 05/19/2019 21:03:28 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_Buyer] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Buyer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 05/19/2019 21:03:28 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_FabricType] FOREIGN KEY([FabricTypeID])
REFERENCES [dbo].[FabricType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  ForeignKey [FK_Knitting_Fabric]    Script Date: 05/19/2019 21:03:28 ******/
ALTER TABLE [dbo].[Knitting]  WITH CHECK ADD  CONSTRAINT [FK_Knitting_Fabric] FOREIGN KEY([FabricID])
REFERENCES [dbo].[Fabric] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Knitting] CHECK CONSTRAINT [FK_Knitting_Fabric]
GO
