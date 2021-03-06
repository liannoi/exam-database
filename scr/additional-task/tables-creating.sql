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

USE [ShopAdo]
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

INSERT [dbo].[Sale] ([SaleId], [Summa], [ProductId])
VALUES (5, 20000.0000, 10)
INSERT [dbo].[Sale] ([SaleId], [Summa], [ProductId])
VALUES (7, 5600.0000, 14)
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (1, 5, 12, 11350.0000, 26, CAST(0.200 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (2, 5, 1, 8000.0000, 26, CAST(0.600 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (3, 7, 2, 8000.0000, 26, CAST(0.050 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (4, 7, 11, 8000.0000, 26, CAST(0.300 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (5, 5, 12, 3200.0000, 3, CAST(0.800 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (6, 7, 12, 2000.0000, 6, CAST(0.500 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (1024, 5, 10, 250.0000, 100, CAST(0.200 AS Numeric(4, 3)))
INSERT [dbo].[SalePos] ([PosId], [SaleId], [ProductId], [unitprice], [qty], [discount])
VALUES (1024, 7, 14, 140.0000, 80, CAST(0.500 AS Numeric(4, 3)))

ALTER TABLE [dbo].[SalePos]
    WITH CHECK ADD CONSTRAINT [FK_SalePos_Sale] FOREIGN KEY ([SaleId])
        REFERENCES [dbo].[Sale] ([SaleId])
GO

ALTER TABLE [dbo].[SalePos]
    CHECK CONSTRAINT [FK_SalePos_Sale]
GO
