USE TaxPayers
GO

-- —колько организаций ведет каждый инспектор
SELECT * FROM Taxpayers;
SELECT [IDinspector(FK)], SUM(IDtaxPayer) 
		FROM Taxpayers
			GROUP BY [IDinspector(FK)];
SELECT * FROM Taxpayers;
