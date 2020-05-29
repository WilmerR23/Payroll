USE [UnapecNomina]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 29/5/2020 6:30:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 29/5/2020 6:30:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentNumber] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[CrudeSalary] [float] NULL,
	[AccountNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayrollSheets]    Script Date: 29/5/2020 6:30:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayrollSheets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PayrollDate] [datetime] NOT NULL,
	[ISRDiscount] [float] NULL,
	[AFPDiscount] [float] NULL,
	[OthersDiscounts] [float] NULL,
	[TotalDiscounts] [float] NULL,
	[NetSalary] [float] NULL,
	[EmployeeId] [int] NULL,
 CONSTRAINT [PK_dbo.PayrollSheets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202005291959272_init', N'Payroll.DAL.Migrations.Configuration', 0x1F8B0800000000000400DD59CD6EE33610BE17E83B083AB505D672B29736B07791DA491174F383C8BBD78096C636518A54452AB09FAD873E525FA143D9922852B6652559747B93C9996F86E437E4CCF89FBFFE1E7D5C27CC7B864C52C1C7FED960E87BC0231153BE1CFBB95ABCFBD9FFF8E1FBEF465771B2F6BE9472EFB51C6A7239F6574AA5174120A31524440E121A65428A851A442209482C82F3E1F097E0EC2C0084F011CBF3468F39573481E207FE9C081E41AA72C26E450C4CEEC671262C50BD3B92804C490463FF816C32C1D8607AF9C9F72E1925E842086CE17B8473A18842072F3E4B085526F8324C7180B0D92605945B102661E7F8452DDE750DC373BD86A056ECB5077EB53A5CDF15EE83DA68F78A358EFDAB24656203604AA1DCEFB0690CE0D0432652C8D4E611163BDD9BD8F782A65E602B566A868E368F5F5CBD3FF7BDBB9C31326750ED96B1ADA11219FC061C32A2207E204A41C6350614CB70AC5BB6A622CA1314BDCB933964A55D3C28249BEFDD92F527E04BB51AFBF8E97BD7740D7139B2F3E533A7C84D5452590EC7CC5DD34C2AFDF9E6963E91AF646892E5318484916C53DA9A8A1C4FEB98E2651489FCED76FE8E3CD365C111CBEE2E5A65B80250BEF708AC90922B9A6EC376B09328049E2AF67BD799481E05AB219A024F33922D35E24C1C920A459E4596BBA3A00EBA83A16842FE1FC371B7BE292A5764C2EF19D54476EC1EC6BA091FA754161C3B9198D70FFD14EFD50A5FA352579EA63CC32D643D75EF40F589C09293CE09770DA53A365E2F8ACAF8381C4565AC7589A24B2945440BF75AC2E869CFF376C563AF939FDB7BCB5E315E6139533465344297C6FE4FCEAE1E33505D27B5817A179BE0C3C1E0CCC1C7A8874C871D6198CC489511CA957B45501ED194B02EAE58CA1D6F187D3095197B660A29707D3974D9EB2EF64D4EBB7E54E6AC3BF0D85E8D028344EE0D8D3A0A35202B6F90349DCEF520ACED6B7AAB1082B2FCC588AFD9EB1CB7439D2688F5A439404D625A60C6CA1C443B780DD983516E6F7CD760AA16E6ACC939CBAEE163401A7B6D3F82CD4D68B954AA23AE0B81605B09941543B0A76418DD9234C5A4C6282176235EB8AD1F26EFC2D3D3F6648B1144B2257BAFBCAD2CE1BB4C9660CDA269F4B4484AF1992573A25FD5499C38625D085D9AB279ED1E5CC9CE52437F3768A72BA9C13E32D5FB778D4BD2C97BB13A68396857B5A8DFF453D992E44C04CB13BEFF1ADBAF6D571126923DD71DD528164C4063B83B565D0E9850F56877A446BE6F823526BAE359658089684DB998A3C0628273E13B64B3E2DE666F276E37AFA6BEFCDE9FCB1730C7387E58FD6D78DE48CF4D98C64477BC468ADE70CB9C38814B66E6DE609239D11DCF49E84D4C67B23BAE9DEB9BB0F65C7754A30A30018DE1EE58661A65821D4AAFDE381E9D97D816A9AC572FB2F5F28E76AFE0F18E9EF32C6E457C0FB7E999C6FA490C37524132D00283F04F36611434B94A815BC2E902A49A893F0073A5F3E1D9B9D51BECD1A70BA48CD97FB55947F5F28FD6FF2716F1EDFD39FE4CB26845B21F12B2FED1C4ECD5837B119ADD677B11584B2F6DC10451A7E2B4B6D64EF0EC1BE947BD09E35A5A50317EAB576A41F53B4FB723D50B674F83AA17567BBFAA1794D3BEEA85E276B30A7EF4E1F94B3B4675C1DCB779D35EDDBEA0DBD4AB1B74A0047BD3CECFB7D3E971EBE76EED9E83DD9E6DB281F7CE5CE0896FC9BBBF77B1A719D4AD17D466CA9470CD7DDD7691BD5FCDF2BE6B57A8ADB1D4DE0C7B9546909B6622EF8CBF9791FB922E6B08FD673387A8C1B84AE6862F44497ECBA352C4BA086F41117CB2C865A6E882440AA72390B2F85FED0B6179B1AD73886FF87DAED25CE1922199B3467DA003E890FDA2DBD5F479749F16FF00BCC612D04DAA5FDD7BFE6B4E595CF97DEDBEBAFB207464EED2027D964AA707CB4D8574277847A0DDF65517CA0C907E0826EF79489E61BF6FC7F7B0B963A32925CB8C24728751EBE34FA45F9CAC3FFC0BA3EF3D2820210000, N'6.0.0-20911')
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [DocumentNumber], [FirstName], [LastName], [CrudeSalary], [AccountNumber]) VALUES (1, N'00119355576', N'JARLYN MANUEL', N'POLANCO DE LA ROSA', 80000.99, N'25142310025')
INSERT [dbo].[Employees] ([Id], [DocumentNumber], [FirstName], [LastName], [CrudeSalary], [AccountNumber]) VALUES (2, N'00119355576', N'DAMON', N'SALVATORE', 70000.85, N'25142310028')
INSERT [dbo].[Employees] ([Id], [DocumentNumber], [FirstName], [LastName], [CrudeSalary], [AccountNumber]) VALUES (3, N'00119344576', N'STEFAN', N'SALVATORE', 76895.35, N'25142310033')
INSERT [dbo].[Employees] ([Id], [DocumentNumber], [FirstName], [LastName], [CrudeSalary], [AccountNumber]) VALUES (4, N'00119333576', N'ELENA', N'GILBERT', 45000, N'25142310044')
INSERT [dbo].[Employees] ([Id], [DocumentNumber], [FirstName], [LastName], [CrudeSalary], [AccountNumber]) VALUES (5, N'00119377576', N'CAROLINE', N'FORBES', 33000, N'25142310055')
INSERT [dbo].[Employees] ([Id], [DocumentNumber], [FirstName], [LastName], [CrudeSalary], [AccountNumber]) VALUES (6, N'00119388576', N'JEREMY', N'GILBERT', 28000, N'25142310066')
INSERT [dbo].[Employees] ([Id], [DocumentNumber], [FirstName], [LastName], [CrudeSalary], [AccountNumber]) VALUES (7, N'00119399576', N'KATHERINE', N'PETROVA', 16000, N'25142310888')
INSERT [dbo].[Employees] ([Id], [DocumentNumber], [FirstName], [LastName], [CrudeSalary], [AccountNumber]) VALUES (8, N'00119305576', N'KLAUS', N'MIKAELSON', 87000.88, N'25142310102')
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[PayrollSheets] ON 

