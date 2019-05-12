USE [TextileResearchDevelopment]
GO
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 05/12/2019 16:55:39 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 05/12/2019 16:55:39 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
/****** Object:  View [dbo].[FabricView]    Script Date: 05/12/2019 16:55:40 ******/
DROP VIEW [dbo].[FabricView]
GO
/****** Object:  Table [dbo].[Fabric]    Script Date: 05/12/2019 16:55:39 ******/
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_Buyer]
GO
ALTER TABLE [dbo].[Fabric] DROP CONSTRAINT [FK_Fabric_FabricType]
GO
DROP TABLE [dbo].[Fabric]
GO
/****** Object:  Table [dbo].[FabricType]    Script Date: 05/12/2019 16:55:39 ******/
DROP TABLE [dbo].[FabricType]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/12/2019 16:55:39 ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 05/12/2019 16:55:39 ******/
DROP TABLE [dbo].[Buyer]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 05/12/2019 16:55:39 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 05/12/2019 16:55:39 ******/
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
/****** Object:  Table [dbo].[FabricType]    Script Date: 05/12/2019 16:55:39 ******/
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
/****** Object:  Table [dbo].[Fabric]    Script Date: 05/12/2019 16:55:39 ******/
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
SET IDENTITY_INSERT [dbo].[Fabric] OFF
/****** Object:  View [dbo].[FabricView]    Script Date: 05/12/2019 16:55:40 ******/
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
/****** Object:  ForeignKey [FK_Fabric_Buyer]    Script Date: 05/12/2019 16:55:39 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_Buyer] FOREIGN KEY([BuyerID])
REFERENCES [dbo].[Buyer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_Buyer]
GO
/****** Object:  ForeignKey [FK_Fabric_FabricType]    Script Date: 05/12/2019 16:55:39 ******/
ALTER TABLE [dbo].[Fabric]  WITH CHECK ADD  CONSTRAINT [FK_Fabric_FabricType] FOREIGN KEY([FabricTypeID])
REFERENCES [dbo].[FabricType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fabric] CHECK CONSTRAINT [FK_Fabric_FabricType]
GO
