  USE TaxPayers
GO

-- Вывести список всех организаций и контанты соотв. инспекторов 
-- JOIN
SELECT * FROM Taxpayers;
SELECT * FROM Inspector;
SELECT * FROM Taxpayers CROSS JOIN Inspector;
SELECT * FROM Taxpayers, Inspector;
SELECT * 
	FROM Inspector CROSS JOIN Taxpayers --строится большая таблица
		WHERE [IDinspector(FK)] = NameInspector; -- потом выполняется отбор
SELECT * 
	FROM Taxpayers INNER JOIN Inspector -- при соединении сразу 
		ON [IDinspector(FK)] = NameInspector; --отбираются нужные строки
SELECT * 
	FROM Inspector RIGHT JOIN Taxpayers
		ON [IDinspector(FK)] = NameInspector;


--UNION
SELECT Name FROM Taxpayers
UNION
SELECT NameInspector FROM Inspector
