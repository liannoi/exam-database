USE master;
GO

IF (DB_ID('Shop') IS NOT NULL)
    DROP DATABASE Shop;
GO

CREATE DATABASE Shop;
GO

USE Shop;
GO

IF (OBJECT_ID('dbo.Manufacturies', 'U') IS NOT NULL)
    DROP TABLE dbo.Manufacturies;
GO

CREATE TABLE dbo.Manufacturies
(
    ManufacturerId INT          NOT NULL IDENTITY,
    Name           NVARCHAR(64) NOT NULL,
    CONSTRAINT PK_Manufacturies PRIMARY KEY (ManufacturerId),
    CONSTRAINT CHK_Manufacturies CHECK (DATALENGTH(Name) > 2),
    CONSTRAINT UNQ_Manufacturies UNIQUE (Name)
);
GO

IF (OBJECT_ID('dbo.Products', 'U') IS NOT NULL)
    DROP TABLE dbo.Products;
GO

CREATE TABLE dbo.Products
(
    ProductId      INT          NOT NULL IDENTITY,
    ManufacturerId INT          NOT NULL,
    Name           NVARCHAR(32) NOT NULL,
    ProductNumber  VARCHAR(15)  NOT NULL,
    CONSTRAINT PK_Products PRIMARY KEY (ProductId),
    CONSTRAINT FK_Products FOREIGN KEY (ManufacturerId) REFERENCES dbo.Manufacturies (ManufacturerId),
    CONSTRAINT CHK_Products_Name CHECK (DATALENGTH(Name) > 2),
    CONSTRAINT CHK_Products_ProductNumber CHECK (DATALENGTH(ProductNumber) > 2),
    CONSTRAINT UNQ_Products_Name UNIQUE (Name),
	CONSTRAINT UNQ_Products_ProductNumber UNIQUE (ProductNumber)
);
GO

IF (OBJECT_ID('dbo.Fridges', 'U') IS NOT NULL)
    DROP TABLE dbo.Fridges;
GO

CREATE TABLE dbo.Fridges
(
    FridgeId         INT          NOT NULL IDENTITY,
    ProductId        INT          NOT NULL,
    /* Refrigerator compartment volume */
    RCV              INT          NOT NULL,
    NetVolumeFreezer INT          NOT NULL,
    Type             NVARCHAR(64) NOT NULL,
    Compressors      INT          NOT NULL
        CONSTRAINT DFT_Fridges_Compressors DEFAULT (0),
    Dimensions       VARCHAR(20),
    Weight           FLOAT
        CONSTRAINT DFT_Fridges_Weight DEFAULT (0),
    ProductPrice     MONEY
        CONSTRAINT DFT_Fridges_ProductPrice DEFAULT (0),
    CONSTRAINT PK_Fridges PRIMARY KEY (FridgeId),
    CONSTRAINT FK_Fridges_ProductId FOREIGN KEY (ProductId) REFERENCES dbo.Products (ProductId),
    CONSTRAINT CHK_Fridges_Weight CHECK (Weight BETWEEN 60 AND 280),
    CONSTRAINT CHK_Fridges_Type CHECK (DATALENGTH(Type) > 2),
    CONSTRAINT CHK_Fridges_Dimensions CHECK (DATALENGTH(Dimensions) > 2)
);
GO

IF (OBJECT_ID('dbo.Notebooks', 'U') IS NOT NULL)
    DROP TABLE dbo.Notebooks;
GO

CREATE TABLE dbo.Notebooks
(
    NotebookId       INT          NOT NULL IDENTITY,
    ProductId        INT          NOT NULL,
    ScreenDiagonal   FLOAT        NOT NULL,
    ScreenResolution VARCHAR(10)  NOT NULL,
    CPUModel         VARCHAR(64)  NOT NULL,
    CPUSpeed         NVARCHAR(32) NOT NULL,
    RAM              INT          NOT NULL,
    SSD              INT          NOT NULL,
    HDD              INT          NOT NULL,
    VideoCardModel   VARCHAR(64),
    VideoCardMemory  INT,
    OS               NVARCHAR(32) NOT NULL,
    Weight           FLOAT,
    ProductPrice     MONEY
        CONSTRAINT DFT_Notebooks_ProductPrice DEFAULT (0),
    CONSTRAINT PK_Notebooks PRIMARY KEY (NotebookId),
    CONSTRAINT FK_Notebooks_ProductId FOREIGN KEY (ProductId) REFERENCES dbo.Products (ProductId),
    CONSTRAINT CHK_Notebooks_ScreenResolution CHECK (DATALENGTH(ScreenResolution) > 2),
    CONSTRAINT CHK_Notebooks_CPUModel CHECK (DATALENGTH(CPUModel) > 2),
    CONSTRAINT CHK_Notebooks_CPUSpeed CHECK (DATALENGTH(CPUSpeed) > 2),
    CONSTRAINT CHK_Notebooks_VideoCardModel CHECK (DATALENGTH(VideoCardModel) > 2),
    CONSTRAINT CHK_Notebooks_OS CHECK (DATALENGTH(OS) > 2),
    CONSTRAINT CHK_Notebooks_Weight CHECK (Weight BETWEEN 1 AND 15)
);
GO

