USE TaxPayers
GO
--Из таблицы Payer's_property выберите все строки, для которых значение 
-- поля BRTI_realEstate имеет значение 'NO' и значение поля Balance лежит
--  в диапазоне от 2 до 4 или неизвестно

SELECT * FROM Payer_s_property
	WHERE BRTI_realEstate like 'NO' AND Balances >= 2 AND Balances <= 4;


--Из таблицы Payer_s_property выберите все строки, не относящиеся к BMW
--или к AUDI, но не связанные с отсутствием автомобиля в принципе
SELECT IDtaxPayer, GAI_cars  FROM Payer_s_property
	WHERE  GAI_cars != 'BMW' AND GAI_cars != 'AUDI' 
	AND GAI_cars != 'NO';
	
	
-- Сколько инспекторов в налоговой в таблице Inspector	 
SELECT COUNT(IDinspector) [Количество инспекторов]  FROM Inspector;
