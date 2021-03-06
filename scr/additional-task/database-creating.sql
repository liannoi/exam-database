-- Copyright 2020 Maksym Liannoi
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--    http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

USE master;
GO

IF (DB_ID('ShopAdo') IS NOT NULL)
    DROP DATABASE ShopAdo;
GO

CREATE DATABASE ShopAdo;
GO

USE [ShopAdo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Category]
(
    [CategoryId]   [int] IDENTITY (1,1) NOT NULL,
    [CategoryName] [nvarchar](20)       NOT NULL,
    PRIMARY KEY CLUSTERED
        (
         [CategoryId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Manufacturer]
(
    [ManufacturerId]   [int] IDENTITY (1,1) NOT NULL,
    [ManufacturerName] [nvarchar](20)       NOT NULL,
    PRIMARY KEY CLUSTERED
        (
         [ManufacturerId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product]
(
    [ProductId]      [int] IDENTITY (1,1) NOT NULL,
    [ProductName]    [varchar](100)       NOT NULL,
    [ManufacturerId] [int]                NULL,
    [CategoryId]     [int]                NULL,
    [Price]          [money]              NOT NULL,
    [ProductCount]   [numeric](18, 3)     NOT NULL,
    PRIMARY KEY CLUSTERED
        (
         [ProductId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sale]
(
    [SaleId]    [int]   NOT NULL,
    [Summa]     [money] NOT NULL,
    [ProductId] [int]   NOT NULL,
    PRIMARY KEY CLUSTERED
        (
         [SaleId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SalePos]
(
    [PosId]     [int]           NOT NULL,
    [SaleId]    [int]           NULL,
    [ProductId] [int]           NOT NULL,
    [unitprice] [money]         NOT NULL,
    [qty]       [smallint]      NOT NULL,
    [discount]  [numeric](4, 3) NOT NULL,
    CONSTRAINT [PK_ProIdPosIs] PRIMARY KEY CLUSTERED
        (
         [PosId] ASC,
         [ProductId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Category] ON

INSERT [dbo].[Category] ([CategoryId], [CategoryName])
VALUES (1, N'Smartphone')
INSERT [dbo].[Category] ([CategoryId], [CategoryName])
VALUES (2, N'Notebook')
INSERT [dbo].[Category] ([CategoryId], [CategoryName])
VALUES (3, N'Printer')
INSERT [dbo].[Category] ([CategoryId], [CategoryName])
VALUES (4, N'Telephon')
INSERT [dbo].[Category] ([CategoryId], [CategoryName])
VALUES (79, N'Netbook')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Manufacturer] ON

INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (1, N'Samsung')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (2, N'Lenovo')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (3, N'Nokia')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (4, N'Huawei')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (5, N'Sony')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (6, N'LG')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (7, N'Acer')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (8, N'HP')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (9, N'Canon')
INSERT [dbo].[Manufacturer] ([ManufacturerId], [ManufacturerName])
VALUES (10, N'Asus')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
SET IDENTITY_INSERT [dbo].[Product] ON

INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (1, N'HP LaserJet P2035 (CE461A)', 8, 3, 5445.0000, CAST(12.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (2, N'Canon i-SENSYS MF212W with Wi-F', 9, 3, 3999.0000, CAST(7.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (3, N'Samsung SCX-4650N ', 1, 3, 3999.0000, CAST(15.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (4, N'HP DJ1510 (B2L56C) ', 8, 3, 1199.0000, CAST(2.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (5, N'Asus Transformer Book T100TAF 32GB', 10, 2, 4999.0000, CAST(11.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (6, N'Lenovo Flex 10 (59427902)', 2, 2, 5555.0000, CAST(11.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (7, N'Acer Aspire ES1-411-C1XZ', 7, 2, 6399.0000, CAST(7.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (8, N'HP 255 G4 (N0Y69ES)', NULL, 2, 6199.0000, CAST(5.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (9, N'HP ProBook 430 (N0Y70ES)', 8, 2, 12400.0000, CAST(3.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (10, N'Ultrabook Samsung 535U3', 1, NULL, 8000.0000, CAST(10.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (11, N'Samsung Galaxy S3 Neo Duos I9300i Black', 1, 1, 3999.0000, CAST(7.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (12, N'Lenovo A5000 Black', 2, 1, 3299.0000, CAST(5.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (13, N'Microsoft Lumia 640 XL (Nokia)', 3, 1, 4888.0000, CAST(5.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (14, N'LG G3s Dual D724 Titan', 6, 1, 3999.0000, CAST(0.000 AS Numeric(18, 3)))
INSERT [dbo].[Product] ([ProductId], [ProductName], [ManufacturerId], [CategoryId], [Price], [ProductCount])
VALUES (15, N'Test', 2, 2, 5999.0000, CAST(0.000 AS Numeric(18, 3)))
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[Sale] ([SaleId], [Summa], [ProductId])
VALUES (5, 37080.0000, 10)
INSERT [dbo].[Sale] ([SaleId], [Summa], [ProductId])
VALUES (7, 13600.0000, 14)
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (1, 5, 12, 11350.0000, 26, CAST(0.200 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (2, 5, 1, 8000.0000, 26, CAST(0.600 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (3, 7, 2, 8000.0000, 26, CAST(0.050 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (4, 7, 11, 8000.0000, 26, CAST(0.300 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (5, 5, 12, 3200.0000, 25, CAST(0.800 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (6, 7, 12, 2000.0000, 6, CAST(0.500 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (101, 7, 11, 100.0000, 10, CAST(0.000 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (102, 5, 11, 100.0000, 10, CAST(0.000 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (103, 7, 11, 100.0000, 10, CAST(0.000 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (104, 5, 11, 100.0000, 10, CAST(0.000 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (105, 7, 11, 100.0000, 10, CAST(0.000 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (1024, 5, 10, 250.0000, 100, CAST(0.200 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (1024, 7, 14, 140.0000, 80, CAST(0.500 AS Numeric(4, 3)))
ALTER TABLE [dbo].[Product]
    ADD DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product]
    ADD DEFAULT ((0)) FOR [ProductCount]
GO
ALTER TABLE [dbo].[Product]
    WITH CHECK ADD FOREIGN KEY ([CategoryId])
        REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product]
    WITH CHECK ADD FOREIGN KEY ([ManufacturerId])
        REFERENCES [dbo].[Manufacturer] ([ManufacturerId])
GO
ALTER TABLE [dbo].[SalePos]
    WITH CHECK ADD CONSTRAINT [FK_SalePos_Sale] FOREIGN KEY ([SaleId])
        REFERENCES [dbo].[Sale] ([SaleId])
GO
ALTER TABLE [dbo].[SalePos]
    CHECK CONSTRAINT [FK_SalePos_Sale]
GO