IF (OBJECT_ID('dbo.Smartphones', 'U') IS NOT NULL)
    DROP TABLE dbo.Smartphones;
GO

CREATE TABLE dbo.Smartphones
(
    SmartphoneId     INT          NOT NULL IDENTITY,
    ProductId        INT          NOT NULL,
    ScreenDiagonal   FLOAT        NOT NULL,
    ScreenMatrix     VARCHAR(8)   NOT NULL,
    ScreenResolution VARCHAR(10)  NOT NULL,
    CPUModel         VARCHAR(64)  NOT NULL,
    CPUSpeed         NVARCHAR(32) NOT NULL,
    Camera           INT          NOT NULL,
    RAM              INT          NOT NULL,
    Memory           INT          NOT NULL,
    /* Support for two sim cards */
    DualSim          BIT          NOT NULL
        CONSTRAINT DFT_Smartphones_DualSim DEFAULT (0),
    OS               NVARCHAR(32) NOT NULL,
    Battery          INT          NOT NULL,
    ProductPrice     MONEY
        CONSTRAINT DFT_Smartphones_ProductPrice DEFAULT (0),
    CONSTRAINT PK_Smartphones PRIMARY KEY (SmartphoneId),
    CONSTRAINT FK_Smartphones_ProductId FOREIGN KEY (ProductId) REFERENCES dbo.Products (ProductId),
    CONSTRAINT CHK_Smartphones_ScreenDiagonal CHECK (ScreenDiagonal BETWEEN 3.5 AND 8),
    CONSTRAINT CHK_Smartphones_ScreenMatrix CHECK (DATALENGTH(ScreenMatrix) > 2),
    CONSTRAINT CHK_Smartphones_ScreenResolution CHECK (DATALENGTH(ScreenResolution) > 2),
    CONSTRAINT CHK_Smartphones_CPUModel CHECK (DATALENGTH(CPUModel) > 2),
    CONSTRAINT CHK_Smartphones_CPUSpeed CHECK (DATALENGTH(CPUSpeed) > 2),
    CONSTRAINT CHK_Smartphones_OS CHECK (DATALENGTH(OS) > 2),
    CONSTRAINT CHK_Smartphones_Battery CHECK (Battery BETWEEN 1400 AND 4000)
);
GO

IF (OBJECT_ID('dbo.Photos', 'U') IS NOT NULL)
    DROP TABLE dbo.Photos;
GO

CREATE TABLE dbo.Photos
(
    PhotoId   INT           NOT NULL IDENTITY,
    ProductId INT           NOT NULL,
    Path      NVARCHAR(256) NOT NULL,
    CONSTRAINT PK_Photos PRIMARY KEY (PhotoId),
    CONSTRAINT FK_Photos_ProductId FOREIGN KEY (ProductId) REFERENCES dbo.Products (ProductId),
    CONSTRAINT CHK_Photos_Path CHECK (DATALENGTH(Path) > 2)
);
GO

IF (OBJECT_ID('dbo.Categories', 'U') IS NOT NULL)
DROP TABLE dbo.Categories;
GO

CREATE TABLE dbo.Categories
(
CategoryId INT NOT NULL IDENTITY,
Name NVARCHAR(64) NOT NULL,
CONSTRAINT PK_Categories PRIMARY KEY(CategoryId),
CONSTRAINT UNQ_Categories_Name UNIQUE(Name)
);
GO

IF (OBJECT_ID('dbo.ProductCategories','U') IS NOT NULL)
DROP TABLE dbo.ProductCateogories;
GO

CREATE TABLE dbo.ProductCategories
(
ProductId INT NOT NULL,
CategoryId INT NOT NULL,
CONSTRAINT PK_ProductCategories PRIMARY KEY(ProductId, CategoryId),
CONSTRAINT FK_ProductCategories_ProductId FOREIGN KEY(ProductId)
REFERENCES dbo.Products(ProductId),
CONSTRAINT FK_ProductCategories_CategoryId FOREIGN KEY(CategoryId)
REFERENCES dbo.Categories(CategoryId)
);
GO

