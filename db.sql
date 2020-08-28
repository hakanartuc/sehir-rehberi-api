USE [SehirRehberi]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 28.08.2020 20:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 28.08.2020 20:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityId] [int] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsMain] [bit] NOT NULL,
	[Url] [nvarchar](max) NULL,
	[PublicId] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.08.2020 20:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PasswordHash] [varbinary](max) NULL,
	[PasswordSalt] [varbinary](max) NULL,
	[Username] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Values]    Script Date: 28.08.2020 20:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Values](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 
GO
INSERT [dbo].[Cities] ([Id], [Description], [Name], [UserId]) VALUES (1, N'Ankara Türkiye''nin başkentidir.', N'Ankara', 3)
GO
INSERT [dbo].[Cities] ([Id], [Description], [Name], [UserId]) VALUES (2, N'Ne kadar da güzel bir şehir', N'İstanbul', 3)
GO
INSERT [dbo].[Cities] ([Id], [Description], [Name], [UserId]) VALUES (3, N'Bursa güzel bir şehrimizdir', N'Bursa', 3)
GO
INSERT [dbo].[Cities] ([Id], [Description], [Name], [UserId]) VALUES (4, N'Adana akdeniz bölgesindedir.', N'Adana', 3)
GO
INSERT [dbo].[Cities] ([Id], [Description], [Name], [UserId]) VALUES (5, N'Van'' da mutlaka kahvaltı yapmalısınız', N'Van', 3)
GO
INSERT [dbo].[Cities] ([Id], [Description], [Name], [UserId]) VALUES (6, N'Diyarbakır güzel bir şehrimizdir.', N'Diyarbakır', 3)
GO
INSERT [dbo].[Cities] ([Id], [Description], [Name], [UserId]) VALUES (7, N'Kayseri cimri bir şehrimizdir.', N'Kayseri', 3)
GO
INSERT [dbo].[Cities] ([Id], [Description], [Name], [UserId]) VALUES (8, N'<strong>Mardin tarihi bir şehrimizdir</strong>', N'Mardin', 3)
GO
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 
GO
INSERT [dbo].[Photos] ([Id], [CityId], [DateAdded], [Description], [IsMain], [Url], [PublicId]) VALUES (1, 1, CAST(N'2020-06-25T00:00:00.0000000' AS DateTime2), N'Güzel bir Ankara manzarası', 1, N'https://blog.e-bursum.com/wp-content/uploads/2019/02/660-660-1.jpg', N'1')
GO
INSERT [dbo].[Photos] ([Id], [CityId], [DateAdded], [Description], [IsMain], [Url], [PublicId]) VALUES (2, 2, CAST(N'2020-08-08T00:00:00.0000000' AS DateTime2), N'Güzel bir İstanbul Fotoğrafı', 1, N'https://www.dreamofholiday.com/userFiles/bolgeler/950205793_1588435982.jpg', N'2')
GO
INSERT [dbo].[Photos] ([Id], [CityId], [DateAdded], [Description], [IsMain], [Url], [PublicId]) VALUES (3, 3, CAST(N'2020-08-28T20:47:14.2460429' AS DateTime2), NULL, 1, N'http://res.cloudinary.com/dfzn2wlwb/image/upload/v1598636836/rkuszkd3kmhthwnx0ido.jpg', N'rkuszkd3kmhthwnx0ido')
GO
INSERT [dbo].[Photos] ([Id], [CityId], [DateAdded], [Description], [IsMain], [Url], [PublicId]) VALUES (4, 5, CAST(N'2020-08-28T20:47:59.3743461' AS DateTime2), NULL, 1, N'http://res.cloudinary.com/dfzn2wlwb/image/upload/v1598636882/moy9vtu5trdbs4mescqk.jpg', N'moy9vtu5trdbs4mescqk')
GO
INSERT [dbo].[Photos] ([Id], [CityId], [DateAdded], [Description], [IsMain], [Url], [PublicId]) VALUES (5, 7, CAST(N'2020-08-28T20:49:02.3328278' AS DateTime2), NULL, 1, N'http://res.cloudinary.com/dfzn2wlwb/image/upload/v1598636944/b6oal7q41ndts3zhe7lf.jpg', N'b6oal7q41ndts3zhe7lf')
GO
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [PasswordHash], [PasswordSalt], [Username]) VALUES (3, 0x73DE8489F3505D093CF45B39A02C0F2757DCF239EBC0F48F038F46582777938A0DB842FFE4FF6CBD26A868D0E50B66E2B57E960E25A4E49D6EFC5E1777588ACD, 0xB20DCC5DDCFBA005C47A802568FD85D5887FD821EA5D79B6B3C4D19A611602FF5A33D969A9B81165ABFB26C44CF3F389E0E6C7C585A4E4BC18390DBA731234D9A360ACD81D68BBA3A8CCFF2FB591F9BFE25E64E04CF7A9D7265A199C50AE77E8C1C861C4593AD83B0BCC885B4762A62A88A503E524B531C20DA6E2C02D1B9EC3, N'hakan')
GO
INSERT [dbo].[Users] ([Id], [PasswordHash], [PasswordSalt], [Username]) VALUES (4, 0x2299355DA351EC5B7BB63AF354570F57F5D6E3E0138DABF734B07E29DBB2F4149B9AF608B8AA8C7512BECE5805037D059B2D348C788FB6E488D17D3176601AA7, 0xE26B3C3D267659AD66FF66B1429F396E2991CCB09E19F0444C11AFF442780B4AB81F714F64EB552E75BEFF078ED9BD6956F4DB727E348A3BF4EC1ACF42A7EB5DB5FE0D7A766F129E869415C3E69F27F5CCA9DDECA1A821009CFAB0993B8145C61755D3A231950335F2E763B29504B7A6D4A6E6D2480CA7FFCA3E852FCDD81CAE, N'hakan2')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Values] ON 
GO
INSERT [dbo].[Values] ([Id], [Name]) VALUES (1, N'Hakan')
GO
INSERT [dbo].[Values] ([Id], [Name]) VALUES (2, N'Ali')
GO
INSERT [dbo].[Values] ([Id], [Name]) VALUES (3, N'Veli')
GO
SET IDENTITY_INSERT [dbo].[Values] OFF
GO