INSERT [dbo].[PayrollSheets] ([Id], [PayrollDate], [ISRDiscount], [AFPDiscount], [OthersDiscounts], [TotalDiscounts], [NetSalary], [EmployeeId]) VALUES (2, CAST(N'2020-05-21T12:46:00.000' AS DateTime), 3000, 1350, 1200, 5550, 74450.99, 1)
INSERT [dbo].[PayrollSheets] ([Id], [PayrollDate], [ISRDiscount], [AFPDiscount], [OthersDiscounts], [TotalDiscounts], [NetSalary], [EmployeeId]) VALUES (3, CAST(N'2020-05-22T12:57:02.000' AS DateTime), 3000, 1350, 1200, 5550, 64450.85, 2)
INSERT [dbo].[PayrollSheets] ([Id], [PayrollDate], [ISRDiscount], [AFPDiscount], [OthersDiscounts], [TotalDiscounts], [NetSalary], [EmployeeId]) VALUES (4, CAST(N'2020-05-22T12:57:36.000' AS DateTime), 3000, 1350, 1200, 5550, 71345.35, 3)
INSERT [dbo].[PayrollSheets] ([Id], [PayrollDate], [ISRDiscount], [AFPDiscount], [OthersDiscounts], [TotalDiscounts], [NetSalary], [EmployeeId]) VALUES (5, CAST(N'2020-05-22T12:57:45.000' AS DateTime), 3000, 1350, 1200, 5550, 39450, 4)
INSERT [dbo].[PayrollSheets] ([Id], [PayrollDate], [ISRDiscount], [AFPDiscount], [OthersDiscounts], [TotalDiscounts], [NetSalary], [EmployeeId]) VALUES (6, CAST(N'2020-05-22T12:57:55.000' AS DateTime), 3000, 1350, 1200, 5550, 27450, 5)
INSERT [dbo].[PayrollSheets] ([Id], [PayrollDate], [ISRDiscount], [AFPDiscount], [OthersDiscounts], [TotalDiscounts], [NetSalary], [EmployeeId]) VALUES (7, CAST(N'2020-05-22T12:58:04.000' AS DateTime), 3000, 1350, 1200, 5550, 22450, 6)
INSERT [dbo].[PayrollSheets] ([Id], [PayrollDate], [ISRDiscount], [AFPDiscount], [OthersDiscounts], [TotalDiscounts], [NetSalary], [EmployeeId]) VALUES (8, CAST(N'2020-05-22T12:58:12.000' AS DateTime), 3000, 1350, 1200, 5550, 10450, 7)
INSERT [dbo].[PayrollSheets] ([Id], [PayrollDate], [ISRDiscount], [AFPDiscount], [OthersDiscounts], [TotalDiscounts], [NetSalary], [EmployeeId]) VALUES (9, CAST(N'2020-05-22T12:58:22.000' AS DateTime), 3000, 1350, 1200, 5550, 81450.88, 8)
SET IDENTITY_INSERT [dbo].[PayrollSheets] OFF
ALTER TABLE [dbo].[PayrollSheets]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PayrollSheets_dbo.Employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([Id])
GO
ALTER TABLE [dbo].[PayrollSheets] CHECK CONSTRAINT [FK_dbo.PayrollSheets_dbo.Employees_EmployeeId]
GO
