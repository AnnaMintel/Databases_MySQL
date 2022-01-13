USE TaxPayers
GO
--�� ������� Payer's_property �������� ��� ������, ��� ������� �������� 
-- ���� BRTI_realEstate ����� �������� 'NO' � �������� ���� Balance �����
--  � ��������� �� 2 �� 4 ��� ����������

SELECT * FROM Payer_s_property
	WHERE BRTI_realEstate like 'NO' AND Balances >= 2 AND Balances <= 4;


--�� ������� Payer_s_property �������� ��� ������, �� ����������� � BMW
--��� � AUDI, �� �� ��������� � ����������� ���������� � ��������
SELECT IDtaxPayer, GAI_cars  FROM Payer_s_property
	WHERE  GAI_cars != 'BMW' AND GAI_cars != 'AUDI' 
	AND GAI_cars != 'NO';
	
	
-- ������� ����������� � ��������� � ������� Inspector	 
SELECT COUNT(IDinspector) [���������� �����������]  FROM Inspector;
