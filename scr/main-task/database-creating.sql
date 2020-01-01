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

USE [master]
GO

CREATE DATABASE [ElectricPower]
GO

USE [ElectricPower]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Street]
(
    [StreetId]   [int] IDENTITY (1,1) NOT NULL,
    [StreetName] [nvarchar](128)      NOT NULL,
    CONSTRAINT [PK_dbo.Street] PRIMARY KEY CLUSTERED
        (
         [StreetId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Address]
(
    [AddressId]     [int] IDENTITY (1,1) NOT NULL,
    [StreetId]      [int]                NOT NULL,
    [SubdivisionId] [int]                NOT NULL,
    [House]         [nvarchar](12)       NOT NULL,
    [Serial]        [nvarchar](24)       NULL,
    [СountFloor]    [int]                NULL,
    [СountEntrance] [int]                NULL,
    [Latitude]      [decimal](18, 2)     NOT NULL,
    [Longitude]     [decimal](18, 2)     NOT NULL,
    CONSTRAINT [PK_dbo.Address] PRIMARY KEY CLUSTERED
        (
         [AddressId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConsumerRent]
(
    [ConsumerRentId] [int] IDENTITY (1,1) NOT NULL,
    [ConsumerId]     [int]                NOT NULL,
    [AddressId]      [int]                NOT NULL,
    CONSTRAINT [PK_dbo.ConsumerRent] PRIMARY KEY CLUSTERED
        (
         [ConsumerRentId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConsumerContract]
(
    [ConsumerContractId] [int] IDENTITY (1,1) NOT NULL,
    [ConsumerRentId]     [int]                NOT NULL,
    [UsedPercent]        [numeric](7, 2)      NOT NULL,
    [UsedKvat]           [int]                NOT NULL,
    [DateStart]          [datetime]           NULL,
    [DateEnd]            [datetime]           NULL,
    PRIMARY KEY CLUSTERED
        (
         [ConsumerContractId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Consumer]
(
    [ConsumerId]   [int] IDENTITY (1,1) NOT NULL,
    [ConsumerName] [nvarchar](128)      NULL,
    CONSTRAINT [PK_dbo.Consumer] PRIMARY KEY CLUSTERED
        (
         [ConsumerId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Subdivision]
(
    [SubdivisionId]   [int] IDENTITY (1,1) NOT NULL,
    [SubdivisionName] [nvarchar](64)       NOT NULL,
    CONSTRAINT [PK_dbo.Subdivision] PRIMARY KEY CLUSTERED
        (
         [SubdivisionId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Address] ON

INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1, 45, 2, N'34/1', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (2, 45, 2, N'35', NULL, 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (3, 45, 2, N'36', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (4, 45, 2, N'38/14', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (5, 45, 2, N'39', NULL, 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (6, 45, 2, N'41', NULL, 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (7, 45, 2, N'43/12', NULL, 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (8, 47, 2, N'1', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (9, 47, 2, N'10', N'1т-480-11', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (10, 47, 2, N'11/8', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (11, 47, 2, N'12', NULL, 5, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (12, 47, 2, N'13/9', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (13, 47, 2, N'15/20', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (14, 47, 2, N'2', N'1-480-15к', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (15, 47, 2, N'3', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (16, 47, 2, N'4', NULL, 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (17, 47, 2, N'5', NULL, 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (18, 47, 2, N'6', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (19, 47, 2, N'6а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (20, 121, 2, N'13', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (21, 121, 2, N'17', N'1-438-6м', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (22, 121, 2, N'19', NULL, 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (23, 121, 2, N'19а', N'1-464а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (24, 121, 2, N'19б', N'1-464а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (25, 121, 2, N'1а', NULL, 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (26, 121, 2, N'21', NULL, 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (27, 121, 2, N'23а', N'1-464а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (28, 53, 2, N'26/9', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (29, 53, 2, N'28', N'1-438-6м', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (30, 53, 2, N'32', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (31, 53, 1, N'38/16', N'б/с', 2, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (32, 53, 1, N'40', N'б/с', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (33, 53, 1, N'44', N'б/с', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (34, 53, 1, N'44а', N'б/с', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (35, 53, 1, N'46/2', N'б/с', 2, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (36, 88, 1, N'10/19', N'б/с', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (37, 88, 1, N'19', N'б/с', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (38, 88, 1, N'3', N'б/с', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (39, 88, 1, N'4', N'знесено', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (40, 88, 1, N'5', N'б/с', 4, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (41, 88, 1, N'7', N'б/с', 4, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (42, 89, 2, N'1', N'1-301-и', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (43, 89, 1, N'14', N'б/с', 5, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (44, 89, 1, N'18', N'б/с', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (45, 89, 1, N'2', N'б/с', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (46, 89, 2, N'3', N'1-301-и', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (47, 89, 1, N'4', N'б/с', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (48, 89, 1, N'6', N'б/с', 4, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (49, 89, 1, N'8', N'б/с', 4, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (50, 103, 1, N'4', N'б/с', 2, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (51, 103, 1, N'4а', N'б/с', 2, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (52, 103, 1, N'6', N'б/с', 2, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (53, 103, 1, N'6а', N'знесено', 2, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (54, 103, 1, N'8/29', N'знесено', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (55, 112, 2, N'3', NULL, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (56, 112, 2, N'7', NULL, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (57, 112, 2, N'9', NULL, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (58, 112, 2, N'9а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (59, 42, 3, N'12в', NULL, 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (60, 42, 3, N'14', N'1-438-6М', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (61, 42, 3, N'16', N'1-458-6', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (62, 42, 3, N'16а', N'1-480-14', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (63, 42, 3, N'18', N'1-438-5', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (64, 42, 3, N'18а', N'1-458-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (65, 42, 3, N'20/2', N'1-438-М-5', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (66, 42, 3, N'22/1', N'1-438-5', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (67, 42, 3, N'24', N'1-438-5', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (68, 42, 3, N'26/2', N'1-438-5', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (69, 42, 3, N'4', N'1-438-6М', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (70, 42, 3, N'6', N'1-438-6М', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (71, 42, 3, N'8/2', N'1-438-6М', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (72, 45, 1, N'11', N'1-480-15', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (73, 45, 3, N'13', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (74, 45, 3, N'15', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (75, 45, 1, N'17', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (76, 45, 1, N'19', N'1-480-15', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (77, 67, 3, N'11', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (78, 67, 1, N'12', N'1-480-15', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (79, 67, 3, N'13', N'1-438-61', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (80, 67, 3, N'13а', N'1-480 ВК', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (81, 67, 3, N'13б', N'1-480-13', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (82, 67, 3, N'13в', N'1-438-5', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (83, 67, 1, N'14', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (84, 67, 3, N'15', N'1-438-5', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (85, 67, 3, N'17', N'1-458-6', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (86, 67, 3, N'17а', N'1-438-5', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (87, 67, 3, N'19/18', N'інд.', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (88, 67, 3, N'3', N'1-438-5', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (89, 67, 3, N'5', N'1-438-5', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (90, 67, 3, N'5а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (91, 67, 3, N'7', N'1-438-5', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (92, 67, 1, N'8', N'1-480-15', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (93, 67, 3, N'9', N'1-438-6М', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (94, 67, 3, N'9а', N'1-480-147КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (95, 67, 3, N'9б', N'1-438-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (96, 68, 3, N'10', N'1-438-5', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (97, 68, 3, N'12', N'1-480КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (98, 68, 3, N'14', N'13-01', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (99, 68, 3, N'14а', N'13-01', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (100, 68, 3, N'16', N'1-480-14', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (101, 68, 3, N'18/19', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (102, 68, 3, N'18/2', N'1-438-5', 5, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (103, 68, 3, N'2/26', N'1-458-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (104, 68, 3, N'4', N'1-480-14', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (105, 68, 3, N'6', N'13-01', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (106, 68, 3, N'6а', N'13-01', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (107, 121, 2, N'23б', N'1-464а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (108, 121, 2, N'25', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (109, 121, 2, N'25а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (110, 121, 2, N'27', N'1-438-6м', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (111, 121, 2, N'27а', N'1-301-и', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (112, 68, 3, N'8', N'1-480-14', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (113, 70, 3, N'16а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (114, 70, 3, N'16б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (115, 70, 3, N'17/2', N'1-438-5', 5, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (116, 70, 3, N'17а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (117, 70, 3, N'18/19', N'1-458-6', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (118, 70, 3, N'2/20', N'1-438-5', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (119, 70, 3, N'2а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (120, 70, 3, N'3', N'13-01', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (121, 70, 3, N'3а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (122, 70, 3, N'4', N'1-458-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (123, 70, 3, N'5а', N'13-01', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (124, 70, 3, N'6', N'1-458-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (125, 70, 3, N'7', N'13-01', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (126, 70, 3, N'7а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (127, 70, 3, N'8', N'1-458-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (128, 70, 3, N'8а', N'Б/С', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (129, 70, 3, N'8б', N'1-480-15', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (130, 54, 4, N'6', N'1-480-19в', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (131, 54, 4, N'8', N'1-480-19в', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (132, 55, 4, N'16/1', N'індивід.', 18, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (133, 55, 4, N'16/2', N'індивід.', 20, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (134, 55, 4, N'16/3', N'індивід.', 20, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (135, 55, 4, N'16/4', N'індивід.', 18, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (136, 55, 4, N'2', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (137, 55, 4, N'4', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (138, 55, 4, N'6', N'індивід.', 17, -1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (139, 55, 4, N'8а', N'індивід.', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (140, 55, 4, N'8б', N'індивід.', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (141, 56, 4, N'2', N'1-488-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (142, 56, 4, N'4', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (143, 56, 4, N'4а', N'індивід.', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (144, 57, 4, N'22а', N'індивід.', 18, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (145, 57, 4, N'22б', N'індивід.', 18, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (146, 57, 4, N'22в', N'індивід.', 18, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (147, 57, 4, N'2а', N'ММ', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (148, 57, 4, N'4', N'індивід.', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (149, 57, 4, N'9', N'індивід.', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (150, 58, 4, N'1', N'1-433-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (151, 58, 4, N'11', N'Л-3-11-5М', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (152, 58, 4, N'11/1', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (153, 58, 4, N'13', N'Л-3-11-5М', 4, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (154, 58, 4, N'1а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (155, 58, 4, N'3', N'1-433-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (156, 121, 2, N'27б', N'1-301-и', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (157, 121, 2, N'29', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (158, 121, 2, N'29а', N'1-301-и', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (159, 121, 2, N'3', N'1-480-19б', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (160, 43, 1, N'31', N'б/с', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (161, 43, 1, N'31а', N'б/с', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (162, 43, 1, N'33/1', N'б/с', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (163, 121, 2, N'3а', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (164, 45, 2, N'21/9', NULL, 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (165, 45, 2, N'22/11', NULL, 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (166, 45, 2, N'23', NULL, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (167, 45, 2, N'24', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (168, 45, 2, N'24а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (169, 45, 2, N'26/8', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (170, 47, 2, N'7/21', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (171, 47, 2, N'8', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (172, 47, 2, N'9а', N'1-480-15к', 5, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (173, 136, 2, N'37', NULL, 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (174, 136, 2, N'37а', NULL, 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (175, 136, 2, N'40', NULL, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (176, 136, 2, N'41', NULL, 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (177, 69, 3, N'1/10', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (178, 69, 3, N'2/8', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (179, 69, 3, N'2а', N'1-438-5', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (180, 69, 3, N'3', N'1-480-14', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (181, 69, 3, N'4', N'13-01ГИ ', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (182, 48, 2, N'43', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (183, 69, 3, N'4а', N'1-438-5', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (184, 69, 3, N'5', N'1-480-14', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (185, 69, 3, N'6', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (186, 69, 3, N'7', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (187, 69, 3, N'7а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (188, 70, 3, N'1/22', N'1-438-5', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (189, 70, 3, N'10', N'Б/С', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (190, 70, 3, N'10а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (191, 70, 3, N'11', N'13-01', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (192, 136, 2, N'45', NULL, 14, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (193, 136, 2, N'47', NULL, 12, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (194, 70, 3, N'12', N'1-438-5', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (195, 136, 2, N'49/5', NULL, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (196, 49, 2, N'10', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (197, 49, 2, N'11/11', NULL, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (198, 49, 2, N'14', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (199, 49, 2, N'16', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (200, 49, 2, N'16а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (201, 49, 2, N'17', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (202, 49, 2, N'18', N'1-480-156', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (203, 49, 2, N'18а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (204, 49, 2, N'19', N'1-484-12', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (205, 49, 2, N'20', N'1-438-6м', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (206, 49, 2, N'20а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (207, 49, 2, N'22', N'1-438-25', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (208, 49, 2, N'22а', N'1-301-и', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (209, 70, 3, N'12а', N'Б/С', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (210, 58, 4, N'5', N'1-480-19в', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (211, 54, 4, N'10', N'1-480-19в', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (212, 54, 4, N'17', N'ММ', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (213, 54, 4, N'18', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (214, 54, 4, N'18а', N'індивід.', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (215, 54, 4, N'19', N'ММ', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (216, 54, 4, N'20', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (217, 54, 4, N'21', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (218, 54, 4, N'21/1', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (219, 54, 4, N'21/2', N'96', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (220, 54, 4, N'22', N'індивід.', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (221, 54, 4, N'22а', N'індивід.', 14, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (222, 54, 4, N'23', N'1-480-15вк', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (223, 54, 4, N'24', N'1-480-15вк', 5, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (224, 54, 4, N'25', N'1-480-15вк', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (225, 54, 4, N'25/1', N'1-480-15вк', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (226, 54, 4, N'25/2', N'індивід.', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (227, 54, 4, N'26', N'1-КГ-480П', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (228, 54, 4, N'27', N'1-480-15вк', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (229, 54, 4, N'28', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (230, 54, 4, N'29', N'1-480-15вк', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (231, 54, 4, N'29/1', N'1-480-15вк', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (232, 54, 4, N'3', N'індивід.', 9, 14, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (233, 54, 4, N'30', N'індивід.', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (234, 54, 4, N'31', N'1-488-6М', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (235, 54, 4, N'32', N'1-КГ-480П', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (236, 70, 3, N'12б', N'13-01', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (237, 49, 2, N'22б', N'1-301-и', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (238, 49, 2, N'23', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (239, 49, 2, N'24', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (240, 49, 2, N'24а', N'1-301-и', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (241, 49, 2, N'25', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (242, 49, 1, N'26', N'б/с', 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (243, 49, 2, N'27/2', N'1-438-25', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (244, 49, 2, N'29', NULL, 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (245, 49, 1, N'30', N'б/с', 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (247, 49, 2, N'8а', NULL, 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (248, 50, 2, N'1', N'1-480-15к', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (249, 50, 2, N'11', N'1-438', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (250, 50, 2, N'13', NULL, 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (251, 50, 2, N'15', NULL, 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (252, 50, 2, N'2', N'1-480-14м ', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (253, 50, 2, N'5', N'1-438', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (254, 50, 2, N'6', N'1-480-14к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (255, 50, 2, N'7', N'1-438', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (256, 50, 2, N'8', NULL, 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (257, 50, 2, N'8а', NULL, 12, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (258, 54, 4, N'33', N'індивід.', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (259, 54, 4, N'4', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (260, 58, 4, N'5/1', N'1-480-19к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (261, 58, 4, N'5/2', N'1-480-19к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (262, 58, 4, N'7', N'1-438-9', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (263, 50, 2, N'9', N'1-438', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (264, 5, 10, N'3б', N'1-464-54М', 9, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (265, 5, 10, N'5', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (266, 5, 10, N'7', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (267, 5, 10, N'9', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (275, 33, 10, N'28', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (276, 33, 10, N'30', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (277, 33, 10, N'30а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (278, 33, 10, N'30б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (279, 33, 10, N'34', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (280, 33, 10, N'36', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (281, 58, 4, N'7/1', NULL, 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (282, 58, 4, N'9', N'1-480-15вк', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (283, 59, 4, N'13', N'1-480', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (284, 59, 4, N'16', N'1-480', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (285, 59, 4, N'17/1', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (286, 59, 4, N'17/2', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (287, 60, 4, N'9', N'індивід.', 10, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (288, 61, 4, N'1', N'Т-4', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (289, 61, 4, N'10', N'87', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (290, 61, 4, N'3', N'Т-4', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (291, 42, 3, N'1', N'Л-5М', 5, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (292, 42, 3, N'11', N'1-464-А2', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (293, 42, 3, N'13', N'1-438-5', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (294, 42, 3, N'13а', N'інд.', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (295, 42, 3, N'1а', N'1-480-19А', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (296, 42, 3, N'1б', N'інд.', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (297, 42, 3, N'1в', N'1-480-19-А', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (298, 42, 3, N'3', N'1-424-11', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (299, 42, 3, N'3б', N'1-480-12Г', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (300, 42, 3, N'5', N'Л-5М', 5, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (301, 42, 3, N'5а', N'інд.', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (302, 42, 3, N'5б', N'інд', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (303, 42, 3, N'7', N'Л-6', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (304, 44, 1, N'3', N'1-438-6', 5, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (305, 44, 1, N'3а', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (306, 45, 1, N'1', N'1-438-6', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (307, 45, 1, N'3', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (308, 45, 1, N'5', N'1-438-6', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (309, 58, 3, N'12', N'Л-З-Л-5М', 5, 10, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (310, 58, 3, N'14/1', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (311, 58, 3, N'16', N'1-КГ-480', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (312, 58, 3, N'18', N'Л-З-Л-5М', 5, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (313, 58, 3, N'18/1', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (314, 58, 3, N'2', N'інд.', 10, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (315, 58, 3, N'2/1', N'1-480-12 Г', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (316, 58, 3, N'2б', N'96', 10, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (317, 51, 2, N'1', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (318, 51, 2, N'10', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (319, 51, 2, N'2/27', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (320, 51, 2, N'3', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (321, 51, 2, N'5', NULL, 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (322, 51, 2, N'6/14', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (323, 51, 2, N'7', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (324, 51, 2, N'8', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (325, 52, 2, N'10', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (326, 52, 2, N'11', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (327, 52, 2, N'12', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (328, 52, 2, N'14/6', N'1-438-6м', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (329, 52, 2, N'16', N'1-438', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (330, 52, 2, N'18', NULL, 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (331, 52, 1, N'25б', N'б/с', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (332, 52, 1, N'27', N'знесено', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (333, 52, 1, N'32а', N'б/с', 2, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (334, 52, 1, N'32б', N'б/с', 2, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (335, 52, 2, N'4', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (336, 52, 2, N'5', NULL, 5, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (337, 52, 2, N'6', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (338, 52, 2, N'7', NULL, 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (339, 53, 2, N'16', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (340, 61, 4, N'5', N'Т-4', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (341, 61, 4, N'8/4', N'134', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (342, 53, 2, N'18', NULL, 3, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (343, 53, 2, N'18а', NULL, 3, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (344, 62, 4, N'25', N'96-л', 10, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (345, 62, 4, N'3', N'індивід.', 10, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (346, 62, 4, N'5', N'124-27-10', 14, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (347, 63, 4, N'2', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (348, 63, 4, N'23/3', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (349, 64, 4, N'10', N'індивід.', 14, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (350, 64, 4, N'19', N'індивід.', 16, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (351, 64, 4, N'21', N'індивід.', 17, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (352, 65, 4, N'1', N'індивід.', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (353, 65, 4, N'13/6', NULL, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (354, 65, 4, N'19', N'індивід.', 16, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (355, 65, 4, N'1а', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (356, 65, 4, N'4', N'134', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (357, 66, 4, N'1/35', N'індивід.', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (358, 66, 4, N'27', N'ММ', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (359, 66, 4, N'29', N'ММ', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (360, 66, 4, N'3/5', N'індивід.', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (361, 66, 4, N'5', N'1-488-6М', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (362, 90, 4, N'23', N'індивід.', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (363, 100, 4, N'9', N'індивід.', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (364, 106, 4, N'3', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (365, 106, 4, N'5/11', N'індивід.', 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (366, 107, 4, N'18/11', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (367, 58, 3, N'4', N'Л-З-Л-5М', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (368, 58, 3, N'4/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (369, 58, 3, N'6', N'1-КГ-480', 6, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (370, 53, 2, N'22/14', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (371, 56, 6, N'101', N'індивід', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (372, 56, 6, N'101а', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (373, 56, 6, N'101б', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (374, 56, 6, N'103/1', N'індивід', 4, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (375, 56, 6, N'105/2', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (376, 56, 6, N'107/2', N'індивід', 4, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (377, 56, 6, N'109а', N'87-4/75', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (378, 56, 6, N'111', N'індивід', 4, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (379, 56, 6, N'34', N'87-040', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (380, 56, 6, N'36а', N'індивід', 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (381, 56, 6, N'37б', N'індивід', 13, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (382, 56, 6, N'39а', N'індивід', 16, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (383, 56, 6, N'39в', N'індивід', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (384, 56, 6, N'39г', N'індивід', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (385, 56, 6, N'39д', N'індивід', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (386, 56, 6, N'39є', N'індивід', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (387, 56, 6, N'39з', N'індивід', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (388, 56, 6, N'41а', N'індивід', 16, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (389, 56, 6, N'41б', N'індивід', 16, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (390, 56, 6, N'43/57', N'96', 10, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (391, 56, 6, N'52', N'15-КВ-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (392, 56, 6, N'52а', N'15-КВ-480', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (393, 56, 6, N'54', N'15-КВ-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (394, 56, 6, N'56', N'15-КВ-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (395, 56, 6, N'60', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (396, 56, 6, N'64а', N'ММ', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (397, 5, 10, N'10', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (398, 5, 10, N'12', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (399, 5, 10, N'14', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (400, 5, 10, N'16', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (401, 5, 10, N'18', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (402, 5, 10, N'2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (403, 5, 10, N'20', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (404, 5, 10, N'22', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (405, 5, 10, N'2а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (406, 5, 10, N'2б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (407, 5, 10, N'4', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (408, 5, 10, N'4а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (409, 5, 10, N'4б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (410, 5, 10, N'6', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (411, 5, 10, N'8', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (412, 11, 10, N'10', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (413, 11, 10, N'10а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (414, 11, 10, N'12а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (415, 11, 10, N'14а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (416, 11, 10, N'2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (417, 11, 10, N'2а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (418, 11, 10, N'2б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (419, 11, 10, N'2в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (420, 11, 10, N'4', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (421, 11, 10, N'4а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (422, 11, 10, N'4в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (423, 58, 3, N'8', N'Л-З-Л-5М', 5, 10, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (424, 11, 10, N'6', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (425, 11, 10, N'6а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (426, 11, 10, N'8', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (427, 11, 10, N'8а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (428, 11, 10, N'8г', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (429, 15, 10, N'3', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (430, 15, 10, N'3а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (431, 15, 10, N'3б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (432, 15, 10, N'5', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (433, 15, 10, N'5а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (434, 15, 10, N'7', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (435, 15, 10, N'7а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (436, 15, 10, N'9', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (437, 15, 10, N'9а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (438, 15, 10, N'9б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (439, 58, 3, N'8/1', N'1-480-145', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (440, 59, 3, N'10', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (441, 59, 3, N'3', N'1-480-15 В К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (442, 59, 3, N'4', N'інд.480-15-К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (443, 59, 3, N'6', N'1-480-15 ВК', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (444, 59, 3, N'7', N'1-КГ-480', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (445, 59, 3, N'7а', N'ЕС', 10, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (446, 59, 3, N'8', N'1-КГ-480', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (447, 67, 1, N'2/3', N'1-438-6', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (448, 67, 1, N'6', N'1-438-6', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (449, 69, 1, N'8', N'1-438-6', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (450, 69, 1, N'8а', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (451, 71, 3, N'10', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (452, 71, 3, N'10/1', N'1-480-19-А', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (453, 71, 3, N'10а', N'інд.', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (454, 71, 3, N'12', N'1-480-19 А', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (455, 71, 3, N'12/1', N'ІІІ-60', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (456, 71, 3, N'12/2', N'ІІІ-60', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (457, 71, 3, N'14', N'1-480-КД', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (458, 71, 3, N'16/1', N'1-480-КД', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (459, 71, 3, N'4', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (460, 71, 3, N'4/1', N'1-480-19А', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (461, 71, 3, N'4/2', N'1-480-15 В К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (462, 71, 3, N'6/1', N'ЛКД-Д2С', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (463, 71, 3, N'8/2', N'1-480-15 КМУ', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (464, 72, 3, N'3', N'1-60', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (465, 72, 3, N'7', N'1-480-КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (466, 56, 6, N'66', N'15-КВ-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (467, 56, 6, N'68', N'15-КВ-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (468, 56, 6, N'68а', N'індивід', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (469, 56, 6, N'70', N'15-КВ-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (470, 56, 6, N'89а', N'індивід', 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (492, 9, 7, N'57', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (493, 9, 7, N'59', N'1-48015К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (494, 9, 7, N'61', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (495, 9, 7, N'65', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (496, 9, 7, N'67', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (497, 56, 6, N'89б', N'індивід', 4, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (498, 70, 3, N'13а', N'13-01', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (499, 70, 3, N'13б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (500, 70, 3, N'14', N'Б/С', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (501, 56, 6, N'91', N'індивід', 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (502, 56, 6, N'93', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (503, 56, 6, N'95', N'індивід', 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (504, 56, 6, N'97/1', N'індивід', 3, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (505, 56, 6, N'99/2', N'індивід', 4, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (506, 79, 6, N'10', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (507, 79, 6, N'12/14', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (508, 79, 6, N'3', N'індивід', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (509, 79, 6, N'4', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (510, 79, 6, N'5', N'індивід', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (511, 70, 3, N'15', N'13-01', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (512, 9, 7, N'76', N'1-480-15К', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (513, 9, 7, N'78', N'1-480-15В', 6, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (514, 9, 7, N'80', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (515, 9, 7, N'82', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (516, 9, 7, N'84', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (517, 9, 7, N'86', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (518, 9, 7, N'88', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (519, 9, 7, N'90', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (520, 10, 7, N'10', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (521, 10, 7, N'12', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (522, 10, 7, N'14/3', N'ММ-640', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (523, 10, 7, N'14а', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (524, 10, 7, N'14б', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (525, 10, 7, N'16', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (526, 10, 7, N'18', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (527, 10, 7, N'4', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (528, 10, 7, N'6', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (529, 10, 7, N'8', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (530, 10, 7, N'8б', N'1-480-15К', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (531, 10, 7, N'8в', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (532, 70, 3, N'16', N'1-458-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (533, 79, 6, N'6', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (534, 79, 6, N'8', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (535, 80, 6, N'2', N'індивід', 4, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (536, 81, 6, N'1а', N'87', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (537, 82, 6, N'10/8', N'індивід', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (538, 82, 6, N'12/7', N'індивід', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (539, 82, 6, N'13/14', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (540, 82, 6, N'2', N'індивід', 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (541, 82, 6, N'5а', N'87', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (542, 82, 6, N'5б', N'87', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (543, 83, 6, N'3', N'індивід', 4, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (544, 83, 6, N'4', N'індивід', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (545, 83, 6, N'5/8', N'індивід', 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (546, 83, 6, N'6', N'індивід', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (547, 84, 6, N'10', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (548, 84, 6, N'12', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (549, 84, 6, N'14/11', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (550, 84, 6, N'16/16', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (551, 84, 6, N'22', N'87', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (552, 84, 6, N'24', N'87', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (553, 84, 6, N'26', N'індивід', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (554, 84, 6, N'26а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (555, 84, 6, N'8/12', N'індивід', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (556, 85, 6, N'1', N'індивід', 4, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (557, 85, 6, N'1а', N'індивід', 14, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (558, 85, 6, N'4/16', N'індивід', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (559, 110, 6, N'17', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (560, 43, 1, N'10', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (561, 43, 1, N'10а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (562, 43, 1, N'12а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (563, 43, 1, N'14', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (564, 43, 1, N'14а', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (565, 43, 1, N'16', N'1-480-15в', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (566, 43, 1, N'16б', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (567, 43, 1, N'18', N'1-438-12м', 5, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (568, 43, 1, N'18а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (569, 43, 1, N'18б', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (570, 43, 1, N'22', N'46-1438-12м', 5, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (580, 12, 8, N'10', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (581, 12, 8, N'12', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (582, 12, 8, N'12б', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (583, 12, 8, N'14', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (584, 12, 8, N'16', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (585, 12, 8, N'18/21', N'1-464', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (586, 12, 8, N'4', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (587, 12, 8, N'6', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (588, 12, 8, N'8', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (589, 12, 8, N'8а', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (590, 16, 8, N'15', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (591, 16, 8, N'15а', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (592, 16, 8, N'15б', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (593, 16, 8, N'17', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (594, 16, 8, N'17а', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (595, 16, 8, N'17б', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (596, 16, 8, N'19', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (597, 16, 8, N'19а', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (598, 16, 8, N'2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (599, 16, 8, N'22', N'1-480-15в', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (600, 16, 8, N'24', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (601, 16, 8, N'26', N'1-480-15к', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (602, 16, 8, N'26а', N'1-480-15', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (603, 16, 8, N'28', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (604, 16, 7, N'2а', N'1-464-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (605, 16, 7, N'2б', N'1-467-А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (606, 16, 8, N'30', N'1-464-а', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (607, 16, 8, N'32', N'1-464-а', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (608, 16, 8, N'32а', N'1-464-а', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (609, 16, 7, N'4', N'96', 9, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (610, 16, 7, N'4а', N'1-467', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (611, 16, 7, N'4б', N'індивід', 10, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (612, 16, 8, N'6', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (613, 16, 7, N'6а', N'ММ-640', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (614, 16, 7, N'6б', N'ММ-640', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (615, 17, 7, N'22/10', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (616, 17, 7, N'24', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (617, 17, 8, N'24а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (618, 17, 8, N'24а-1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (619, 17, 8, N'24б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (620, 17, 8, N'24в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (621, 17, 7, N'26', N'індивід', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (622, 17, 8, N'26а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (623, 17, 7, N'28', N'індивід', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (624, 17, 7, N'28а', N'1-464-а-52', 9, 10, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (625, 17, 7, N'30', N'індивід', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (626, 17, 8, N'32', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (627, 18, 8, N'11', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (628, 18, 8, N'11а', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (629, 18, 8, N'13', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (630, 18, 8, N'15', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (631, 18, 8, N'21', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (632, 18, 8, N'23', N'1-480-15', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (633, 18, 8, N'25', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (634, 18, 8, N'27', N'87', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (635, 18, 8, N'3', N'1-464', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (636, 18, 8, N'3а', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (637, 18, 8, N'5', N'1-464', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (638, 18, 8, N'5а', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (639, 18, 8, N'7б', N'ГБ', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (640, 18, 8, N'7в', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (641, 18, 8, N'9', N'індив.', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (642, 18, 8, N'9б', N'індив.', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (643, 18, 8, N'9в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (644, 19, 8, N'10', N'індив.', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (645, 19, 8, N'3', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (646, 19, 8, N'3а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (647, 19, 8, N'4', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (648, 19, 8, N'6', N'1-480-15', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (649, 19, 8, N'8', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (650, 20, 8, N'13', N'87', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (651, 20, 8, N'15', N'87', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (652, 21, 8, N'13', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (653, 22, 8, N'41', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (654, 32, 8, N'1/29', N'індив.', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (655, 32, 8, N'10', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (656, 32, 8, N'12', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (657, 32, 8, N'14', N'індив.', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (658, 32, 8, N'16', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (659, 32, 8, N'16/2', N'гб', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (660, 32, 8, N'16/2-1', N'ГБ', 2, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (661, 32, 8, N'16/2-а', N'ГБ', 2, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (662, 32, 8, N'18', N'1-480-15вк', 5, 10, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (663, 32, 8, N'18а', N'1-480-15вк', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (664, 32, 8, N'18б', N'1-480-15в', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (665, 32, 8, N'18в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (666, 32, 8, N'20', N'1-480-15к', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (667, 32, 8, N'20а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (668, 32, 8, N'22', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (669, 32, 8, N'5', N'ГБ', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (670, 32, 8, N'8', N'1-480-15к', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (671, 32, 8, N'8а', N'1-480-15к', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (672, 34, 8, N'1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (673, 34, 8, N'10', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (674, 34, 8, N'10а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (675, 34, 8, N'3', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (676, 34, 8, N'5', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (677, 34, 8, N'7', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (678, 34, 8, N'8а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (679, 34, 8, N'9', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (680, 43, 1, N'22а', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (681, 43, 1, N'22б', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (682, 43, 1, N'24', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (683, 43, 1, N'24а', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (684, 43, 1, N'26', N'1-480-15к', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (685, 43, 1, N'26а', N'1-480-15к', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (686, 43, 1, N'26б', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (687, 43, 1, N'26в', N'1-480-15к', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (688, 43, 1, N'28', N'1-480-15к', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (689, 43, 1, N'8/20', N'1-464-а20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (690, 23, 9, N'1', N'індивідуальн.', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (691, 23, 9, N'10', N'експеримент.', 25, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (692, 23, 9, N'10а', N'експеримент.', 25, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (693, 23, 9, N'11', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (694, 44, 1, N'10/2', N'індивід.', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (695, 44, 1, N'12/1', N'індивід.', 7, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (696, 44, 1, N'13', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (697, 44, 1, N'13а', N'1-480-15в', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (698, 44, 1, N'13б', N'1-480-15в', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (699, 44, 1, N'14', N'індивід.', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (700, 44, 1, N'14а', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (701, 44, 1, N'15', N'1-480-15к', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (702, 44, 1, N'17', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (703, 44, 1, N'17б', N'адмін.будівля', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (704, 44, 1, N'18', N'1-424-11-Д', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (705, 23, 9, N'12', N'експеримент.', 25, 25, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (715, 11, 8, N'22', N'87', 9, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (716, 11, 8, N'22а', N'1-464-А51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (717, 11, 8, N'22б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (718, 11, 8, N'24', N'87-020', 9, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (719, 11, 8, N'24а', N'151-96К', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (720, 11, 8, N'24б', N'151-96К', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (721, 11, 8, N'24в', N'1-464-А52', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (722, 11, 8, N'26', N'87-021', 9, 10, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (723, 11, 8, N'26а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (724, 11, 8, N'26б', N'1-464-А51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (725, 11, 8, N'26в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (726, 11, 8, N'28а', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (727, 11, 8, N'30', N'87-020', 9, 11, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (728, 11, 8, N'30а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (729, 12, 8, N'11б', N'ГБ', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (730, 12, 8, N'11в', N'ГБ', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (731, 12, 8, N'13а', N'ГБ', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (732, 44, 1, N'18а', N'індивід.', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (733, 12, 8, N'13б', N'ГБ', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (734, 12, 8, N'15', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (735, 12, 8, N'15а', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (736, 12, 8, N'17', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (737, 12, 8, N'19', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (738, 12, 8, N'21', N'ММ-640', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (739, 12, 8, N'23', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (740, 12, 8, N'3', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (741, 12, 8, N'3а', N'1-464-А51', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (742, 12, 8, N'3б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (743, 12, 8, N'3в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (744, 12, 8, N'5а', N'КТ-12', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (745, 12, 8, N'5б', N'КТ-12', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (746, 12, 8, N'7а', N'КТ-12', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (747, 12, 8, N'7б', N'КТ-12', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (748, 12, 8, N'9', N'КТ-16-4в', 16, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (749, 44, 1, N'19/30', N'індивід.', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (750, 44, 1, N'2/35', N'індивід.', 5, 12, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (751, 44, 1, N'20', N'індивід.', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (752, 44, 1, N'20а', N'індивід.', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (753, 44, 1, N'4', N'індивід.', 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (754, 44, 1, N'4а', N'індивід.', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (755, 44, 1, N'5/2', N'1-438-5', 5, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (756, 44, 1, N'6', N'індивід.', 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (757, 44, 1, N'8', N'індивід.', 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (758, 44, 1, N'8а', N'індивід.', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (759, 44, 1, N'8б', N'індивід.', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (760, 44, 1, N'9', N'1-438-614', 5, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (761, 45, 1, N'12', N'1-438-9', 5, 11, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (762, 45, 1, N'12а', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (763, 45, 1, N'12б', N'1-480-15', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (764, 45, 1, N'14', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (765, 45, 1, N'16', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (766, 45, 1, N'18', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (767, 45, 1, N'4', N'1-436-6', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (768, 23, 9, N'4а', N'І-464А-51', 12, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (772, 24, 9, N'13а', N'І-464А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (774, 24, 9, N'15/1', N'БПО', 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (775, 24, 9, N'17', N'І-КГ-480-49', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (776, 24, 9, N'19', N'І-464А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (777, 24, 9, N'19а', N'І-114-87-2', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (778, 24, 9, N'21', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (779, 24, 9, N'21а', N'І-114-87-2', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (780, 45, 1, N'4а', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (781, 45, 1, N'6', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (782, 45, 1, N'6а', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (784, 24, 9, N'23', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (785, 24, 9, N'25', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (786, 45, 1, N'8', N'1-438-12', 5, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (787, 73, 16, N'10', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (788, 73, 16, N'11', N'1-КГ-480-46', 9, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (789, 73, 16, N'11а', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (790, 73, 16, N'12б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (791, 73, 16, N'12в', N'1-КГ-480-11', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (792, 73, 16, N'13', N'II-57', 17, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (793, 73, 16, N'14а', N'1-464-А-52', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (794, 73, 16, N'14в', N'1-464-А-52', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (795, 73, 16, N'15', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (797, 73, 16, N'20', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (798, 73, 16, N'20а', N'1-КГ-480-12у', 16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (799, 73, 16, N'20б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (800, 73, 16, N'21', N'1-КГ-480-46', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (801, 73, 16, N'22а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (802, 73, 16, N'24', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (803, 73, 16, N'24а,26б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (804, 73, 16, N'26', N'1-464-А-51', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (805, 73, 16, N'26а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (806, 73, 16, N'28', N'1-464-А-51', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (807, 73, 16, N'3', N'1-КГ-480-12у', 9, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (808, 73, 16, N'3а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (809, 73, 16, N'4', NULL, 19, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (810, 73, 16, N'5', N'1-КГ-480-46', 9, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (811, 73, 16, N'5/1', N'1-318-35/36', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (812, 73, 16, N'5а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (813, 24, 9, N'25/1', N'БПО', 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (814, 24, 9, N'27', N'І-КГ-480-49', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (815, 24, 9, N'29', N'І-464А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (816, 24, 9, N'29а', N'І-114-87-2', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (817, 24, 9, N'31', N'І-464А-51', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (819, 24, 9, N'33', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (820, 24, 9, N'35', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (821, 24, 9, N'37', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (823, 24, 9, N'9', N'І-464А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (824, 26, 9, N'10', N'І-464А-52', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (825, 45, 1, N'8а', N'1-480-15', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (826, 46, 1, N'11', N'1-438-6', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (827, 46, 1, N'13', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (828, 46, 1, N'15', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (829, 46, 1, N'17', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (830, 46, 1, N'19', N'1-438-6', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (831, 46, 1, N'21', N'1-438-6', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (832, 46, 1, N'23', N'1-438-6', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (833, 46, 1, N'23а', N'1-438-5-2', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (834, 46, 1, N'3а', N'індивід.', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (835, 49, 1, N'33/10', N'індивід.', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (836, 49, 1, N'37/9', N'індивід.', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (837, 52, 1, N'26/8', N'індивід.', 2, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (838, 52, 1, N'28', N'індивід.', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (839, 26, 9, N'12', N'96', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (840, 75, 16, N'9', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (841, 75, 16, N'9а', N'1-КГ-480-26', 9, 12, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (842, 76, 16, N'10', N'1-КГ-480-11у', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (843, 76, 16, N'12', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (844, 76, 16, N'16', N'БПС-6', 16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (845, 76, 16, N'16а', N'1-464-А-51', 16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (846, 76, 16, N'16б', N'1-318-35/36', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (847, 76, 16, N'2', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (848, 76, 16, N'20', N'1-КГ-480-12у', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (849, 76, 16, N'22', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (850, 76, 16, N'22б', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (851, 76, 16, N'24', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (852, 76, 16, N'24б', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (853, 76, 16, N'26', N'1-464-А-51', 9, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (854, 76, 16, N'28', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (855, 76, 16, N'30', N'БПС-6', 16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (856, 76, 16, N'30а', N'БПС-6', 16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (857, 76, 16, N'32', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (858, 76, 16, N'34', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (859, 76, 16, N'34а', N'1-318-35/6', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (860, 76, 16, N'34б', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (861, 76, 16, N'36', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (862, 76, 16, N'36а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (863, 76, 16, N'36-б', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (864, 76, 16, N'36-в', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (865, 76, 16, N'36-г', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (866, 76, 16, N'38', N'1-454-А-52', 9, 12, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (867, 76, 16, N'38а', N'1-454-А-53', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (868, 76, 16, N'38б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (869, 76, 16, N'4', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (870, 76, 16, N'6', N'1-КГ-480-27', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (871, 76, 16, N'8', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (872, 86, 16, N'11', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (873, 86, 16, N'13', N'1-КГ-480-47', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (874, 86, 16, N'13/1', N'1-464-А-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (875, 86, 16, N'13/2', N'1-464-А-21', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (876, 86, 16, N'13а', N'1-КГ-480-47', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (877, 86, 16, N'15', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (878, 86, 16, N'15/1', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (879, 86, 16, N'15а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (880, 86, 16, N'17', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (881, 86, 16, N'17/2', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (882, 86, 16, N'19', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (883, 86, 16, N'19/1', N'1-464-А-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (884, 86, 16, N'19/2', N'1-464-А-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (885, 86, 16, N'19а', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (886, 86, 16, N'21', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (887, 86, 16, N'3а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (888, 86, 16, N'5', N'БПС-6/77-2', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (889, 86, 16, N'5/1', N'1-КГ-480-12у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (890, 86, 16, N'7', N'1-КГ-480-47', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (891, 86, 16, N'7а', N'1-КГ-480-47', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (892, 86, 16, N'9', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (893, 87, 16, N'1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (894, 87, 16, N'2', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (895, 87, 16, N'3', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (896, 87, 16, N'4', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (897, 87, 16, N'5/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (898, 87, 16, N'6а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (899, 87, 16, N'6в', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (900, 87, 16, N'6г', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (901, 87, 16, N'7', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (902, 87, 16, N'7а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (903, 87, 16, N'8', N'II-57', 17, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (904, 26, 9, N'14', N'А-464-А-54', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (905, 26, 9, N'16', N'І-464А-52', 10, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (907, 26, 9, N'2/6', N'І-464А-52А', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (908, 26, 9, N'4', N'І-464А-52', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (909, 26, 9, N'6', N'96', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (910, 27, 9, N'1', N'БПО', 2, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (911, 27, 9, N'3', N'І-46-4а-54', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (912, 35, 5, N'2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (913, 35, 5, N'4а', N'1КГ-480-11', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (914, 35, 5, N'4б', N'1КГ-480-47', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (915, 35, 5, N'6', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (916, 35, 5, N'6а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (917, 37, 5, N'8', N'1КГ-480-11', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (918, 37, 5, N'8а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (919, 88, 1, N'11', N'індивід.', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (920, 88, 1, N'13', N'індивід.', 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (921, 89, 1, N'14а', N'індивід.', 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (922, 23, 9, N'13', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (923, 23, 9, N'15', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (924, 23, 9, N'17', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (925, 23, 9, N'19', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (926, 23, 9, N'1а', N'індивідуальн.', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (927, 38, 5, N'5', N'1КГ-480-45', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (928, 38, 5, N'5а', N'індивідуальний', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (929, 38, 5, N'5б', N'індивідуальний', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (930, 38, 5, N'7', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (931, 38, 5, N'7а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (932, 38, 5, N'9', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (934, 23, 9, N'21', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (935, 23, 9, N'23', N'БПО', 2, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (937, 23, 9, N'3а', N'індивідуальн.', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (939, 23, 9, N'7', N'І-464А-52', 12, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (940, 23, 9, N'8', N'експеримент.', 20, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (941, 24, 9, N'3', N'І-464А-52', 12, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (942, 25, 9, N'12', N'БПС-6', 16, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (943, 25, 9, N'16', N'БПС-6', 16, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (945, 25, 9, N'4', N'БПС-6', 16, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (946, 25, 9, N'8', N'БПС-6', 16, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (948, 26, 9, N'13', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (949, 26, 9, N'15', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (950, 26, 9, N'17', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (951, 26, 9, N'5', N'І-480-15вк', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (952, 26, 9, N'7', N'І-480-15вк', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (954, 27, 9, N'13', N'Т-4/2', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (955, 27, 9, N'13а', N'БПО', 2, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (956, 27, 9, N'15', N'І-480-15вк', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (957, 39, 5, N'10а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (958, 27, 9, N'15а', N'індивідуальн.', 12, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (959, 27, 9, N'15б', N'індивідуальн.', 12, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (961, 27, 9, N'19', N'БПО', 2, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (963, 27, 9, N'21', N'Т-4/2', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (964, 27, 9, N'23/16', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (965, 27, 9, N'25', N'Т-4/2', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (966, 27, 9, N'27/16', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (967, 27, 9, N'29', N'Т-4/2', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (968, 27, 9, N'31', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (969, 27, 9, N'31а', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (970, 27, 9, N'35', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (972, 27, 9, N'37', N'Т-1/2', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (973, 27, 9, N'37б', N'Т-1/2', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (974, 27, 9, N'37в', N'Т-1/2', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (975, 28, 9, N'10', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (976, 28, 9, N'14', N'І-480-15вк', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (977, 28, 9, N'3', N'ПУ-4Г', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (978, 28, 9, N'5', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (979, 39, 5, N'12а', N'1КГ-480-45', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (980, 39, 5, N'12б', N'1КГ-480-45', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (981, 40, 17, N'1/5', N'індивід.', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (982, 40, 17, N'10', N'II-57', 17, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (983, 40, 17, N'13', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (984, 28, 9, N'5а', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (985, 1, 5, N'1/2', N'96', 9, 18, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (986, 1, 5, N'1а', N'1КГ-480-ПУ', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (987, 1, 5, N'1в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (988, 1, 5, N'20', N'індивідуальна', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (989, 1, 5, N'20а', N'індивідуальний', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (990, 1, 5, N'22а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (991, 1, 5, N'22б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (992, 1, 5, N'22в', N'індивідуальний', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (993, 1, 5, N'24', N'1-КГ-480-ПУ', 9, 10, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (994, 1, 5, N'24б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (995, 1, 5, N'24в', N'1-464-А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (996, 1, 5, N'24г', N'1-464-А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (997, 1, 5, N'3', N'96', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (998, 1, 5, N'3а', N'індивідуальна', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (999, 1, 5, N'3б', N'індивідуальна', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1000, 1, 5, N'3в', N'індивідуальна', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1001, 1, 5, N'3г', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1002, 1, 5, N'7', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1003, 1, 5, N'7а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1004, 2, 5, N'1/18', N'індивідуальна', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1005, 2, 5, N'3', N'індивідуальна', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1006, 2, 5, N'3а', N'індивідуальна', 14, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1007, 2, 5, N'5', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1008, 3, 5, N'1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1009, 3, 5, N'11', N'БПС-6', 16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1010, 3, 5, N'15', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1011, 3, 5, N'15а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1012, 3, 5, N'17', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1013, 3, 5, N'19', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1014, 3, 5, N'3', N'1-464-А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1015, 3, 5, N'5б', N'96', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1016, 3, 5, N'7', N'1-464-А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1017, 3, 5, N'9', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1018, 3, 5, N'9б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1019, 3, 5, N'9г', NULL, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1020, 4, 5, N'2а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1021, 4, 5, N'4', N'96', 9, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1022, 4, 5, N'4а', N'96', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1023, 4, 5, N'4б', N'98', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1024, 4, 5, N'6/2', N'96', 9, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1025, 4, 5, N'6а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1026, 13, 5, N'2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1027, 14, 5, N'56', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1028, 14, 5, N'73', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1029, 115, 5, N'51', NULL, 3, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1030, 40, 17, N'13а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1031, 40, 17, N'14', N'II-57', 17, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1032, 40, 17, N'15', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1033, 40, 17, N'16', N'1кг48012у', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1034, 40, 17, N'19', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1035, 40, 17, N'19/1', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1036, 40, 17, N'2/7', N'індивід.', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1037, 40, 17, N'20', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1038, 40, 17, N'20/1', N'1кг480-1', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1039, 40, 17, N'3', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1040, 40, 17, N'4', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1041, 40, 17, N'6', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1042, 40, 17, N'7', N'індивід.', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1043, 41, 17, N'11', N'індивід.', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1044, 41, 17, N'11/1', N'1кг480-1', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1045, 5, 10, N'1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1046, 41, 17, N'13', N'індивід.', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1047, 5, 10, N'11', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1048, 5, 10, N'11а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1049, 5, 10, N'13', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1050, 5, 10, N'13а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1051, 5, 10, N'13б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1052, 5, 10, N'13в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1053, 5, 10, N'17', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1054, 5, 10, N'17а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1055, 5, 10, N'17б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1056, 5, 10, N'19', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1057, 5, 10, N'21', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1058, 41, 17, N'15', N'індивід.', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1059, 41, 17, N'17', N'індивід.', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1060, 41, 17, N'19/1', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1061, 41, 17, N'21', N'1кг480-1', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1062, 41, 17, N'21/1', N'1кг480-1', NULL, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1063, 41, 17, N'23', N'1кг480-1', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1064, 41, 17, N'25', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1065, 41, 17, N'29', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1066, 5, 10, N'21а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1067, 5, 10, N'23', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1068, 5, 10, N'25', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1069, 5, 10, N'27', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1070, 5, 10, N'3', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1071, 5, 10, N'3а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1072, 28, 9, N'7', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1073, 29, 9, N'1/10', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1074, 29, 9, N'3', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1075, 29, 9, N'4', N'індивідуальн.', 12, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1076, 29, 9, N'5/15', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1078, 29, 9, N'6', N'індивідуальн.', 12, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1079, 30, 9, N'14', N'І-480-15вк', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1080, 30, 9, N'4', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1081, 30, 9, N'6', N'І-464-А20', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1082, 30, 9, N'6а', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1083, 30, 9, N'7', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1084, 41, 17, N'29/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1085, 41, 17, N'29/2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1086, 41, 17, N'3', N'індивід.', 8, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1087, 41, 17, N'3/1', N'індивід.', 8, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1088, 41, 17, N'31', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1089, 41, 17, N'33', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1090, 41, 17, N'37', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1091, 41, 17, N'39', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1092, 41, 17, N'41', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1093, 30, 9, N'9/6', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1094, 41, 17, N'41/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1095, 41, 17, N'43', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1096, 41, 17, N'43/1', N'госп.блок', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1097, 41, 17, N'45', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1098, 41, 17, N'45/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1099, 41, 17, N'47', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1100, 41, 17, N'47/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1101, 41, 17, N'5', N'індивід.', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1102, 41, 17, N'5/1', N'індивід.', 8, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1103, 41, 17, N'5/1а', N'госп.блок', 2, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1104, 41, 17, N'7', N'індивід.', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1105, 41, 17, N'7/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1106, 41, 17, N'7/2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1107, 41, 17, N'7/3', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1108, 41, 17, N'7с/б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1109, 41, 17, N'9', N'індивід.', 16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1110, 41, 17, N'9/1', N'1кг480-1', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1111, 41, 17, N'9/2', N'1кг480-1', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1112, 41, 17, N'9в', N'госп.блок', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1113, 42, 17, N'19', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1114, 42, 17, N'9/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1115, 77, 17, N'1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1116, 77, 17, N'10', N'індивід.', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1117, 77, 17, N'10/1', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1118, 77, 17, N'12', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1119, 42, 3, N'10/1', N'1-438-М5', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1120, 77, 17, N'12/1', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1121, 77, 17, N'14/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1122, 77, 17, N'16', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1123, 77, 17, N'16,18,2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1124, 77, 17, N'18', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1125, 77, 17, N'18/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1126, 77, 17, N'2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1127, 77, 17, N'20', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1128, 77, 17, N'24/51', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1129, 77, 17, N'3', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1130, 77, 17, N'4', N'індивід.', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1131, 77, 17, N'4/1', N'індивід.', 8, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1132, 77, 17, N'6', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1133, 77, 17, N'8', N'індивід.', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1134, 77, 17, N'8/1', N'індивід.', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1135, 78, 17, N'1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1136, 78, 17, N'10', N'індивід.', 8, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1137, 78, 17, N'11/11', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1138, 78, 17, N'12', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1139, 78, 17, N'2', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1140, 78, 17, N'2/8', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1141, 78, 17, N'3', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1142, 78, 17, N'4', N'індивід.', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1143, 78, 17, N'5', N'1кг48012у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1144, 78, 17, N'6', N'індивід.', 8, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1145, 42, 3, N'12', N'1-438-5', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1146, 78, 17, N'9', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1147, 115, 17, N'38/4', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1148, 115, 17, N'38/6', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1150, 73, 16, N'6', N'461', 18, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1151, 73, 16, N'6а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1152, 73, 16, N'7', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1153, 5, 10, N'29', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1154, 5, 10, N'31', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1156, 5, 10, N'33а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1157, 5, 10, N'35', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1158, 5, 10, N'37', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1159, 5, 10, N'39', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1160, 5, 10, N'41', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1161, 5, 10, N'43', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1162, 5, 10, N'45', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1163, 5, 10, N'47', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1164, 5, 10, N'51', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1165, 5, 10, N'52', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1167, 5, 10, N'57', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1168, 5, 10, N'59', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1169, 5, 10, N'61', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1170, 5, 10, N'63', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1171, 5, 10, N'65', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1172, 5, 10, N'67', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1173, 73, 16, N'8', N'461', 18, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1174, 5, 10, N'69', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1175, 5, 10, N'71', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1176, 5, 10, N'73', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1177, 6, 10, N'26', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1178, 6, 10, N'52а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1210, 10, 7, N'11', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1211, 10, 7, N'11а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1212, 10, 7, N'11б', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1213, 10, 7, N'11в', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1214, 10, 7, N'13', N'індивід', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1215, 10, 7, N'13б', N'індивід', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1216, 10, 7, N'15', N'індивід', 5, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1217, 10, 7, N'15б', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1218, 10, 7, N'17', N'1-480-15К', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1219, 10, 7, N'17а', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1220, 10, 7, N'17а/1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1221, 10, 7, N'19', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1222, 10, 7, N'21', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1223, 10, 7, N'3', N'1-438', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1224, 10, 7, N'5', N'1-480-14КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1225, 10, 7, N'5а', N'1-480-15В', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1226, 10, 7, N'7', N'1-480-14КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1227, 10, 7, N'7а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1228, 10, 7, N'9', N'1-480-14КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1229, 10, 7, N'9а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1230, 10, 7, N'9б', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1231, 16, 7, N'11', N'1-480-15В', 5, 10, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1232, 16, 7, N'11а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1233, 16, 7, N'11б', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1235, 16, 7, N'5', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1236, 16, 7, N'5а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1237, 16, 7, N'5б', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1238, 16, 7, N'9', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1239, 17, 7, N'10', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1240, 17, 7, N'14', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1241, 17, 7, N'14а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1242, 17, 7, N'14б', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1243, 17, 7, N'16', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1244, 17, 7, N'16а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1245, 17, 7, N'18', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1246, 17, 7, N'18а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1247, 17, 7, N'20', N'1-438-5', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1248, 17, 7, N'4', N'1-438-4', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1249, 17, 7, N'6', N'1-480-15К', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1250, 17, 7, N'6а', N'1-454-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1251, 17, 7, N'8', N'1-438-4', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1252, 17, 7, N'8б', N'1-31835/6', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1253, 73, 16, N'9', N'1-КГ-480-26', 9, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1254, 73, 16, N'9а', N'1-318-35/66', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1255, 73, 16, N'9б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1256, 74, 16, N'10', N'1-464-А-51', 9, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1257, 74, 16, N'4', N'1-КГ-480-48', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1258, 74, 16, N'4а', N'1-КГ-480-46', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1259, 74, 16, N'6', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1260, 74, 16, N'6б', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1261, 74, 16, N'8а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1262, 75, 16, N'11', N'1-464-А-51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1263, 75, 16, N'11а', N'1-КГ-480-11у', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1264, 75, 16, N'13', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1265, 75, 16, N'3', N'461', 18, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1266, 75, 16, N'5а', N'1-454-А-54', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1267, 75, 16, N'5б', N'1-КГ-480-12у', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1268, 75, 16, N'7', N' ', NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1269, 45, 2, N'27', NULL, 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1270, 45, 2, N'27а', NULL, 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1271, 45, 2, N'28/15', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1272, 45, 2, N'29', NULL, 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1273, 75, 16, N'7а', N'1-КГ-480-11', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1274, 45, 2, N'31/13', NULL, 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1275, 45, 2, N'32/2', NULL, 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1276, 45, 2, N'33', NULL, 4, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1280, 56, 6, N'36', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1285, 91, 1, N'11', N'індивід.', 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1287, 5, 10, N'35а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1288, 5, 10, N'51', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1289, 5, 10, N'45', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1290, 58, 3, N'46', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1301, 73, 16, N'15', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1302, 73, 16, N'18', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1303, 67, 1, N'16', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1304, 44, 1, N'7', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1305, 100, 4, N'3', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1306, 50, 2, N'13', NULL, 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1308, 6, 10, N'2а', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1311, 45, 3, N'1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1312, 45, 3, N'1', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1313, 45, 1, N'1', N'1-438-6', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1333, 73, 16, N' 19', N'1-КГ-480-25', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1334, 119, 7, N'2/1', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1335, 120, 7, N'3', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1341, 136, 2, N'41', NULL, 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1346, 119, 8, N'38/1', N'1-464', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1347, 119, 8, N'40', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1348, 119, 8, N'40а', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1349, 119, 8, N'40б', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1350, 119, 8, N'42', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1351, 119, 8, N'42а', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1352, 119, 8, N'42б', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1353, 119, 8, N'44', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1354, 119, 8, N'46/2', N'1-464', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1355, 119, 8, N'48', N'87-020', 9, 7, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1356, 119, 8, N'48а', N'1-464-А51', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1359, 119, 8, N'48б', N'КТ-12', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1360, 119, 8, N'50', N'КТ-12', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1361, 119, 8, N'50б', N'КТ-12', 12, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1362, 119, 8, N'54', N'174-184-1', 14, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1363, 119, 8, N'56', N'124-87-10', 14, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1364, 5, 10, N'1', N'Т-1', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1366, 5, 10, N'11-а', N'96К', 9, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1367, 5, 10, N'13в', N'ММ-940-1', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1368, 5, 10, N'2', N'96.134', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1369, 5, 10, N'21а', N'96-К', 9, 9, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1370, 5, 10, N'2б', N'ММ-640', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1371, 5, 10, N'2а', N'134', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1372, 5, 10, N'39', N'156', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1373, 5, 10, N'3а', N'1-464А-54', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1374, 5, 10, N'4', N'96.134', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1375, 5, 10, N'41', N'156', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1376, 5, 10, N'43', N'156', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1377, 5, 10, N'4а', N'134', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1378, 5, 10, N'55', N'87', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1379, 5, 10, N'69', N'134', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1381, 5, 10, N'16', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1382, 5, 10, N'11', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1383, 5, 10, N'19', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1384, 5, 10, N'21', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1385, 5, 10, N'22', N'БПС-06', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1386, 5, 10, N'29', N'Т-4', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1387, 5, 10, N'33', N'Т-4', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1388, 5, 10, N'5', N'Т-1', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1389, 5, 10, N'57', N'КТ-16', 16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1390, 5, 10, N'61', N'КТ-16', 16, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1391, 5, 10, N'9', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1392, 5, 10, N'14', N'індивідуальний', 10, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1393, 11, 10, N'2', N'БПС-6', 16, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1394, 119, 10, N'5', N'1-215', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1395, 119, 10, N'5а', N'1-215', 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1396, 119, 10, N'7', N'1-215', 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1397, 119, 10, N'9', N'1-438', 3, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1398, 119, 10, N'9а', N'1-215', 3, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1399, 6, 10, N'52а', N'індивідуальний', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1400, 119, 10, N'11', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1401, 119, 10, N'11б', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1402, 119, 10, N'11а', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1403, 119, 10, N'11в', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1404, 119, 10, N'15', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1405, 119, 10, N'15б', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1406, 119, 10, N'15а', N'1-480', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1407, 119, 10, N'15в', N'Гуртожиток', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1408, 119, 10, N'23а', N'1-464-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1409, 119, 10, N'25б', N'1-480-15В', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1410, 119, 10, N'25а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1411, 119, 10, N'25в', N'1-480-15В', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1412, 119, 10, N'3', N'1-438', 5, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1413, 119, 10, N'9б', N'1-480', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1414, 119, 10, N'9в', N'1-480', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1415, 33, 10, N'28', N'1-480-ВК', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1416, 33, 10, N'30', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1417, 33, 10, N'30а', N'1-480-30', 5, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1418, 33, 10, N'34', N'1-480-ВК', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1419, 33, 10, N'36', N'1-480-ВК', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1420, 5, 10, N'10', N'96.134', 9, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1422, 16, 7, N'3', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1425, 119, 7, N'4', N'1-480-15К', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1426, 119, 7, N'2/1', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1427, 119, 7, N'6', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1428, 119, 7, N'8', N'1-480-15В', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1429, 119, 7, N'10', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1430, 119, 7, N'12/92', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1431, 119, 7, N'14', N'1-480-15К', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1432, 119, 7, N'16', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1433, 119, 7, N'16-а', N'1ГК-480-5', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1434, 119, 7, N'16-б', N'1 ГК-480-5', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1435, 119, 7, N'16-в', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1436, 119, 7, N'16-г', N'1-480-15К', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1437, 119, 7, N'18', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1438, 119, 7, N'18-а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1439, 119, 7, N'18-б', N'1-480-15К', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1440, 119, 7, N'20', N'1-480-15К', 5, 8, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1441, 26, 9, N'11', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1442, 120, 7, N'11', N'ММ-640', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1443, 120, 7, N'11-а', N'ММ-640', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1444, 119, 7, N'22', N'1-480-14КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1445, 119, 7, N'24', N'1-480-14КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1446, 119, 7, N'24-а', N'1-480-14КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1447, 119, 7, N'24-б', N'1-480-14КД', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1448, 119, 7, N'26', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1449, 119, 7, N'30', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1450, 119, 7, N'30-а', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1451, 119, 7, N'30-б', N'1-480-15В', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1452, 119, 7, N'32', N'1-480-15В', 5, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1453, 119, 7, N'34/2', N'1-464-а-20', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1454, 119, 10, N'13', N'1-464', 9, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1455, 119, 10, N'23', N'1ГК480-1', 9, 3, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1456, 119, 10, N'25', N'1-480-ВК9', 9, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1457, 5, 10, N'2-2а', N'134', 9, 2, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1458, 5, 10, N'4-4а', N'134', 9, 5, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1459, 23, 9, N'4а', N'І-464А-51', 12, 4, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1460, 29, 9, N'5/16', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1461, 30, 9, N'9/7', N'І-480-15К', 5, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Address] ([AddressId], [StreetId], [SubdivisionId], [House], [Serial], [СountFloor], [СountEntrance],
                        [Latitude], [Longitude])
VALUES (1462, 41, 17, N'9в', NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Address] OFF
SET IDENTITY_INSERT [dbo].[Consumer] ON

INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (1, N'Комунальна власність')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (2, N'КП власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (3, N'КП ЖЕД 401 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (4, N'КП ЖЕД 402 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (5, N'КП ЖЕД 403 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (6, N'КП ЖЕД 404 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (7, N'КП ЖЕД 405 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (8, N'КП ЖЕД 406 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (9, N'КП ЖЕД 407 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (10, N'КП ЖЕД 408 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (11, N'КП ЖЕД 409 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (12, N'КП ЖЕД 410 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (13, N'КП ЖЕД 411 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (14, N'КП ЖЕД 412 власні потреби')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (15, N'ФОП "Музиченко"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (16, N'ФОП "Сапун"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (17, N'КП по УЖГ')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (18, N'ФОП "Сівченко"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (19, N'Центр по роботі з молоддю за місцем проживання')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (20, N'Головне управління  статистики')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (21, N'ТОВ "П.К.П"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (22, N'Дніпровська РДА')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (23, N'БФ "Дніпровський"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (24, N'ФОП "Московка')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (25, N'ФОП "Рекун"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (26, N'ГО "Фонд взаємної підтримки  "Відновлення"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (27, N'РГ парафії святих жінок-мироносниць')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (28, N'ФОП "Марійка"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (29, N'Управління Державного департаменту України з питань покарань в м. Києві')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (30, N'ПП "Експеримент" ')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (31, N'Управління праці та соціального захисту населення')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (32, N'ПП "Нега-Люкс"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (33, N'ГО "Пік"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (34, N'ФОП "Скоробогач"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (35, N'Яковенко Е.М.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (36, N'ФОП "Кучвальський"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (37, N'ТДВ "Укрліфтсервіс"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (38, N'КП по УЗН')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (39, N'ГУ Національної поліції в м. Києві')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (40, N'ФО Лещінер')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (41, N'ФО Назаренко Т.О.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (42, N'ГС "асоціація ОСН"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (43, N'Криницький Є.В.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (44, N'БО "Відродження Києва"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (45, N'ФОП "Махницький"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (46, N'БО "Благодійний фонд Дніпровська сила"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (47, N'ПП "Колібрі"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (48, N'ДРО м. Київ ЕТАЛОН')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (49, N'ФОП "Добрянська"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (50, N'ГО "Київська міська організація роботодавців ринків, торгівлі та сфери послуг"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (51, N'Управління культури туризму та охорони культурної спадщини')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (52, N'ПП "Зоря-94"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (53, N'БФ Дніпрвська сила"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (54, N'ГО "спілка розвитку сучасного мистецтва"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (55, N'ГО КМТІОРА "Росава"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (56, N'ГО "Центр суспільного розвитку"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (57, N'ФОП Бурдик О.В.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (58, N'ФОП Вестов В.В.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (59, N'ФОП Поправка А.Ю.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (60, N'ФОП Браташевський В.В.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (61, N'ТОВ "Кий-Авіа-Експрес"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (62, N'ФОП Кузоров О.В.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (63, N'Дніпровська організація "Товариство Червоного Хреста України"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (64, N'Релігійна громада "Свідків Єгови"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (65, N'КП "Час"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (66, N'Комунальний концерн "ЦКС"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (67, N'Парафія преподобних Антонія і Феодосія Печерських')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (68, N'Спілка ветеранів Афганістану')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (69, N'ГОСП 2000 клуб С. Бобровника')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (70, N'ФО Міронова О.Е.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (71, N'ПрАТ "ОТІС"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (72, N'Центр надання послуг Дніпровської РДА')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (73, N'Дніпровська района організація ветеранів України')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (74, N'"ОСН Ленінградська площа"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (75, N'ФОП "Павлієнко Катерина Валеріївна"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (76, N'СУ "630"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (77, N'ТОВ "Метакон"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (78, N'ГО "Поліція"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (79, N'Аманда')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (80, N'Управління справами Верховної Ради')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (81, N'ФОП Мартиненко С.В.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (82, N'ГО "Рада ветеранів АТО Дніпровського району м. Києва"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (83, N'ФОП Горонков Д.В.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (84, N'ГО "Платформа ініціатив країни')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (85, N'Центр суспільного розвитку "Інтеракція"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (86, N'ГО "Наше право"')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (87, N'Нотаріальна контора')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (88, N'Відділ благоустрою Дніпровської РДА')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (89, N'Вільне приміщення')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (90, N'ФОП Міронова О.Е.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (91, N'ФОП Плугарьов С.І.')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (92, N'Вул. Краківська, 32-Б')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (93, N'Вул. Мініна, 2')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (94, N'Вул. Мініна, 2')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (95, N'Бульвар Верховної Ради, 31')
INSERT [dbo].[Consumer] ([ConsumerId], [ConsumerName])
VALUES (96, N'Бульвар Верховної Ради, 31а')
SET IDENTITY_INSERT [dbo].[Consumer] OFF
SET IDENTITY_INSERT [dbo].[ConsumerContract] ON

INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (17, 1004, CAST(100.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (19, 478, CAST(0.00 AS Numeric(7, 2)), 1000, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (116, 1006, CAST(0.00 AS Numeric(7, 2)), 888, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (159, 1002, CAST(0.00 AS Numeric(7, 2)), 270, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (236, 1014, CAST(0.00 AS Numeric(7, 2)), 198, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (237, 671, CAST(100.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (285, 1015, CAST(0.00 AS Numeric(7, 2)), 28, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (303, 1016, CAST(0.00 AS Numeric(7, 2)), 283, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (304, 1017, CAST(0.00 AS Numeric(7, 2)), 993, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (305, 1018, CAST(0.00 AS Numeric(7, 2)), 92, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (306, 1019, CAST(0.00 AS Numeric(7, 2)), 266, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (307, 1020, CAST(0.00 AS Numeric(7, 2)), 108, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (308, 1021, CAST(0.00 AS Numeric(7, 2)), 440, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (309, 1022, CAST(12.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (310, 942, CAST(74.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (311, 1023, CAST(16.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (312, 596, CAST(84.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (313, 322, CAST(78.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (314, 1024, CAST(0.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (315, 1025, CAST(14.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (322, 1026, CAST(0.00 AS Numeric(7, 2)), 143, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (323, 1027, CAST(0.00 AS Numeric(7, 2)), 16, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (324, 1028, CAST(0.00 AS Numeric(7, 2)), 1039, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (325, 1029, CAST(0.00 AS Numeric(7, 2)), 12, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (331, 646, CAST(0.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (335, 1030, CAST(0.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (336, 1031, CAST(0.00 AS Numeric(7, 2)), 24, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (337, 1056, CAST(0.00 AS Numeric(7, 2)), 722, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (338, 1005, CAST(0.00 AS Numeric(7, 2)), 2518, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (339, 1057, CAST(100.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (340, 1058, CAST(0.00 AS Numeric(7, 2)), 2792, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (341, 542, CAST(100.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (342, 1003, CAST(1.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (343, 515, CAST(99.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (344, 1063, CAST(1.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (349, 187, CAST(99.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (350, 1064, CAST(5.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (353, 520, CAST(95.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (354, 1065, CAST(2.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (355, 1066, CAST(7.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (356, 1067, CAST(2.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (357, 977, CAST(89.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (358, 1068, CAST(0.00 AS Numeric(7, 2)), 1690, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (359, 1069, CAST(0.00 AS Numeric(7, 2)), 916, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (360, 1070, CAST(0.00 AS Numeric(7, 2)), 3140, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (361, 1071, CAST(0.00 AS Numeric(7, 2)), 1138, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (362, 1072, CAST(100.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (367, 1073, CAST(0.00 AS Numeric(7, 2)), 77, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (368, 581, CAST(0.00 AS Numeric(7, 2)), 948, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (369, 1074, CAST(0.00 AS Numeric(7, 2)), 206, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (370, 1075, CAST(0.00 AS Numeric(7, 2)), 184, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (371, 1076, CAST(0.00 AS Numeric(7, 2)), 50, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (372, 1077, CAST(21.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (373, 230, CAST(79.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (374, 1078, CAST(23.24 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (375, 1078, CAST(13.99 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (376, 991, CAST(71.80 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (377, 991, CAST(76.52 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (378, 1079, CAST(2.25 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (379, 1079, CAST(5.12 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (380, 1080, CAST(1.74 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (381, 1080, CAST(4.37 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (382, 1081, CAST(0.97 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (383, 1082, CAST(25.80 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (384, 460, CAST(74.20 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (392, 1084, CAST(100.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (393, 1085, CAST(0.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (394, 1086, CAST(0.00 AS Numeric(7, 2)), 1380, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (395, 1087, CAST(0.00 AS Numeric(7, 2)), 200, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (418, 1088, CAST(0.00 AS Numeric(7, 2)), 200, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (419, 1090, CAST(0.00 AS Numeric(7, 2)), 100, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (420, 1091, CAST(0.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (421, 1092, CAST(0.00 AS Numeric(7, 2)), 763, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (422, 1095, CAST(0.00 AS Numeric(7, 2)), 180, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (423, 1094, CAST(0.00 AS Numeric(7, 2)), 4112, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (424, 1096, CAST(0.00 AS Numeric(7, 2)), 66, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (425, 1097, CAST(0.00 AS Numeric(7, 2)), 293, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (426, 1098, CAST(0.00 AS Numeric(7, 2)), 145, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (427, 1099, CAST(0.00 AS Numeric(7, 2)), 1771, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (428, 1100, CAST(0.00 AS Numeric(7, 2)), 112, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (429, 1101, CAST(0.00 AS Numeric(7, 2)), 20, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (430, 1102, CAST(0.00 AS Numeric(7, 2)), 124, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (431, 1103, CAST(0.00 AS Numeric(7, 2)), 120, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (432, 1104, CAST(0.00 AS Numeric(7, 2)), 267, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (433, 1093, CAST(0.00 AS Numeric(7, 2)), 188, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (434, 1105, CAST(0.00 AS Numeric(7, 2)), 58, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (435, 1106, CAST(0.00 AS Numeric(7, 2)), 7, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (436, 1107, CAST(0.00 AS Numeric(7, 2)), 5330, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (437, 1108, CAST(0.00 AS Numeric(7, 2)), 995, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (438, 1109, CAST(0.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (439, 1110, CAST(0.00 AS Numeric(7, 2)), 19, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (440, 1111, CAST(0.00 AS Numeric(7, 2)), 30, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (441, 1112, CAST(0.00 AS Numeric(7, 2)), 135, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (442, 1113, CAST(0.00 AS Numeric(7, 2)), 114, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (443, 1114, CAST(0.00 AS Numeric(7, 2)), 220, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (444, 1115, CAST(0.00 AS Numeric(7, 2)), 31, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (445, 1116, CAST(0.00 AS Numeric(7, 2)), 66, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (446, 1117, CAST(0.00 AS Numeric(7, 2)), 58, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (447, 595, CAST(0.00 AS Numeric(7, 2)), 1, NULL, NULL)
GO
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (448, 1118, CAST(0.00 AS Numeric(7, 2)), 1, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (449, 1119, CAST(0.00 AS Numeric(7, 2)), 2, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (499, 1120, CAST(7.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (557, 1121, CAST(2.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (569, 1122, CAST(2.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (605, 1126, CAST(50.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (606, 1127, CAST(50.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (607, 369, CAST(15.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (608, 1180, CAST(15.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (611, 1181, CAST(10.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (612, 1182, CAST(15.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (613, 1183, CAST(15.00 AS Numeric(7, 2)), 0, NULL, NULL)
INSERT [dbo].[ConsumerContract] ([ConsumerContractId], [ConsumerRentId], [UsedPercent], [UsedKvat], [DateStart],
                                 [DateEnd])
VALUES (614, 1184, CAST(15.00 AS Numeric(7, 2)), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ConsumerContract] OFF
SET IDENTITY_INSERT [dbo].[ConsumerRent] ON

INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (357, 1, 1)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (719, 1, 2)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (104, 1, 3)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (470, 1, 4)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (583, 1, 5)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (207, 1, 6)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (336, 1, 7)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (946, 1, 8)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (72, 1, 9)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (439, 1, 10)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (809, 1, 11)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (179, 1, 12)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (565, 1, 13)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (931, 1, 14)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (73, 1, 15)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (681, 1, 16)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (769, 1, 17)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (400, 1, 18)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (879, 1, 20)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (283, 1, 21)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (645, 1, 22)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (5, 1, 23)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (361, 1, 24)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (535, 1, 25)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (174, 1, 26)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (282, 1, 27)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (896, 1, 28)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (41, 1, 29)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (399, 1, 30)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (774, 1, 31)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (165, 1, 32)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (680, 1, 33)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (808, 1, 34)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (183, 1, 35)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (540, 1, 36)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (934, 1, 37)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1182, 1, 38)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1183, 1, 40)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (574, 1, 42)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (217, 1, 43)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (339, 1, 44)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (714, 1, 45)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (11, 1, 46)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (369, 1, 47)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (729, 1, 48)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1184, 1, 49)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (360, 1, 50)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (955, 1, 51)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (113, 1, 52)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (213, 1, 55)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (586, 1, 56)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (918, 1, 57)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (787, 1, 60)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (443, 1, 61)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (566, 1, 62)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (203, 1, 63)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (318, 1, 64)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (516, 1, 65)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (151, 1, 66)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (274, 1, 67)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (886, 1, 68)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (19, 1, 69)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (376, 1, 70)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (730, 1, 71)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (125, 1, 72)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (59, 1, 75)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (652, 1, 76)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (154, 1, 78)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (521, 1, 79)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (885, 1, 80)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (311, 1, 81)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (672, 1, 82)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (794, 1, 83)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (424, 1, 84)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (561, 1, 85)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (193, 1, 86)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (320, 1, 87)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (690, 1, 88)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (90, 1, 89)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (825, 1, 91)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (24, 1, 92)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (382, 1, 93)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (121, 1, 95)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (486, 1, 96)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (839, 1, 97)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (598, 1, 99)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (961, 1, 100)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (695, 1, 102)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (822, 1, 103)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (469, 1, 104)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (549, 1, 105)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (189, 1, 106)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (299, 1, 107)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (665, 1, 108)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (77, 1, 109)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (435, 1, 110)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (814, 1, 111)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (201, 1, 112)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (26, 1, 115)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (745, 1, 117)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (128, 1, 118)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (851, 1, 120)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (644, 1, 122)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (783, 1, 123)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (420, 1, 124)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (510, 1, 125)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (287, 1, 127)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (641, 1, 128)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (186, 1, 129)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (309, 1, 130)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (905, 1, 131)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (67, 1, 132)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (440, 1, 133)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (803, 1, 134)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (197, 1, 135)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (567, 1, 136)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (936, 1, 137)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (30, 1, 138)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (619, 1, 139)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (749, 1, 140)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (372, 1, 141)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (493, 1, 142)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (846, 1, 143)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (247, 1, 144)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (716, 1, 145)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (108, 1, 146)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (473, 1, 147)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (599, 1, 148)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (239, 1, 149)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (353, 1, 150)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (958, 1, 151)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (109, 1, 152)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (427, 1, 153)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (190, 1, 155)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (306, 1, 156)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (923, 1, 157)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (76, 1, 158)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (686, 1, 159)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (624, 1, 162)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (752, 1, 163)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (387, 1, 164)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (489, 1, 165)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (857, 1, 166)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (248, 1, 167)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (49, 1, 169)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (411, 1, 170)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (531, 1, 171)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (148, 1, 172)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (296, 1, 173)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (898, 1, 174)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (48, 1, 175)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (796, 1, 177)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (180, 1, 178)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (553, 1, 179)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (914, 1, 180)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (74, 1, 181)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (810, 1, 183)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (265, 1, 184)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (627, 1, 185)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (500, 1, 188)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (122, 1, 189)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (612, 1, 191)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (16, 1, 192)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (340, 1, 193)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (957, 1, 194)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (93, 1, 195)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (451, 1, 196)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (844, 1, 197)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (238, 1, 198)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (592, 1, 199)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (956, 1, 200)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (62, 1, 201)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (657, 1, 202)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (799, 1, 203)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (431, 1, 204)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (555, 1, 205)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (924, 1, 206)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (327, 1, 207)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (693, 1, 208)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (29, 1, 209)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (397, 1, 210)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (496, 1, 211)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (139, 1, 212)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (245, 1, 213)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (847, 1, 214)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (12, 1, 215)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (379, 1, 216)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (776, 1, 217)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (156, 1, 218)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (514, 1, 219)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (870, 1, 220)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (55, 1, 221)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (654, 1, 222)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (777, 1, 223)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (414, 1, 224)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (668, 1, 225)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (788, 1, 226)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (428, 1, 227)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (551, 1, 228)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (162, 1, 229)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (275, 1, 230)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (633, 1, 231)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (43, 1, 232)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (392, 1, 233)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (509, 1, 234)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (144, 1, 235)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (257, 1, 236)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (850, 1, 237)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (6, 1, 238)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (371, 1, 239)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (744, 1, 240)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (220, 1, 241)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1180, 1, 242)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (942, 1, 243)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (94, 1, 244)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1181, 1, 245)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (476, 1, 247)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (596, 1, 248)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (909, 1, 249)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (671, 1, 251)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (105, 1, 252)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (464, 1, 253)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (584, 1, 254)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (208, 1, 255)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (326, 1, 256)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (755, 1, 257)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (134, 1, 258)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (261, 1, 259)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (866, 1, 260)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1, 1, 261)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (607, 1, 262)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (737, 1, 263)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (135, 1, 264)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (495, 1, 282)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (869, 1, 283)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (34, 1, 284)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (604, 1, 285)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (732, 1, 286)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (388, 1, 287)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (497, 1, 288)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (827, 1, 289)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (466, 1, 290)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (575, 1, 291)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (214, 1, 292)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (349, 1, 293)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (712, 1, 294)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (112, 1, 295)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (477, 1, 296)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (237, 1, 298)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (348, 1, 299)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (953, 1, 300)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (98, 1, 301)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (704, 1, 302)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (818, 1, 303)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (216, 1, 304)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (503, 1, 305)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (258, 1, 307)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (630, 1, 308)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (726, 1, 309)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (391, 1, 310)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (501, 1, 311)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (860, 1, 312)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (273, 1, 313)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (639, 1, 314)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (46, 1, 315)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (407, 1, 316)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (528, 1, 317)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (170, 1, 318)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (902, 1, 320)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (175, 1, 321)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (895, 1, 323)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (635, 1, 325)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (770, 1, 326)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (161, 1, 327)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (519, 1, 328)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (865, 1, 329)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (255, 1, 330)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (625, 1, 331)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (762, 1, 332)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1126, 1, 333)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1127, 1, 334)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (133, 1, 335)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (699, 1, 337)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (88, 1, 338)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (465, 1, 339)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (824, 1, 340)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (228, 1, 341)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (347, 1, 342)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (960, 1, 343)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (60, 1, 344)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (722, 1, 345)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (840, 1, 346)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (225, 1, 347)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (947, 1, 349)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (324, 1, 350)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (706, 1, 351)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (823, 1, 352)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (252, 1, 353)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (620, 1, 354)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (7, 1, 355)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (362, 1, 356)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (506, 1, 357)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (143, 1, 358)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (251, 1, 359)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (42, 1, 361)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (401, 1, 362)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (771, 1, 363)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (163, 1, 364)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (525, 1, 365)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (182, 1, 367)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (903, 1, 369)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (297, 1, 370)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (280, 1, 376)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (616, 1, 377)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (365, 1, 379)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (140, 1, 381)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (262, 1, 382)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (861, 1, 383)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (32, 1, 384)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (579, 1, 385)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (939, 1, 386)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (101, 1, 387)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (708, 1, 388)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (835, 1, 389)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (184, 1, 390)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (543, 1, 391)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (907, 1, 392)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (356, 1, 393)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (724, 1, 394)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (475, 1, 396)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (705, 1, 400)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (734, 1, 403)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (310, 1, 413)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (674, 1, 414)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (792, 1, 415)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (533, 1, 420)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (881, 1, 423)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (50, 1, 424)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (380, 1, 425)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (740, 1, 426)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (487, 1, 428)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (23, 1, 430)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (628, 1, 431)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (756, 1, 432)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (453, 1, 433)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (577, 1, 434)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (948, 1, 435)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (314, 1, 436)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (676, 1, 437)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (421, 1, 439)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (232, 1, 441)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (341, 1, 442)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (965, 1, 443)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (117, 1, 444)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (452, 1, 445)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (820, 1, 446)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (234, 1, 447)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (594, 1, 448)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (747, 1, 449)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (130, 1, 450)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (482, 1, 451)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (853, 1, 452)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (256, 1, 453)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (615, 1, 454)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (760, 1, 455)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (396, 1, 456)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (511, 1, 457)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (81, 1, 458)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (556, 1, 460)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (185, 1, 461)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (308, 1, 462)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (658, 1, 463)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (66, 1, 464)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (412, 1, 465)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (172, 1, 467)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (298, 1, 468)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (873, 1, 469)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (57, 1, 470)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (967, 1, 492)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (118, 1, 493)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (720, 1, 494)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (838, 1, 495)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (471, 1, 496)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (490, 1, 497)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (858, 1, 498)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (610, 1, 500)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (550, 1, 511)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (915, 1, 512)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (168, 1, 513)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (529, 1, 514)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (899, 1, 515)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (266, 1, 516)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (655, 1, 517)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (781, 1, 518)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (410, 1, 519)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (530, 1, 520)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (123, 1, 521)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (242, 1, 522)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (613, 1, 523)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (18, 1, 524)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (384, 1, 525)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (753, 1, 526)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (152, 1, 527)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (267, 1, 528)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (933, 1, 529)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (85, 1, 530)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (679, 1, 531)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (807, 1, 532)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (917, 1, 535)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (312, 1, 536)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (459, 1, 551)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (819, 1, 552)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (200, 1, 553)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (84, 1, 556)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (670, 1, 557)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (554, 1, 560)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (893, 1, 561)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (277, 1, 562)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (634, 1, 563)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (44, 1, 564)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (416, 1, 565)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (537, 1, 566)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (178, 1, 567)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (294, 1, 568)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (855, 1, 569)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (8, 1, 570)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (687, 1, 580)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (791, 1, 581)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (425, 1, 582)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (545, 1, 583)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (194, 1, 584)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (337, 1, 585)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (700, 1, 586)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (89, 1, 587)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (458, 1, 588)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (841, 1, 589)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (227, 1, 590)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (358, 1, 591)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (962, 1, 592)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (2, 1, 593)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (608, 1, 594)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (739, 1, 595)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (226, 1, 596)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (587, 1, 597)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (323, 1, 599)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (696, 1, 600)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (811, 1, 601)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (436, 1, 602)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (568, 1, 603)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (206, 1, 604)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (301, 1, 605)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (667, 1, 606)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (78, 1, 607)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (437, 1, 608)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (888, 1, 609)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (47, 1, 610)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (402, 1, 611)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (171, 1, 613)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (526, 1, 614)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (889, 1, 621)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (631, 1, 623)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (767, 1, 624)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (442, 1, 625)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (198, 1, 627)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (321, 1, 628)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (659, 1, 629)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (82, 1, 630)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (441, 1, 631)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (804, 1, 632)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (215, 1, 633)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (338, 1, 634)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (937, 1, 635)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (99, 1, 636)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (717, 1, 637)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (832, 1, 638)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (600, 1, 640)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (727, 1, 641)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (354, 1, 642)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (833, 1, 644)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (461, 1, 645)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (588, 1, 646)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (221, 1, 647)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (332, 1, 648)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (682, 1, 649)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (80, 1, 650)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (444, 1, 651)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (319, 1, 654)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (925, 1, 655)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (79, 1, 656)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (636, 1, 657)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (772, 1, 658)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (288, 1, 662)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (651, 1, 663)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (784, 1, 664)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (532, 1, 666)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (167, 1, 667)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (289, 1, 668)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (36, 1, 670)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (408, 1, 671)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (684, 1, 680)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (826, 1, 681)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (455, 1, 682)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (590, 1, 683)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (950, 1, 684)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (346, 1, 685)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (718, 1, 686)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (9, 1, 687)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (364, 1, 688)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (602, 1, 689)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (241, 1, 690)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (345, 1, 691)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (959, 1, 692)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (97, 1, 693)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (450, 1, 694)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (829, 1, 695)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (223, 1, 696)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (316, 1, 697)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (929, 1, 698)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (64, 1, 699)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (661, 1, 700)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (815, 1, 701)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (558, 1, 703)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (928, 1, 704)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (405, 1, 705)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (890, 1, 715)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (56, 1, 716)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (764, 1, 718)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (157, 1, 719)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (524, 1, 720)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (920, 1, 721)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (68, 1, 722)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (789, 1, 724)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (569, 1, 726)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (919, 1, 727)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (589, 1, 732)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (373, 1, 734)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (733, 1, 735)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (845, 1, 738)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (944, 1, 741)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (828, 1, 744)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (432, 1, 745)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (546, 1, 746)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (910, 1, 747)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (303, 1, 748)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (689, 1, 749)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (71, 1, 750)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (448, 1, 751)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (564, 1, 752)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (147, 1, 753)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (270, 1, 754)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (880, 1, 755)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (21, 1, 756)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (378, 1, 757)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (738, 1, 758)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (120, 1, 759)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (485, 1, 760)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (900, 1, 761)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (51, 1, 762)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (656, 1, 763)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (782, 1, 764)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (403, 1, 765)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (517, 1, 766)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (883, 1, 767)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (666, 1, 772)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (570, 1, 775)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (204, 1, 776)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (325, 1, 777)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (943, 1, 778)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (28, 1, 779)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (386, 1, 780)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (129, 1, 782)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (852, 1, 784)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (110, 1, 785)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (713, 1, 786)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (480, 1, 788)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (576, 1, 789)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (351, 1, 791)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (715, 1, 792)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (70, 1, 793)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (922, 1, 798)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (449, 1, 800)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (751, 1, 804)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (494, 1, 806)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (848, 1, 807)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (649, 1, 809)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (778, 1, 810)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (417, 1, 811)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (177, 1, 813)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (293, 1, 814)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (648, 1, 815)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (54, 1, 816)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (430, 1, 817)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (192, 1, 819)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (307, 1, 820)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (927, 1, 821)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (685, 1, 823)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (813, 1, 824)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (35, 1, 825)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (623, 1, 826)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (754, 1, 827)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (389, 1, 828)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (491, 1, 829)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (859, 1, 830)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (249, 1, 831)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (611, 1, 832)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (229, 1, 833)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (350, 1, 834)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (721, 1, 835)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (91, 1, 836)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (479, 1, 837)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (843, 1, 838)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (224, 1, 839)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (916, 1, 841)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (61, 1, 842)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (797, 1, 844)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (195, 1, 845)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (560, 1, 846)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (932, 1, 847)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (92, 1, 848)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (758, 1, 850)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (504, 1, 852)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (856, 1, 853)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (243, 1, 854)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (614, 1, 855)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (20, 1, 856)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (155, 1, 859)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (269, 1, 860)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (779, 1, 864)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (65, 1, 865)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (662, 1, 866)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (801, 1, 867)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (559, 1, 869)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (930, 1, 870)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (763, 1, 873)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (398, 1, 874)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (499, 1, 875)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (141, 1, 876)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (246, 1, 877)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (606, 1, 878)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (383, 1, 880)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (836, 1, 881)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (218, 1, 882)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (331, 1, 883)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (940, 1, 884)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (114, 1, 885)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (235, 1, 888)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (544, 1, 889)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (678, 1, 892)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (462, 1, 894)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (580, 1, 895)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (212, 1, 896)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (145, 1, 899)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (259, 1, 900)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (377, 1, 903)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (743, 1, 904)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (160, 1, 905)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (874, 1, 907)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (40, 1, 908)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (650, 1, 909)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (786, 1, 910)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (419, 1, 911)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (908, 1, 913)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (302, 1, 914)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (278, 1, 917)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (38, 1, 919)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (406, 1, 920)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (757, 1, 921)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (136, 1, 922)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (263, 1, 923)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (868, 1, 924)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (3, 1, 925)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (368, 1, 926)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (735, 1, 927)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (131, 1, 928)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (703, 1, 929)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (343, 1, 934)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (725, 1, 935)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (423, 1, 937)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (233, 1, 939)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (344, 1, 940)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (710, 1, 941)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (103, 1, 942)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (454, 1, 943)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (138, 1, 945)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (253, 1, 946)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (33, 1, 948)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (603, 1, 949)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (731, 1, 950)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (137, 1, 951)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (498, 1, 952)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (281, 1, 954)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (632, 1, 955)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (768, 1, 956)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (527, 1, 958)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (173, 1, 959)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (539, 1, 961)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (291, 1, 963)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (891, 1, 964)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (45, 1, 965)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (409, 1, 966)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (765, 1, 967)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (159, 1, 968)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (862, 1, 970)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (629, 1, 972)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (728, 1, 973)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (393, 1, 974)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (502, 1, 975)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (863, 1, 976)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (335, 1, 977)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (709, 1, 978)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (102, 1, 979)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (460, 1, 980)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (595, 1, 981)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (231, 1, 982)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (352, 1, 983)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (968, 1, 984)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (115, 1, 985)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (472, 1, 986)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (230, 1, 988)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (581, 1, 989)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (698, 1, 992)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (864, 1, 993)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (621, 1, 995)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (759, 1, 996)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (394, 1, 997)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (505, 1, 998)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (132, 1, 999)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (254, 1, 1000)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (518, 1, 1004)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (166, 1, 1005)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (286, 1, 1006)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (897, 1, 1007)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (295, 1, 1009)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (146, 1, 1014)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (522, 1, 1015)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (878, 1, 1016)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (507, 1, 1021)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (142, 1, 1022)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (250, 1, 1023)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (617, 1, 1024)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (468, 1, 1029)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (181, 1, 1031)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (964, 1, 1033)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (116, 1, 1034)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (711, 1, 1035)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (837, 1, 1036)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (456, 1, 1037)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (573, 1, 1038)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (951, 1, 1039)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (10, 1, 1042)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (366, 1, 1043)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (481, 1, 1044)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (260, 1, 1046)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (31, 1, 1048)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (653, 1, 1058)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (775, 1, 1059)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (513, 1, 1061)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (150, 1, 1062)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (272, 1, 1063)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (638, 1, 1064)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (15, 1, 1065)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (622, 1, 1072)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (821, 1, 1073)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (211, 1, 1074)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (585, 1, 1075)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (952, 1, 1076)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (673, 1, 1078)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (793, 1, 1079)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (426, 1, 1080)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (597, 1, 1081)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (966, 1, 1082)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (359, 1, 1083)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (457, 1, 1086)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (582, 1, 1087)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (736, 1, 1090)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (119, 1, 1091)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (244, 1, 1092)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (867, 1, 1093)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (626, 1, 1095)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (548, 1, 1101)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (913, 1, 1102)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (663, 1, 1104)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (264, 1, 1109)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (875, 1, 1110)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (52, 1, 1111)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (849, 1, 1116)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (25, 1, 1117)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (761, 1, 1119)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (395, 1, 1120)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (830, 1, 1130)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (236, 1, 1131)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (935, 1, 1133)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (111, 1, 1134)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (831, 1, 1136)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (126, 1, 1137)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (492, 1, 1138)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (618, 1, 1141)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (748, 1, 1142)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (390, 1, 1143)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (508, 1, 1144)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (202, 1, 1145)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (802, 1, 1150)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (798, 1, 1173)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (107, 1, 1177)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (605, 1, 1210)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (13, 1, 1211)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (381, 1, 1212)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (750, 1, 1213)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (158, 1, 1214)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (271, 1, 1215)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (872, 1, 1216)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (199, 1, 1217)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (571, 1, 1218)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (921, 1, 1219)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (669, 1, 1221)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (790, 1, 1222)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (429, 1, 1223)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (552, 1, 1224)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (954, 1, 1225)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (334, 1, 1226)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (697, 1, 1227)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (96, 1, 1228)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (474, 1, 1229)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (601, 1, 1230)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (240, 1, 1231)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (355, 1, 1232)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (609, 1, 1233)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (375, 1, 1235)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (742, 1, 1236)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (222, 1, 1237)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (333, 1, 1238)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (945, 1, 1239)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (95, 1, 1240)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (817, 1, 1242)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (205, 1, 1243)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (563, 1, 1244)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (912, 1, 1245)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (305, 1, 1246)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (675, 1, 1247)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (800, 1, 1248)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (279, 1, 1249)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (637, 1, 1250)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (37, 1, 1251)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (404, 1, 1252)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (534, 1, 1253)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (169, 1, 1254)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (901, 1, 1256)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (4, 1, 1257)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (370, 1, 1258)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (884, 1, 1262)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (39, 1, 1263)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (812, 1, 1265)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (438, 1, 1266)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (572, 1, 1267)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (300, 1, 1269)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (664, 1, 1270)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (75, 1, 1271)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (434, 1, 1272)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (591, 1, 1273)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (219, 1, 1274)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (322, 1, 1275)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (941, 1, 1276)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (894, 1, 1302)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (413, 1, 1306)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (892, 1, 1308)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (683, 1, 1313)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (702, 1, 1333)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (87, 1, 1334)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (463, 1, 1335)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (446, 1, 1341)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (149, 1, 1346)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (523, 1, 1347)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (882, 1, 1348)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (284, 1, 1349)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (646, 1, 1350)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (780, 1, 1351)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (363, 1, 1352)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (536, 1, 1353)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (176, 1, 1354)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (285, 1, 1355)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (647, 1, 1356)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (773, 1, 1359)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (164, 1, 1360)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (313, 1, 1361)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (926, 1, 1362)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (63, 1, 1363)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (660, 1, 1364)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (557, 1, 1367)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (329, 1, 1369)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (694, 1, 1370)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (467, 1, 1372)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (593, 1, 1373)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (14, 1, 1374)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (367, 1, 1375)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (483, 1, 1376)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (478, 1, 1378)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (834, 1, 1379)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (330, 1, 1381)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (938, 1, 1382)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (100, 1, 1383)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (707, 1, 1384)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (806, 1, 1385)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (187, 1, 1386)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (542, 1, 1387)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (906, 1, 1388)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (83, 1, 1389)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (691, 1, 1390)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (805, 1, 1391)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (445, 1, 1392)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (515, 1, 1393)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (871, 1, 1394)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (276, 1, 1395)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (640, 1, 1396)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (17, 1, 1397)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (374, 1, 1398)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (488, 1, 1399)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (124, 1, 1400)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (292, 1, 1401)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (904, 1, 1402)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (58, 1, 1403)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (415, 1, 1404)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (766, 1, 1405)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (153, 1, 1406)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (520, 1, 1407)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (887, 1, 1408)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (191, 1, 1409)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (547, 1, 1410)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (911, 1, 1411)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (304, 1, 1412)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (688, 1, 1413)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (816, 1, 1414)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (447, 1, 1415)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (562, 1, 1416)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (209, 1, 1417)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (328, 1, 1418)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (701, 1, 1419)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (22, 1, 1420)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (741, 1, 1422)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (963, 1, 1425)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (106, 1, 1426)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (723, 1, 1427)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (842, 1, 1428)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (210, 1, 1429)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (578, 1, 1430)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (949, 1, 1431)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (342, 1, 1432)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (677, 1, 1433)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (795, 1, 1434)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (422, 1, 1435)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (541, 1, 1436)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (196, 1, 1437)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (315, 1, 1438)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (692, 1, 1439)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (86, 1, 1440)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (268, 1, 1441)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (876, 1, 1442)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (27, 1, 1443)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (385, 1, 1444)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (746, 1, 1445)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (127, 1, 1446)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (484, 1, 1447)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (854, 1, 1448)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (53, 1, 1449)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (642, 1, 1450)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (785, 1, 1451)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (418, 1, 1452)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (512, 1, 1453)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (877, 1, 1454)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (290, 1, 1455)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (643, 1, 1456)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (69, 1, 1457)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (433, 1, 1458)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (538, 1, 1459)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (188, 1, 1460)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (317, 1, 1461)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (969, 2, 89)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (970, 2, 124)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (971, 2, 177)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (972, 2, 188)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (973, 2, 254)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (974, 2, 257)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (975, 2, 281)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (976, 2, 309)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (977, 2, 421)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (978, 2, 442)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (979, 2, 450)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (980, 2, 532)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (981, 2, 558)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (982, 2, 616)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (983, 2, 639)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (984, 2, 659)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (985, 2, 669)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (986, 2, 733)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (987, 2, 872)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (988, 2, 935)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (989, 2, 955)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (990, 2, 996)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (991, 2, 1019)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (992, 2, 1051)
GO
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (993, 2, 1067)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (994, 2, 1091)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (995, 2, 1096)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (996, 2, 1241)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (997, 2, 1260)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (998, 2, 1301)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (999, 2, 1436)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1005, 15, 1412)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1108, 16, 1036)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1107, 16, 1091)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1004, 16, 1378)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1115, 16, 1462)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1078, 17, 1019)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1028, 18, 659)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1023, 19, 248)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1025, 19, 319)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1066, 19, 421)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1093, 19, 450)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1102, 19, 512)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1105, 19, 755)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1120, 19, 813)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1074, 19, 914)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1082, 19, 980)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1118, 19, 981)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1077, 19, 988)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1116, 19, 1043)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1095, 19, 1226)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1024, 19, 1275)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1030, 19, 1350)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1057, 19, 1415)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1014, 20, 251)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1092, 21, 35)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1016, 22, 251)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1079, 22, 1019)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1002, 23, 1)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1018, 24, 170)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1019, 25, 170)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1020, 26, 257)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1112, 31, 1096)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1069, 32, 993)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1070, 34, 1007)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1029, 36, 747)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1071, 36, 993)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1009, 37, 722)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1076, 37, 997)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1073, 38, 1023)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1117, 38, 1042)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1090, 39, 659)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1084, 39, 733)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1072, 39, 993)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1081, 39, 1019)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1110, 39, 1096)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1119, 39, 1103)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1100, 39, 1228)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1114, 39, 1462)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1098, 44, 621)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1106, 44, 1059)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1099, 45, 604)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1065, 46, 421)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1087, 46, 733)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1103, 46, 1241)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1094, 47, 1431)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1096, 48, 1228)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1031, 49, 581)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1088, 50, 590)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1006, 51, 1)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1067, 51, 421)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1085, 51, 733)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1121, 51, 813)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1026, 52, 733)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1113, 54, 1462)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1111, 55, 1096)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1086, 66, 733)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1080, 66, 1019)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1104, 66, 1241)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1003, 69, 1393)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1101, 71, 609)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1091, 71, 659)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1063, 71, 1386)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1083, 72, 312)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1027, 80, 659)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1058, 81, 1387)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1122, 82, 813)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1064, 82, 1407)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1068, 83, 985)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1075, 84, 979)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1109, 85, 1103)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1021, 86, 4)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1017, 87, 12)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1022, 88, 319)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1015, 89, 251)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1056, 90, 1407)
INSERT [dbo].[ConsumerRent] ([ConsumerRentId], [ConsumerId], [AddressId])
VALUES (1097, 91, 1243)
SET IDENTITY_INSERT [dbo].[ConsumerRent] OFF
SET IDENTITY_INSERT [dbo].[Street] ON

INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (1, N'вул. А. Шептицького')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (2, N'вул. В. Нестайка')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (3, N'вул. Челябінська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (4, N'вул. Микільсько-Слобідська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (5, N'вул. Райдужна')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (6, N'вул. Старосільська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (9, N'вул. Алішера Навої')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (10, N'вул. Запорожця Петра ')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (11, N'вул. Ватутіна генерала')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (12, N'вул. Кібальчича Миколи')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (13, N'вул. Набережна')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (14, N'вул. Каховська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (15, N'вул. Вершигори Петра')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (16, N'вул. Курнатовського')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (17, N'вул. Стальського Сулеймана')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (18, N'вул. Микитенка Івана')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (19, N'вул. Вільде Едуарда')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (20, N'вул. Братиславська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (21, N'вул. Томашевського')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (22, N'вул. Б.Хмельницького')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (23, N'бульв. Дарницький')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (24, N'вул. Малишка Андрія')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (25, N'вул. Жмаченка Генерала')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (26, N'вул. Бойченка Олександра')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (27, N'вул. Миропільська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (28, N'вул. Міста Шалетт')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (29, N'вул. Космiчна')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (30, N'вул. Юностi')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (31, N'вул. Комсомольська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (32, N'вул. Карбишева Генерала')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (33, N'вул. Сєрова Валентина')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (34, N'вул. Мостищанська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (35, N'вул. Плеханова')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (36, N'вул. Туманяна')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (37, N'вул. Євгена Сверстюка')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (38, N'вул. Окіпної Раїси')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (39, N'вул. Флоренції')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (40, N'бульв. І. Шамо')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (41, N'вул. Ентузіастів')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (42, N'вул. Возз''єднання')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (43, N'вул. Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (44, N'просп. Гагаріна Юрія')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (45, N'вул. Будівельників')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (46, N'вул. Сергієнка Івана')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (47, N'вул. Бажова')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (48, N'вул. Дубового Івана')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (49, N'вул. Червоноткацька')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (50, N'вул. Пожарського')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (51, N'бульв. Праці')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (52, N'вул. Краківська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (53, N'вул. Попудренка')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (54, N'вул. Празька')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (55, N'вул. Азербайджанська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (56, N'вул. Алма-Атинська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (57, N'вул. Новаторiв')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (58, N'вул. Харкiвське шосе')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (59, N'вул. Гашека  Ярослава')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (60, N'вул. Калачівська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (61, N'вул. Хорольська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (62, N'вул. Астраханська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (63, N'пров. Лобачевського')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (64, N'вул. Сосницька')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (65, N'вул. Двинська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (66, N'вул. Гродненська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (67, N'просп. Миру')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (68, N'вул. Віфлєємська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (69, N'вул. Чудновського')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (70, N'вул. Тампере')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (71, N'вул. Каунаська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (72, N'вул. Березнева')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (73, N'вул. Тичини Павла')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (74, N'вул. Шумського Юрія')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (75, N'набережна. Дніпровська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (76, N'вул. Березняківська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (77, N'набережна. Русанівська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (78, N'бульв. Русанівський')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (79, N'вул. Волховська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (80, N'вул. Дундича Олеко')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (81, N'вул. Літинська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (82, N'вул. Бородіна')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (83, N'вул. Макаренка')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (84, N'вул. Марганецька')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (85, N'вул. Рогозiвська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (86, N'вул. Серафимовича')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (87, N'вул. Бучми Амвросія')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (88, N'вул. Лебедєва Миколи')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (89, N'вул. Мініна')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (90, N'вул. Кармелюка Устима')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (91, N'вул. Берегова 1-11')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (92, N'вул. Микешина')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (93, N'вул. Мiшина')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (94, N'вул. Профспiлкова')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (95, N'пров. Червоногвардiйський')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (96, N'пров. Люботинский')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (97, N'просп. Визволителiв')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (98, N'вул. Сосюри Володимира')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (99, N'вул. Черемшини  Марка')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (100, N'пров. Бишівський')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (101, N'вул. Електрикiв')
GO
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (102, N'вул. Усенка Павла')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (103, N'вул. Червоногвардiйська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (104, N'вул. Антонова')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (105, N'вул. Сиваська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (106, N'пров. Хорольський')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (107, N'вул. Щепкiна')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (108, N'просп. Лісовий')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (109, N'вул. Машинiстівська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (110, N'вул. Новоросiйська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (111, N'вул. Червонопільська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (112, N'пров. Будівельників')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (113, N'вул. Матеюка Миколи')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (114, N'вул. Панельна')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (115, N'вул. Чернігівська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (116, N'вул. Сеноманський')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (117, N'вул. Берегова ')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (119, N'бул. Перова')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (120, N'вул. Воскресенська')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (121, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (122, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (123, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (124, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (125, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (126, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (127, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (128, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (129, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (130, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (131, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (132, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (133, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (134, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (135, N'бульвар Верховної Ради')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (136, N'вул. Г. Тороповського')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (137, N'ТП (361)')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (138, N'ТП (2117)')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (139, N'ТП (1577)')
INSERT [dbo].[Street] ([StreetId], [StreetName])
VALUES (140, N'Test')
SET IDENTITY_INSERT [dbo].[Street] OFF
SET IDENTITY_INSERT [dbo].[Subdivision] ON

INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (1, N'ЖЕД 401')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (2, N'ЖЕД 402')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (3, N'ЖЕД 403')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (4, N'ЖЕД 404')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (5, N'ЖЕД 405')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (6, N'ЖЕД 406')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (7, N'ЖЕД 408')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (8, N'ЖЕД 409')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (9, N'ЖЕД 411')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (10, N'ЖЕД 412')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (16, N'ЖЕД 407')
INSERT [dbo].[Subdivision] ([SubdivisionId], [SubdivisionName])
VALUES (17, N'ЖЕД 410')
SET IDENTITY_INSERT [dbo].[Subdivision] OFF

CREATE NONCLUSTERED INDEX [IX_StreetId] ON [dbo].[Address]
    (
     [StreetId] ASC
        ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_SubdivisionId] ON [dbo].[Address]
    (
     [SubdivisionId] ASC
        ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConsumerRent]
    ADD CONSTRAINT [ucConsumerRent] UNIQUE NONCLUSTERED
        (
         [ConsumerId] ASC,
         [AddressId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_AddressId] ON [dbo].[ConsumerRent]
    (
     [AddressId] ASC
        ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_ConsumerId] ON [dbo].[ConsumerRent]
    (
     [ConsumerId] ASC
        ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConsumerContract]
    ADD DEFAULT ((0)) FOR [UsedPercent]
GO

ALTER TABLE [dbo].[ConsumerContract]
    ADD DEFAULT ((0)) FOR [UsedKvat]
GO

ALTER TABLE [dbo].[Address]
    WITH CHECK ADD CONSTRAINT [FK_dbo.Address_dbo.Street_StreetId] FOREIGN KEY ([StreetId])
        REFERENCES [dbo].[Street] ([StreetId])
        ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Address]
    CHECK CONSTRAINT [FK_dbo.Address_dbo.Street_StreetId]
GO

ALTER TABLE [dbo].[Address]
    WITH CHECK ADD CONSTRAINT [FK_dbo.Address_dbo.Subdivision_SubdivisionId] FOREIGN KEY ([SubdivisionId])
        REFERENCES [dbo].[Subdivision] ([SubdivisionId])
        ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Address]
    CHECK CONSTRAINT [FK_dbo.Address_dbo.Subdivision_SubdivisionId]
GO

ALTER TABLE [dbo].[ConsumerContract]
    WITH CHECK ADD FOREIGN KEY ([ConsumerRentId])
        REFERENCES [dbo].[ConsumerRent] ([ConsumerRentId])
GO

ALTER TABLE [dbo].[ConsumerRent]
    WITH CHECK ADD CONSTRAINT [FK_dbo.ConsumerRent_dbo.Address_AddressId] FOREIGN KEY ([AddressId])
        REFERENCES [dbo].[Address] ([AddressId])
        ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ConsumerRent]
    CHECK CONSTRAINT [FK_dbo.ConsumerRent_dbo.Address_AddressId]
GO

ALTER TABLE [dbo].[ConsumerRent]
    WITH CHECK ADD CONSTRAINT [FK_dbo.ConsumerRent_dbo.Consumer_ConsumerId] FOREIGN KEY ([ConsumerId])
        REFERENCES [dbo].[Consumer] ([ConsumerId])
        ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ConsumerRent]
    CHECK CONSTRAINT [FK_dbo.ConsumerRent_dbo.Consumer_ConsumerId]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

USE [master]
GO

ALTER DATABASE [ElectricPower] SET READ_WRITE
GO
