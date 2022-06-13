USE [Леонов-Продажи]
GO

/****** Object:  Table [dbo].[Товары]    Script Date: 15.02.2022 10:44:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Тестовая таблица](
	[Наименование] [nvarchar](20) NOT NULL,
	[Цена] [real] NOT NULL,
	[Количество] [int] NOT NULL,
 CONSTRAINT [PK_Тестовая таблица] PRIMARY KEY CLUSTERED 
(
	[Наименование] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


