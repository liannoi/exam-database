USE ElectricPower;
GO

IF (OBJECT_ID('dbo.ViewAddress', 'V') IS NOT NULL)
	DROP VIEW dbo.ViewAddress;
GO

CREATE VIEW dbo.ViewAddress
AS
SELECT A.AddressId
	,S.StreetName
	,A.House
	,CASE 
		WHEN A.Serial IS NULL
			THEN N'�/C'
		ELSE A.Serial
		END AS Serial
	,CASE 
		WHEN A.�ountFloor IS NULL
			THEN 0
		ELSE A.�ountFloor
		END AS CountFloors
FROM dbo.Address AS A
INNER JOIN dbo.Street AS S ON A.StreetId = S.StreetId;
GO

-- 1. ������� ��������� ������������ ���� � ������� Street � �� ����������.
SELECT S.StreetName
	,COUNT(S.StreetName) AS CountDublicates
FROM dbo.Street AS S
GROUP BY S.StreetName
ORDER BY CountDublicates DESC;
GO

-- 2. �������� �������, ������� ��������� ������� ������������ ���� � �������
-- Street, ���� ��� ��� ������������ � �������.
IF (OBJECT_ID('dbo.UniqueStreetName', 'TR') IS NOT NULL)
	DROP TRIGGER dbo.UniqueStreetName;
GO

CREATE TRIGGER dbo.UniqueStreetName ON dbo.Street
INSTEAD OF INSERT
AS
BEGIN
	IF (@@ROWCOUNT = 0)
		RETURN;

	IF EXISTS (
			SELECT S.StreetName
				,COUNT(S.StreetName) AS CountDublicates
			FROM dbo.Street AS S
			WHERE S.StreetName IN (
					SELECT Sin.StreetName
					FROM inserted AS Sin
					WHERE Sin.StreetName = S.StreetName
					)
			GROUP BY S.StreetName
			)
	BEGIN
		PRINT 'Error';
	END
	ELSE
	BEGIN
		INSERT INTO dbo.Street
		SELECT I.StreetName
		FROM inserted AS I;
	END
END;
GO

-- TEST
INSERT INTO dbo.Street (StreetName)
VALUES (N'���. ���������������')
	,(N'Test1');
GO

-- 3. ������� �� ������� Street ��������� ����(���� ��� ��������!).
WITH duplicates
AS (
	SELECT S.StreetName
		,ROW_NUMBER() OVER (
			PARTITION BY S.StreetName ORDER BY S.StreetName
			) AS repeats
	FROM dbo.Street AS S
	)
DELETE duplicates
WHERE repeats > 1;
GO

-- TEST
SELECT S.StreetName
	,COUNT(S.StreetName) AS CountDublicates
FROM dbo.Street AS S
GROUP BY S.StreetName
ORDER BY CountDublicates DESC;
GO

-- 4. �������� ���� ������������ � �����, ������������ �� �� ������, �������
-- ��������� �������� �� ����������� ������ 2000��� �������������� � ����� 
-- ������������ ViewAddress ��� ��������).
SELECT C.ConsumerName
	,VA.StreetName
	,CC.UsedKvat
FROM dbo.ViewAddress AS VA
INNER JOIN dbo.ConsumerRent AS CR ON VA.AddressId = CR.AddressId
INNER JOIN dbo.Consumer AS C ON C.ConsumerId = CR.ConsumerId
INNER JOIN dbo.ConsumerContract AS CC ON CR.ConsumerRentId = CC.ConsumerRentId
WHERE CC.UsedKvat > 2000
ORDER BY VA.StreetName ASC;
GO

-- 5. ������� ������������ ������������� � ���������� ������������� ���� ����
-- ��������������.
SELECT S.SubdivisionName
	,COUNT(CR.ConsumerId) AS CountPersons
FROM dbo.Subdivision AS S
INNER JOIN dbo.Address AS A ON S.SubdivisionId = A.SubdivisionId
INNER JOIN dbo.ConsumerRent AS CR ON CR.AddressId = A.AddressId
GROUP BY S.SubdivisionName
ORDER BY CountPersons DESC;
GO

-- 6. ������� ������������ ������������� � ���������� ������������� �������
-- ���� ��������������.
SELECT S.SubdivisionName
	,COUNT(A.AddressId) AS CountAddresses
FROM dbo.Subdivision AS S
INNER JOIN dbo.Address AS A ON S.SubdivisionId = A.SubdivisionId
GROUP BY S.SubdivisionName
ORDER BY CountAddresses DESC;
GO

-- 7. ������� ������������ ������������� ������������� ������������ �
-- ����������� ���������� ������������� �������.
WITH CountAddressesCte
AS (
	SELECT S.SubdivisionName
		,COUNT(A.AddressId) AS CountAddresses
	FROM dbo.Subdivision AS S
	INNER JOIN dbo.Address AS A ON S.SubdivisionId = A.SubdivisionId
	GROUP BY S.SubdivisionName
	)
	,MaxAddressesCte
AS (
	SELECT MAX(CAT.CountAddresses) AS MaxCount
	FROM CountAddressesCte AS CAT
	)
	,LowAddressesCte
