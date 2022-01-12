
USE TaxPayers
GO
SELECT * FROM TaxPayers;
-- выбрать плательщика по инспектору, который его ведет
SELECT * FROM TaxPayers
	ORDER BY [IDinspector(FK)] DESC;


SELECT * FROM TaxPayers
	ORDER BY Name DESC, [IDinspector(FK)];


-- выбрать конкретного инспектора конкретной организации
SELECT [IDinspector(FK)] FROM TaxPayers
	WHERE Name = 'OOO FOKA';


-- проработаем адреса организаций
SELECT * FROM TaxPayers;
SELECT Legal_Adress FROM TaxPayers
	WHERE IDtaxPayer LIKE 100230175;
	
SELECT Legal_Adress FROM TaxPayers
WHERE IDtaxPayer LIKE 100 OR Name LIKE '%B%';
	 	 	 
