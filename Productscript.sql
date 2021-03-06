USE [MSSQL]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 30.10.2021 2:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 30.10.2021 2:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nvarchar](max) NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[InsertDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211029212917_Init', N'5.0.11')
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Model], [Cost], [InsertDate]) VALUES (1, N'Apple', CAST(10.00 AS Decimal(18, 2)), CAST(N'2021-10-29 21:32:02.7724491' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Model], [Cost], [InsertDate]) VALUES (2, N'Potatoes', CAST(3.80 AS Decimal(18, 2)), CAST(N'2021-10-29 21:32:16.5702383' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Model], [Cost], [InsertDate]) VALUES (3, N'Carrot', CAST(2.50 AS Decimal(18, 2)), CAST(N'2021-10-29 21:32:26.2037893' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Model], [Cost], [InsertDate]) VALUES (4, N'Onion', CAST(1.60 AS Decimal(18, 2)), CAST(N'2021-10-29 21:32:36.5233795' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Model], [Cost], [InsertDate]) VALUES (5, N'Grape', CAST(5.00 AS Decimal(18, 2)), CAST(N'2021-10-29 21:32:52.3882869' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