AS (
	SELECT MIN(CAT.CountAddresses) AS MinCount
	FROM CountAddressesCte AS CAT
	)
SELECT S.SubdivisionName
	,COUNT(A.AddressId) AS CountAddresses
FROM dbo.Subdivision AS S
INNER JOIN dbo.Address AS A ON S.SubdivisionId = A.SubdivisionId
CROSS JOIN MaxAddressesCte AS Max
CROSS JOIN LowAddressesCte AS Low
GROUP BY S.SubdivisionName
	,Max.MaxCount
	,Low.MinCount
HAVING COUNT(A.AddressId) = Max.MaxCount
	OR COUNT(A.AddressId) = Low.MinCount;

-- 8. ������� ������������ ����, ������� ����������� � ��� 401 � ��� 402.
SELECT S.StreetName
	,SD.SubdivisionName
FROM dbo.ConsumerRent AS CR
INNER JOIN dbo.Address AS A ON A.AddressId = CR.AddressId
INNER JOIN dbo.Street AS S ON S.StreetId = A.StreetId
INNER JOIN dbo.Subdivision AS SD ON A.SubdivisionId = SD.SubdivisionId
WHERE SD.SubdivisionName = N'��� 401'
	OR SD.SubdivisionName = N'��� 402'
GROUP BY S.StreetName
	,SD.SubdivisionName;
GO

-- 9. ������� ������������ ����, ������� ����������� ��� 401 �� �� �����������
-- ��� 402.
SELECT S.StreetName
FROM dbo.ConsumerRent AS CR
INNER JOIN dbo.Address AS A ON A.AddressId = CR.AddressId
INNER JOIN dbo.Street AS S ON S.StreetId = A.StreetId
INNER JOIN dbo.Subdivision AS SD ON A.SubdivisionId = SD.SubdivisionId
WHERE SD.SubdivisionName = N'��� 401'
GROUP BY S.StreetName

INTERSECT

SELECT S.StreetName
FROM dbo.ConsumerRent AS CR
INNER JOIN dbo.Address AS A ON A.AddressId = CR.AddressId
INNER JOIN dbo.Street AS S ON S.StreetId = A.StreetId
INNER JOIN dbo.Subdivision AS SD ON A.SubdivisionId = SD.SubdivisionId
WHERE SD.SubdivisionName = N'��� 402'
GROUP BY S.StreetName;
GO

-- 10. ������� ������������ ����, ������� �� ����������� �� ���� ���.
SELECT S.StreetName
FROM dbo.Address AS A
RIGHT OUTER JOIN dbo.Street AS S ON S.StreetId = A.StreetId
LEFT OUTER JOIN dbo.Subdivision AS Sub ON Sub.SubdivisionId = A.SubdivisionId
WHERE Sub.SubdivisionId IS NULL;
GO

-- 11. ������� ����������� ����������� � ����� �� �������� �����������
-- �������� ��� ��� ����� ���������.
SELECT C.ConsumerName
	,VA.StreetName
	,VA.House
	,COUNT(CC.ConsumerContractId) AS CountContracts
FROM dbo.ConsumerRent AS CR
INNER JOIN dbo.Consumer AS C ON C.ConsumerId = CR.ConsumerId
INNER JOIN dbo.Address AS A ON A.AddressId = CR.AddressId
INNER JOIN dbo.ConsumerContract AS CC ON CC.ConsumerRentId = CR.ConsumerRentId
INNER JOIN dbo.ViewAddress AS VA ON VA.AddressId = A.AddressId
GROUP BY C.ConsumerName
	,VA.StreetName
	,VA.House
HAVING COUNT(CC.ConsumerContractId) >= 2;
GO

-- 12. �������� �������, ������� �� ����� ��� - ���������� ������ ������������
-- � ��  ������, ������� ����������� ��� ������������� � �� ��������
-- ����������� '���������� ��������'.
IF (OBJECT_ID('dbo.GetFullInfo', 'IF') IS NOT NULL)
	DROP FUNCTION dbo.GetFullInfo;
GO

CREATE FUNCTION dbo.GetFullInfo (@SubdivisionName NVARCHAR(64))
RETURNS TABLE
AS
RETURN

SELECT C.ConsumerId
	,C.ConsumerName
	,VA.StreetName
	,VA.House
FROM dbo.ViewAddress AS VA
INNER JOIN dbo.Address AS A ON VA.AddressId = A.AddressId
INNER JOIN dbo.ConsumerRent AS CR ON VA.AddressId = CR.AddressId
INNER JOIN dbo.Subdivision AS SD ON SD.SubdivisionId = A.SubdivisionId
INNER JOIN dbo.Consumer AS C ON C.ConsumerId = CR.ConsumerId
WHERE SD.SubdivisionName = @SubdivisionName
	AND C.ConsumerName <> N'���������� ��������';
GO

-- TEST
SELECT G.ConsumerId
	,G.ConsumerName
	,G.StreetName
	,G.House
FROM dbo.GetFullInfo(N'��� 402') AS G;
GO
