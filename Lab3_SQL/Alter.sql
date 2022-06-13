Use ПРОДАЖИ

ALTER table Товары ADD Дата_поступления date;

ALTER TABLE Товары
ADD CONSTRAINT df_Цена
DEFAULT '1' FOR Цена