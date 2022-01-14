USE TaxPayers
GO

-- Вывести названия всех предприятий, уплачивающих тот же налог,
-- что и OOO DOBRADA
--1. Найти налог, который уплачивает ООО Добрада
SELECT TaxCode FROM Taxes
	WHERE [IDtaxPayer(FK)] = 100200325; -- подзапрос

--2. Выводим список организаций
SELECT [IDtaxPayer(FK)] FROM Taxes -- главный запрос

--3. Соединяем вместе запрос с подзапросом
SELECT [IDtaxPayer(FK)] FROM Taxes
	WHERE [IDtaxPayer(FK)] = 
	(SELECT [IDtaxPayer(FK)] FROM Taxes
		WHERE [IDtaxPayer(FK)] = 100200325);