SET NOCOUNT ON;

INSERT INTO dbo.Categories (Name)
VALUES (N'Smartphones'),
       (N'Notebooks'),
	   (N'Fridges');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Npath');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Youtags');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Jatri');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Chatterpoint');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Meetz');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Brainsphere');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Wikido');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Gabtype');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Devshare');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Eare');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Oyondu');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Thoughtbeat');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Avamm');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Dynabox');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Twimbo');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Myworks');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Oozz');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Leenti');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Demizz');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Youspan');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Yodo');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Riffwire');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Rhycero');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Skimia');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Tagpad');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Midel');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Twitterbridge');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Jabberstorm');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Innotype');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Fatz');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Edgeclub');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Feedmix');

INSERT INTO dbo.Manufacturies (Name)
VALUES ('Tanoodle');

INSERT INTO dbo.Products (ManufacturerId, Name, ProductNumber)
VALUES (3, 'Coville''s Poppy', '54868-5418');

INSERT INTO dbo.Products (ManufacturerId, Name, ProductNumber)
VALUES (3, 'Japanese Chaff Flower', '64159-8952');

INSERT INTO dbo.Products (ManufacturerId, Name, ProductNumber)
VALUES (3, 'Orchid Ipomopsis', '57664-170');

INSERT INTO dbo.Products (ManufacturerId, Name, ProductNumber)
VALUES (6, 'Pelos Del Diablo', '0591-2318');

INSERT INTO dbo.Products (ManufacturerId, Name, ProductNumber)
VALUES (7, 'Stansbury Cliffrose', '65044-1339');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 8
       , 'Hairy Fournwort'
       , '68151-2111');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 9
       , 'Lawndaisy'
       , '63874-607');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 10
       , 'Thelopsis Lichen'
       , '63629-3475');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 11
       , 'Beirut Clover'
       , '55312-047');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 12
       , 'Pondweed'
       , '0603-7642');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 13
       , 'Early Goldenrod'
       , '41520-468');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 14
       , 'Graves'' Plum'
       , '65162-704');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 15
       , 'Shreve Oak'
       , '68151-4474');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 16
       , 'Hippobroma'
       , '0615-5583');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 17
       , 'Rimmed Lichen'
       , '51672-4124');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 18
       , 'Coulter''s Spiderling'
       , '43742-0244');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 19
       , 'Desert Pepperweed'
       , '55154-3526');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 21
       , 'San Diego Thorn-mint'
       , '10056-701');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 21
       , 'Saltlover'
       , '55154-3380');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 22
       , 'Pride Of Madeira'
       , '42546-190');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 23
       , 'Red Fescue'
       , '63629-1299');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 24
       , 'Royal Fleabane'
       , '24236-448');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 25
       , 'Red River Scaleseed'
       , '49884-463');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 26
       , 'Marsh Fleabane'
       , '63824-261');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 27
       , 'Ostrich Fern'
       , '51009-107');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 28
       , 'Fewflower Pea'
       , '36987-2424');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 29
       , 'Sand-dune Rockcress'
       , '52533-001');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 30
       , 'Trans-pecos Wrightwort'
       , '54973-3431');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 31
       , 'Wedge Sandmat'
       , '49348-231');

INSERT INTO dbo.Products ( ManufacturerId
                         , Name
                         , ProductNumber)
