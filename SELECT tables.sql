USE TaxPayers
GO

-- ������� ����������� ����� ������ ���������
SELECT * FROM Taxpayers;
SELECT [IDinspector(FK)], SUM(IDtaxPayer) 
		FROM Taxpayers
			GROUP BY [IDinspector(FK)];
SELECT * FROM Taxpayers;
