  USE TaxPayers
GO

-- ������� ������ ���� ����������� � �������� �����. ����������� 
-- JOIN
SELECT * FROM Taxpayers;
SELECT * FROM Inspector;
SELECT * FROM Taxpayers CROSS JOIN Inspector;
SELECT * FROM Taxpayers, Inspector;
SELECT * 
	FROM Inspector CROSS JOIN Taxpayers --�������� ������� �������
		WHERE [IDinspector(FK)] = NameInspector; -- ����� ����������� �����
SELECT * 
	FROM Taxpayers INNER JOIN Inspector -- ��� ���������� ����� 
		ON [IDinspector(FK)] = NameInspector; --���������� ������ ������
SELECT * 
	FROM Inspector RIGHT JOIN Taxpayers
		ON [IDinspector(FK)] = NameInspector;


--UNION
SELECT Name FROM Taxpayers
UNION
SELECT NameInspector FROM Inspector
