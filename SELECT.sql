
USE TaxPayers
GO
SELECT * FROM TaxPayers;
-- ������� ����������� �� ����������, ������� ��� �����
SELECT * FROM TaxPayers
	ORDER BY [IDinspector(FK)] DESC;


SELECT * FROM TaxPayers
	ORDER BY Name DESC, [IDinspector(FK)];


-- ������� ����������� ���������� ���������� �����������
SELECT [IDinspector(FK)] FROM TaxPayers
	WHERE Name = 'OOO FOKA';


-- ����������� ������ �����������
SELECT * FROM TaxPayers;
SELECT Legal_Adress FROM TaxPayers
	WHERE IDtaxPayer LIKE 100230175;
	
SELECT Legal_Adress FROM TaxPayers
WHERE IDtaxPayer LIKE 100 OR Name LIKE '%B%';
	 	 	 
