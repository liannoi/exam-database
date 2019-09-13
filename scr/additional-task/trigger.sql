USE ShopAdo;
GO

IF (OBJECT_ID('dbo.TRG_SalePos_Change', 'TR') IS NOT NULL)
    DROP TRIGGER dbo.TRG_SalePos_Change;
GO

CREATE TRIGGER dbo.TRG_SalePos_Change
    ON dbo.SalePos
    AFTER INSERT, UPDATE, DELETE
    AS
BEGIN
    IF (@@ROWCOUNT = 0)
        RETURN;

    SET NOCOUNT ON;

    DECLARE @S_Inserted MONEY =
        (
            SELECT CASE
                       WHEN SUM(unitprice * qty * (1 - discount)) IS NULL
                           THEN 0
                       ELSE SUM(unitprice * qty * (1 - discount))
                       END AS Summa
            FROM inserted
        );

    DECLARE @S_Deleted MONEY =
        (
            SELECT CASE
                       WHEN SUM(unitprice * qty * (1 - discount)) IS NULL
                           THEN 0
                       ELSE SUM(unitprice * qty * (1 - discount))
                       END AS Summa
            FROM deleted
        );

    DECLARE @currentId INT;
    DECLARE ValueCursor CURSOR
        FOR
        (
            SELECT SaleId
            FROM inserted
            UNION
            SELECT SaleId
            FROM deleted
        )
    OPEN ValueCursor
    FETCH NEXT FROM ValueCursor INTO @currentId;
    WHILE @@FETCH_STATUS = 0
        BEGIN
            UPDATE dbo.Sale
            SET Summa = Summa + @S_Inserted - @S_Deleted
            WHERE SaleId = @currentId;
            FETCH NEXT FROM ValueCursor INTO @currentId;
        END
    CLOSE ValueCursor;
    DEALLOCATE ValueCursor;

    SET NOCOUNT OFF;
END
GO

-- TEST INSERT

/*

SELECT *
FROM dbo.Sale;
GO

SELECT *
FROM dbo.SalePos;
GO

INSERT INTO dbo.SalePos (PosId, SaleId, ProductId, unitprice, qty, discount)
VALUES (104, 5, 11, 100, 10, 0),
       (105, 7, 11, 100, 10, 0);
GO

SELECT *
FROM dbo.Sale;
GO

SELECT *
FROM dbo.SalePos;
GO

*/

-- TEST UPDATE

/*

SELECT *
FROM dbo.Sale;
GO

SELECT *
FROM dbo.SalePos;
GO

UPDATE dbo.SalePos
SET qty = 25
WHERE PosId = 5;
GO

SELECT *
FROM dbo.Sale;
GO

SELECT *
FROM dbo.SalePos;
GO

*/

-- TEST DELETE

/*

SELECT *
FROM dbo.Sale;
GO

SELECT *
FROM dbo.SalePos;
GO

DELETE
FROM dbo.SalePos
WHERE PosId = 100;
GO

SELECT *
FROM dbo.Sale;
GO

SELECT *
FROM dbo.SalePos;
GO

*/