VALUES ( 33
       , 'Masai Clover'
       , '0363-4246');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 1
       , 'http://dummyimage.com/219x220.png/ff4444/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 2
       , 'http://dummyimage.com/136x117.png/cc0000/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 3
       , 'http://dummyimage.com/147x127.jpg/dddddd/000000');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 4
       , 'http://dummyimage.com/133x247.bmp/5fa2dd/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 5
       , 'http://dummyimage.com/223x222.bmp/dddddd/000000');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 6
       , 'http://dummyimage.com/245x250.png/ff4444/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 7
       , 'http://dummyimage.com/174x163.png/dddddd/000000');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 8
       , 'http://dummyimage.com/124x100.jpg/ff4444/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 9
       , 'http://dummyimage.com/213x129.jpg/cc0000/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 10
       , 'http://dummyimage.com/138x235.png/dddddd/000000');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 11
       , 'http://dummyimage.com/152x230.png/dddddd/000000');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 12
       , 'http://dummyimage.com/164x223.bmp/ff4444/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 13
       , 'http://dummyimage.com/232x192.png/dddddd/000000');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 14
       , 'http://dummyimage.com/113x234.jpg/cc0000/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 15
       , 'http://dummyimage.com/237x125.jpg/ff4444/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 16
       , 'http://dummyimage.com/143x164.bmp/cc0000/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 17
       , 'http://dummyimage.com/106x138.png/5fa2dd/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 18
       , 'http://dummyimage.com/145x111.bmp/ff4444/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 19
       , 'http://dummyimage.com/178x127.bmp/cc0000/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 20
       , 'http://dummyimage.com/113x107.bmp/cc0000/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 21
       , 'http://dummyimage.com/199x104.jpg/ff4444/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 22
       , 'http://dummyimage.com/224x230.png/5fa2dd/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 23
       , 'http://dummyimage.com/205x211.png/dddddd/000000');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 24
       , 'http://dummyimage.com/220x250.bmp/dddddd/000000');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 25
       , 'http://dummyimage.com/104x100.png/dddddd/000000');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 26
       , 'http://dummyimage.com/218x104.bmp/cc0000/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 27
       , 'http://dummyimage.com/198x143.jpg/5fa2dd/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 28
       , 'http://dummyimage.com/122x130.bmp/ff4444/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 29
       , 'http://dummyimage.com/178x180.bmp/cc0000/ffffff');

INSERT INTO dbo.Photos ( ProductId
                       , Path)
VALUES ( 30
       , 'http://dummyimage.com/156x225.png/dddddd/000000');

INSERT INTO dbo.Smartphones ( ProductId
                            , Battery
                            , ScreenDiagonal
                            , ScreenMatrix
                            , ScreenResolution
                            , CPUModel
                            , CPUSpeed
                            , Camera
                            , RAM
                            , Memory
                            , OS
                            , ProductPrice)
VALUES ( 1
       , 3340
       , 6.3
       , 'IPS'
       , '2340x1080'
       , 'HiSilicon Kirin 710'
       , N'2.2 ГГц + 1.7 ГГц'
       , 16
       , 4
       , 64
       , N'Android 8.1 (Oreo)'
       , 3999);

INSERT INTO dbo.Notebooks ( ProductId
                          , ScreenDiagonal
                          , ScreenResolution
                          , CPUModel
                          , CPUSpeed
                          , RAM
                          , SSD
                          , HDD
                          , VideoCardModel
                          , VideoCardMemory
                          , OS
                          , Weight
                          , ProductPrice)
VALUES ( 2
       , 15.6
       , '1366x768'
       , 'AMD A6-9225'
       , N'2.6 - 3.0 ГГц'
       , 4
       , 500
       , 256
       , 'AMD Radeon R4 Graphics'
       , 4
       , 'DOS'
       , 2.2
       , 5999);

INSERT INTO dbo.Fridges ( ProductId
                        , RCV
                        , NetVolumeFreezer
                        , Type
                        , Compressors
                        , Dimensions
                        , Weight,
                          ProductPrice)
VALUES ( 3
       , 243
       , 99
       , N'Двухкамерный'
       , 1
       , '201.1 x 60 x 65.5 см'
       , 69,
         8999);

INSERT INTO dbo.ProductCategories (ProductId, CategoryId)
VALUES (1, 1),
       (2, 2),
	   (3, 3);

SET NOCOUNT OFF;
GO

/* Test queries */

-- Вывести детальную информацию, про все имееющиеся холодильники.

SELECT P.ProductId,
       P.Name,
       P.ProductNumber,
       F.ProductPrice,
       M.Name AS ManufacturerName,
       F.RCV  AS RefrigeratorCompartmentVolume,
       F.NetVolumeFreezer,
       F.Type,
       F.Compressors,
       F.Dimensions,
       F.Weight
FROM dbo.Products AS P
         INNER JOIN dbo.Manufacturies AS M ON M.ManufacturerId = P.ManufacturerId
         INNER JOIN dbo.Fridges AS F ON P.ProductId = F.ProductId;
GO

-- Подсчитать количество товаров, каждого производителя.

SELECT P.ManufacturerId,
       M.Name,
       COUNT(P.ProductId) AS CountProducts
FROM dbo.Products AS P
         INNER JOIN dbo.Manufacturies AS M ON P.ManufacturerId = M.ManufacturerId
GROUP BY P.ManufacturerId,
         M.Name
ORDER BY CountProducts DESC;
GO
