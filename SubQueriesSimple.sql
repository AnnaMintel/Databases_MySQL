USE TaxPayers
GO

-- ������� �������� ���� �����������, ������������ ��� �� �����,
-- ��� � OOO DOBRADA
--1. ����� �����, ������� ���������� ��� �������
SELECT TaxCode FROM Taxes
	WHERE [IDtaxPayer(FK)] = 100200325; -- ���������

--2. ������� ������ �����������
SELECT [IDtaxPayer(FK)] FROM Taxes -- ������� ������

--3. ��������� ������ ������ � �����������
SELECT [IDtaxPayer(FK)] FROM Taxes
	WHERE [IDtaxPayer(FK)] = 
	(SELECT [IDtaxPayer(FK)] FROM Taxes
		WHERE [IDtaxPayer(FK)] = 100200325);
