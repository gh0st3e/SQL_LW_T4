use ПРОДАЖИ
CREATE table Товары
(	Наименование nvarchar(50) primary key,
	Цена real unique not null,
	Количество int
);
CREATE table Заказчики
(	Наименование_фирмы nvarchar(20) primary key,
	Адрес nvarchar(50),
	Расчетный_счет nvarchar(20)
);
CREATE table Заказы
(	Номер_заказа int primary key,
	Наименование_товара nvarchar(50) foreign key references Товары(Наименование),
	Цена_продажи real,
	Количество int,
	Дата_поставки date,
	Заказчик nvarchar(20) foreign key references Заказчики(Наименование_фирмы)
);

SELECT * FROM Заказчики