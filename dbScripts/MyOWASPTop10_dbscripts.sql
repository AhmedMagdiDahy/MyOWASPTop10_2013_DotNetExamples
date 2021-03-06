
GO
/****** Object:  Table [dbo].[Forum]    Script Date: 17/09/2016 17:57:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[post] [ntext] NOT NULL,
 CONSTRAINT [PK_Forum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lixo]    Script Date: 17/09/2016 17:57:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lixo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dados] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lixo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produto]    Script Date: 17/09/2016 17:57:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](50) NOT NULL,
	[descricao] [ntext] NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Utilizador]    Script Date: 17/09/2016 17:57:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Utilizador_safeN0]    Script Date: 17/09/2016 17:57:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador_safeN0](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](256) NULL,
 CONSTRAINT [PK_User1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Forum] ON 

INSERT [dbo].[Forum] ([id], [post]) VALUES (2027, N'hello')
INSERT [dbo].[Forum] ([id], [post]) VALUES (2028, N'<b>hello</b>')
INSERT [dbo].[Forum] ([id], [post]) VALUES (2029, N'<b>hello</b>')
INSERT [dbo].[Forum] ([id], [post]) VALUES (2030, N'<b>hello</b>')
SET IDENTITY_INSERT [dbo].[Forum] OFF
SET IDENTITY_INSERT [dbo].[Lixo] ON 

INSERT [dbo].[Lixo] ([id], [dados]) VALUES (6, N'test')
INSERT [dbo].[Lixo] ([id], [dados]) VALUES (7, N'test')
INSERT [dbo].[Lixo] ([id], [dados]) VALUES (8, N'test2')
INSERT [dbo].[Lixo] ([id], [dados]) VALUES (9, N'test3')
INSERT [dbo].[Lixo] ([id], [dados]) VALUES (10, N'kjhjk')
INSERT [dbo].[Lixo] ([id], [dados]) VALUES (11, N'jop')
INSERT [dbo].[Lixo] ([id], [dados]) VALUES (12, N'poop')
INSERT [dbo].[Lixo] ([id], [dados]) VALUES (13, N'pipi')
INSERT [dbo].[Lixo] ([id], [dados]) VALUES (14, N'+lhljkhli')
INSERT [dbo].[Lixo] ([id], [dados]) VALUES (15, N'lkilj')
SET IDENTITY_INSERT [dbo].[Lixo] OFF
SET IDENTITY_INSERT [dbo].[Utilizador] ON 

INSERT [dbo].[Utilizador] ([id], [username], [password]) VALUES (1, N'daniel', N'daniel')
INSERT [dbo].[Utilizador] ([id], [username], [password]) VALUES (2, N'ana', N'ana')
INSERT [dbo].[Utilizador] ([id], [username], [password]) VALUES (1002, N'daniel', N'wYP/+2xV4Q4pE3XpaOmF9Qbr1FJ+I0TbaB7IPnobcKc=')
SET IDENTITY_INSERT [dbo].[Utilizador] OFF
SET IDENTITY_INSERT [dbo].[Utilizador_safeN0] ON 

INSERT [dbo].[Utilizador_safeN0] ([id], [username], [password]) VALUES (1, N'daniel', N'wYP/+2xV4Q4pE3XpaOmF9Qbr1FJ+I0TbaB7IPnobcKc=')
SET IDENTITY_INSERT [dbo].[Utilizador_safeN0] OFF
