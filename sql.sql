USE [website]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id_comment] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
	[nd] [nvarchar](max) NULL,
	[id_phim] [int] NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[id_comment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctDaodien]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctDaodien](
	[id_phim] [int] NOT NULL,
	[id_daodien] [int] NULL,
	[id_ctDaodien] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ctDaodien] PRIMARY KEY CLUSTERED 
(
	[id_ctDaodien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctDienvien]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctDienvien](
	[id_ctDienvien] [int] IDENTITY(1,1) NOT NULL,
	[id_dienvien] [int] NULL,
	[id_phim] [int] NULL,
 CONSTRAINT [PK_ctDienvien] PRIMARY KEY CLUSTERED 
(
	[id_ctDienvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctlogin]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctlogin](
	[id_ctlogin] [int] IDENTITY(1,1) NOT NULL,
	[id_login] [int] NULL,
	[id_phim] [int] NULL,
 CONSTRAINT [PK_ctlogin] PRIMARY KEY CLUSTERED 
(
	[id_ctlogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctTheloai]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctTheloai](
	[id_ctTheloai] [int] IDENTITY(1,1) NOT NULL,
	[id_phim] [int] NULL,
	[id_theLoai] [int] NULL,
 CONSTRAINT [PK_ctTheloai] PRIMARY KEY CLUSTERED 
(
	[id_ctTheloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[daodien]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[daodien](
	[id_daodien] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
 CONSTRAINT [PK_daodien] PRIMARY KEY CLUSTERED 
(
	[id_daodien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dienvien]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dienvien](
	[id_Dienvien] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
 CONSTRAINT [PK_dien_vien] PRIMARY KEY CLUSTERED 
(
	[id_Dienvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id_login] [int] IDENTITY(1,1) NOT NULL,
	[taikhoan] [nvarchar](max) NULL,
	[matkhau] [nvarchar](max) NULL,
	[role] [int] NULL,
	[ten] [nvarchar](max) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id_login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phim]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phim](
	[id_phim] [int] IDENTITY(1,1) NOT NULL,
	[ten_phim] [nvarchar](max) NULL,
	[anh_daidien] [nvarchar](max) NULL,
	[trailer] [nvarchar](max) NULL,
	[mota] [nvarchar](max) NULL,
	[imdb] [int] NULL,
 CONSTRAINT [PK_san_pham] PRIMARY KEY CLUSTERED 
(
	[id_phim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tapphim]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tapphim](
	[id_tapphim] [int] IDENTITY(1,1) NOT NULL,
	[id_phim] [int] NULL,
	[tapso] [int] NULL,
	[ngay_update] [datetime] NULL,
	[link] [nvarchar](max) NULL,
 CONSTRAINT [PK_tapphim] PRIMARY KEY CLUSTERED 
(
	[id_tapphim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[theloai_phim]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theloai_phim](
	[id_theloai] [int] IDENTITY(1,1) NOT NULL,
	[ten_theloai_phim] [nvarchar](max) NULL,
 CONSTRAINT [PK_danhmuc_sanpham] PRIMARY KEY CLUSTERED 
(
	[id_theloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tintuc_phim]    Script Date: 12/10/2020 7:25:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tintuc_phim](
	[id_tintuc_phim] [int] IDENTITY(1,1) NOT NULL,
	[tieu_de] [nvarchar](max) NULL,
	[anh_daidien] [nvarchar](max) NULL,
	[tom_tat_tin] [nvarchar](max) NULL,
	[noidung] [nvarchar](max) NULL,
 CONSTRAINT [PK_tin_tuc] PRIMARY KEY CLUSTERED 
(
	[id_tintuc_phim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([id_comment], [ten], [nd], [id_phim]) VALUES (18, N'ád', N'áđá', 33)
INSERT [dbo].[comment] ([id_comment], [ten], [nd], [id_phim]) VALUES (34, N'ạdnkansdkn', N'lknlknasndklasndknaklndlkanslkdnasd', 33)
INSERT [dbo].[comment] ([id_comment], [ten], [nd], [id_phim]) VALUES (35, N'vvvvvvvvvvvvvvvvvvvvv', N'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', 33)
INSERT [dbo].[comment] ([id_comment], [ten], [nd], [id_phim]) VALUES (42, N'adasd', N'ádafzc', 25)
SET IDENTITY_INSERT [dbo].[comment] OFF
GO
SET IDENTITY_INSERT [dbo].[ctDaodien] ON 

INSERT [dbo].[ctDaodien] ([id_phim], [id_daodien], [id_ctDaodien]) VALUES (36, 13, 9)
INSERT [dbo].[ctDaodien] ([id_phim], [id_daodien], [id_ctDaodien]) VALUES (36, 12, 10)
INSERT [dbo].[ctDaodien] ([id_phim], [id_daodien], [id_ctDaodien]) VALUES (35, 12, 11)
INSERT [dbo].[ctDaodien] ([id_phim], [id_daodien], [id_ctDaodien]) VALUES (35, 10, 12)
INSERT [dbo].[ctDaodien] ([id_phim], [id_daodien], [id_ctDaodien]) VALUES (33, 12, 13)
INSERT [dbo].[ctDaodien] ([id_phim], [id_daodien], [id_ctDaodien]) VALUES (33, 10, 14)
SET IDENTITY_INSERT [dbo].[ctDaodien] OFF
GO
SET IDENTITY_INSERT [dbo].[ctlogin] ON 

INSERT [dbo].[ctlogin] ([id_ctlogin], [id_login], [id_phim]) VALUES (2, 2, 26)
INSERT [dbo].[ctlogin] ([id_ctlogin], [id_login], [id_phim]) VALUES (3, 2, 24)
SET IDENTITY_INSERT [dbo].[ctlogin] OFF
GO
SET IDENTITY_INSERT [dbo].[ctTheloai] ON 

INSERT [dbo].[ctTheloai] ([id_ctTheloai], [id_phim], [id_theLoai]) VALUES (89, 36, 8)
INSERT [dbo].[ctTheloai] ([id_ctTheloai], [id_phim], [id_theLoai]) VALUES (90, 36, 7)
INSERT [dbo].[ctTheloai] ([id_ctTheloai], [id_phim], [id_theLoai]) VALUES (91, 35, 8)
INSERT [dbo].[ctTheloai] ([id_ctTheloai], [id_phim], [id_theLoai]) VALUES (92, 35, 5)
INSERT [dbo].[ctTheloai] ([id_ctTheloai], [id_phim], [id_theLoai]) VALUES (93, 33, 8)
INSERT [dbo].[ctTheloai] ([id_ctTheloai], [id_phim], [id_theLoai]) VALUES (94, 33, 5)
INSERT [dbo].[ctTheloai] ([id_ctTheloai], [id_phim], [id_theLoai]) VALUES (95, 33, 4)
INSERT [dbo].[ctTheloai] ([id_ctTheloai], [id_phim], [id_theLoai]) VALUES (96, 33, 3)
SET IDENTITY_INSERT [dbo].[ctTheloai] OFF
GO
SET IDENTITY_INSERT [dbo].[daodien] ON 

INSERT [dbo].[daodien] ([id_daodien], [ten], [img]) VALUES (7, N'Hemsworth ', N'202010051137241638.jpg')
INSERT [dbo].[daodien] ([id_daodien], [ten], [img]) VALUES (8, N'Ruffalo   ', N'202010051137150793.jpg')
INSERT [dbo].[daodien] ([id_daodien], [ten], [img]) VALUES (9, N'Evans     ', N'202010051137068705.jpg')
INSERT [dbo].[daodien] ([id_daodien], [ten], [img]) VALUES (10, N' Renner   ', N'202010051136576645.jpg')
INSERT [dbo].[daodien] ([id_daodien], [ten], [img]) VALUES (12, N'joohne    ', N'202010051136434587.jpg')
INSERT [dbo].[daodien] ([id_daodien], [ten], [img]) VALUES (13, N'Xabio     ', N'202010051136315602.jpg')
SET IDENTITY_INSERT [dbo].[daodien] OFF
GO
SET IDENTITY_INSERT [dbo].[Dienvien] ON 

INSERT [dbo].[Dienvien] ([id_Dienvien], [ten], [img]) VALUES (17, N'Han', N'202010051114344896.jpg')
INSERT [dbo].[Dienvien] ([id_Dienvien], [ten], [img]) VALUES (19, N'Mark2', N'202010100639532432.jpg')
INSERT [dbo].[Dienvien] ([id_Dienvien], [ten], [img]) VALUES (20, N'Nana', N'202010100642028438.jpg')
INSERT [dbo].[Dienvien] ([id_Dienvien], [ten], [img]) VALUES (22, N'Spader', N'202010100642482764.jpg')
INSERT [dbo].[Dienvien] ([id_Dienvien], [ten], [img]) VALUES (23, N'Cheadle', N'202010100642581064.jpg')
SET IDENTITY_INSERT [dbo].[Dienvien] OFF
GO
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([id_login], [taikhoan], [matkhau], [role], [ten]) VALUES (2, N'cc', N'E0323A9039ADD2978BF5B49550572C7C', 0, N'cc')
INSERT [dbo].[login] ([id_login], [taikhoan], [matkhau], [role], [ten]) VALUES (3, N'xx', N'9336EBF25087D91C818EE6E9EC29F8C1', 0, N'xx')
INSERT [dbo].[login] ([id_login], [taikhoan], [matkhau], [role], [ten]) VALUES (4, N'kk', N'202CB962AC59075B964B07152D234B70', 0, N'kk')
INSERT [dbo].[login] ([id_login], [taikhoan], [matkhau], [role], [ten]) VALUES (5, N'admin', N'202CB962AC59075B964B07152D234B70', 1, N'Hiệp')
SET IDENTITY_INSERT [dbo].[login] OFF
GO
SET IDENTITY_INSERT [dbo].[phim] ON 

INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (16, N'OBLIVION', N'202010011057229903.jpg', N'https://www.youtube.com/embed/iwTeA8ms17c', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 5)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (17, N'INTO THE WILD', N'202010011056532752.jpg', N'https://www.youtube.com/embed/NGjHKK64lW4', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 6)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (18, N'DIE HARD', N'202010011056158549.jpg', N'https://www.youtube.com/embed/J2gaFzmGDhk', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 7)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (19, N'INTERSTELLAR', N'202010050945166108.jpg', N'https://www.youtube.com/embed/f6lvpv9Md6Y', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 7)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (20, N'BLADE RUNNER', N'202010051107139232.jpg', N'https://www.youtube.com/embed/pPz4FwH-bLA', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 9)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (21, N'MULHOLLAND PRIDE', N'202010041010413452.jpg', N'https://www.youtube.com/embed/PMdnotVSjaA', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 10)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (22, N'INTERSTELLAR', N'202010010953130296.jpg', N'https://www.youtube.com/embed/Ui1xGKrJwnI', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 7)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (23, N'THE REVENAN', N'202010010941236402.jpg', N'https://www.youtube.com/embed/zhktw8EGwno', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (24, N'HARRY POTTER', N'202010051102005940.jpg', N'https://www.youtube.com/embed/ubzFPqk05po', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 10)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (25, N'THE GODFATHER', N'202010051102539513.jpg', N'https://www.youtube.com/embed/cC9EJd9DGnU', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (26, N'GUARDIANS GALAXY', N'202010051104447923.jpg', N'https://www.youtube.com/embed/toLpchTUYk8', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (27, N'BLUE VELVET', N'202010051105186146.jpg', N'https://www.youtube.com/embed/uYUa4SN29RM', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (28, N'SOUTHPAW', N'202010051106064863.jpg', N'https://www.youtube.com/embed/rovLs3lIjyo', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (29, N'JURASSIC PARK', N'202010051059498390.jpg', N'https://www.youtube.com/embed/opji5DgE_nQ', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (30, N'SPECTRE', N'202010051059205705.jpg', N'https://www.youtube.com/embed/k6o0BVbqKII', N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (31, N'STRAGER THINGS', N'202010051058569876.jpg', N'https://www.youtube.com/embed/Vx-E9pzOFPM', N'	Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 5)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (32, N'LA LA LAND', N'202010051058330190.jpg', N'https://www.youtube.com/embed/0_o80MW34OM', N'	Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (33, N'The Call of the Wild', N'202010051104041554.jpg', N'https://www.youtube.com/embed/fvWJcafFerw', N'	Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (34, N'Class of ''83', N'202010051057458475.jpg', N'https://www.youtube.com/embed/fuMC2V2o1Z8', N'	Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (35, N'Deep sea predator  ', N'202010051127027260.jpg', N'https://www.youtube.com/embed/Bhg-Gw953b0', N'	Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
INSERT [dbo].[phim] ([id_phim], [ten_phim], [anh_daidien], [trailer], [mota], [imdb]) VALUES (36, N'Sky Tour  ', N'202010051055366678.jpg', N'https://www.youtube.com/embed/ALKduCWFuyU', N'	Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earths mightiest heroes must come together once again to protect the world from global extinction.', 8)
SET IDENTITY_INSERT [dbo].[phim] OFF
GO
SET IDENTITY_INSERT [dbo].[tapphim] ON 

INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (34, 23, 1, CAST(N'2020-10-04T10:24:26.323' AS DateTime), N'https://www.youtube.com/embed/AU3-bJLAGAQ')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (35, 23, 2, CAST(N'2020-10-04T10:24:31.690' AS DateTime), N'https://www.youtube.com/embed/NMUXQRZmwWY')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (36, 21, 1, CAST(N'2020-10-04T10:24:42.463' AS DateTime), N'https://www.youtube.com/embed/wlv3yW92pEM')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (37, 19, 1, CAST(N'2020-10-04T10:24:47.540' AS DateTime), N'https://www.youtube.com/embed/cRIhhomaRvs?list=PLEyKu1JwbU4vy32kyr6Au2xpMWNnq6MLR')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (38, 19, 2, CAST(N'2020-10-04T10:24:52.990' AS DateTime), N'https://www.youtube.com/embed/JwLY96tfRAA?list=PLEyKu1JwbU4vy32kyr6Au2xpMWNnq6MLR')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (39, 17, 1, CAST(N'2020-10-04T10:24:58.427' AS DateTime), N'https://www.youtube.com/embed/K6tQanJzHFY?list=RDK6tQanJzHFY')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (40, 17, 3, CAST(N'2020-10-04T10:25:09.450' AS DateTime), N'https://www.youtube.com/embed/tGPpwCuFSBI?list=RDK6tQanJzHFY')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (41, 20, 1, CAST(N'2020-10-04T10:25:14.677' AS DateTime), N'https://www.youtube.com/embed/S5lH3PAMZn0?list=RDCMUC0jDoh3tVXCaqJ6oTve8ebA')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (42, 17, 2, CAST(N'2020-10-04T10:25:19.707' AS DateTime), N'https://www.youtube.com/embed/VI27EEoAnJg')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (43, 23, 3, CAST(N'2020-10-05T23:38:36.107' AS DateTime), N'https://www.youtube.com/embed/4gcbe3eqV_E')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (44, 23, 4, CAST(N'2020-10-05T23:38:48.097' AS DateTime), N'https://www.youtube.com/embed/w5kiAjp54Bk')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (45, 23, 5, CAST(N'2020-10-05T23:39:03.200' AS DateTime), N'https://www.youtube.com/embed/buWTFz83Bmc')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (46, 23, 6, CAST(N'2020-10-05T23:39:19.357' AS DateTime), N'https://www.youtube.com/embed/S_sDBCCUUhQ')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (47, 36, 1, CAST(N'2020-10-05T23:40:04.000' AS DateTime), N'https://www.youtube.com/embed/XoW01pIUmRs')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (48, 36, 2, CAST(N'2020-10-05T23:40:07.317' AS DateTime), N'https://www.youtube.com/embed/te38jP73o14')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (49, 36, 3, CAST(N'2020-10-05T23:40:10.830' AS DateTime), N'https://www.youtube.com/embed/4MxCUr6018g')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (50, 36, 4, CAST(N'2020-10-05T23:40:14.780' AS DateTime), N'https://www.youtube.com/embed/ayea2662rfQ')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (51, 36, 5, CAST(N'2020-10-05T23:40:17.967' AS DateTime), N'https://www.youtube.com/embed/CEwGlLO4pyQ')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (52, 35, 1, CAST(N'2020-10-05T23:40:24.670' AS DateTime), N'https://www.youtube.com/embed/ys3vw7mUj_I?list=RDCMUC18JpA0yTH8tmIOa4OegxBw')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (53, 35, 2, CAST(N'2020-10-05T23:40:27.670' AS DateTime), N'https://www.youtube.com/embed/JgDcv5B5mYs?list=RDCMUC18JpA0yTH8tmIOa4OegxBw')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (54, 35, 3, CAST(N'2020-10-05T23:40:31.193' AS DateTime), N'https://www.youtube.com/embed/v_rVb5ChFO4?list=RDCMUC18JpA0yTH8tmIOa4OegxBw')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (55, 35, 4, CAST(N'2020-10-05T23:40:35.693' AS DateTime), N'https://www.youtube.com/embed/03W1qh6bmR4?list=RDCMUC18JpA0yTH8tmIOa4OegxBw')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (56, 35, 5, CAST(N'2020-10-05T23:40:41.750' AS DateTime), N'https://www.youtube.com/embed/x5nvNWiIY1E?list=RDCMUC18JpA0yTH8tmIOa4OegxBw')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (57, 34, 1, CAST(N'2020-10-05T23:40:46.163' AS DateTime), N'https://www.youtube.com/embed/1qevKCgPqIM')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (58, 34, 2, CAST(N'2020-10-05T23:40:50.980' AS DateTime), N'https://www.youtube.com/embed/jm4g0bZGbb8')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (59, 34, 3, CAST(N'2020-10-05T23:40:55.477' AS DateTime), N'https://www.youtube.com/embed/nDpPwfGOaXk')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (60, 34, 4, CAST(N'2020-10-05T23:40:59.763' AS DateTime), N'https://www.youtube.com/embed/gtCaBvXo1yk')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (61, 34, 5, CAST(N'2020-10-05T23:41:04.677' AS DateTime), N'https://www.youtube.com/embed/XmA6LGwk2yk')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (62, 33, 1, CAST(N'2020-10-05T23:41:24.323' AS DateTime), N'https://www.youtube.com/embed/RTN6EecWBkE')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (63, 33, 2, CAST(N'2020-10-05T23:41:29.237' AS DateTime), N'https://www.youtube.com/embed/AcxOHDRRefc')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (64, 33, 3, CAST(N'2020-10-05T23:41:32.500' AS DateTime), N'https://www.youtube.com/embed/1-wDxN6Cq6o')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (65, 33, 4, CAST(N'2020-10-05T23:41:35.747' AS DateTime), N'https://www.youtube.com/embed/Jf_hzqZqyWM')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (66, 32, 1, CAST(N'2020-10-05T23:41:51.150' AS DateTime), N'https://www.youtube.com/embed/ftYYVOpOyb8')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (67, 32, 2, CAST(N'2020-10-05T23:41:57.523' AS DateTime), N'https://www.youtube.com/embed/tU6RA7oA8I4')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (68, 31, 1, CAST(N'2020-10-05T23:42:05.303' AS DateTime), N'https://www.youtube.com/embed/JLziT15oR4Q')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (69, 30, 1, CAST(N'2020-10-05T23:42:22.210' AS DateTime), N'https://www.youtube.com/embed/5_ozB0ImkYA')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (70, 29, 1, CAST(N'2020-10-05T23:42:28.300' AS DateTime), N'https://www.youtube.com/embed/y_6aSG2yfe8')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (71, 28, 1, CAST(N'2020-10-05T23:42:33.060' AS DateTime), N'https://www.youtube.com/embed/y_6aSG2yfe8')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (72, 27, 1, CAST(N'2020-10-05T23:42:41.997' AS DateTime), N'https://www.youtube.com/embed/y_6aSG2yfe8')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (73, 19, 3, CAST(N'2020-10-05T23:43:16.183' AS DateTime), N'https://www.youtube.com/embed/y_6aSG2yfe8')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (75, 18, 1, CAST(N'2020-10-10T16:09:38.960' AS DateTime), N'https://www.youtube.com/embed/ftYYVOpOyb8')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (77, 22, 1, CAST(N'2020-10-10T16:13:24.407' AS DateTime), N'https://www.youtube.com/embed/Jf_hzqZqyWM')
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (78, 24, 1, CAST(N'2020-10-10T16:15:14.180' AS DateTime), NULL)
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (79, 25, 1, CAST(N'2020-10-10T16:16:08.223' AS DateTime), NULL)
INSERT [dbo].[tapphim] ([id_tapphim], [id_phim], [tapso], [ngay_update], [link]) VALUES (80, 26, 1, CAST(N'2020-10-10T16:16:45.010' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tapphim] OFF
GO
SET IDENTITY_INSERT [dbo].[theloai_phim] ON 

INSERT [dbo].[theloai_phim] ([id_theloai], [ten_theloai_phim]) VALUES (1, N'Tình cảm - Lẵng mạn')
INSERT [dbo].[theloai_phim] ([id_theloai], [ten_theloai_phim]) VALUES (2, N'Hài Hước')
INSERT [dbo].[theloai_phim] ([id_theloai], [ten_theloai_phim]) VALUES (3, N'Võ Thuật')
INSERT [dbo].[theloai_phim] ([id_theloai], [ten_theloai_phim]) VALUES (4, N'Kinh Dị')
INSERT [dbo].[theloai_phim] ([id_theloai], [ten_theloai_phim]) VALUES (5, N'Hình Sự')
INSERT [dbo].[theloai_phim] ([id_theloai], [ten_theloai_phim]) VALUES (7, N'Chiến Tranh')
INSERT [dbo].[theloai_phim] ([id_theloai], [ten_theloai_phim]) VALUES (8, N'Cổ Trang')
SET IDENTITY_INSERT [dbo].[theloai_phim] OFF
GO
SET IDENTITY_INSERT [dbo].[tintuc_phim] ON 

INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (7, N'	Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton', N'202010011118113400.jpg', N'	Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton', N'	Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (9, N'Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton', N'202010011127137072.jpg', N'Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton', N'Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (10, N'Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton', N'202010011128349824.jpg', N'Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton', N'Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (11, N'Film Review: ‘Aftermath’', N'202010011124496519.jpg', N'Film Review: ‘Aftermath’', N'Film Review: ‘Aftermath’')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (12, N'King Kong is still a box office giant. ', N'202010011135032905.jpg', N'King Kong is still a box office giant. ', N'King Kong is still a box office giant. ')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (14, N'good morning guy', N'202010011157054161.jpg', N'good morning guy', N'good morning guy')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (15, N'Beauty and the beast', N'202010011159110840.jpg', N'Beauty and the beast', N'Beauty and the beast')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (16, N'Man Down debuted simultaneously', N'202010011159562012.jpg', N'Man Down debuted simultaneously', N'Man Down debuted simultaneously')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (17, N'Loạt phim ''ChúaLoạt phim ''Chúa nhẫn'' sẽ có bản 4K nhẫn'' sẽ có bản 4K', N'202010100334497316.jpg', N'Hãng Warner Bros. sẽ phát hành lại các phim thuộc thương hiệu "Lord of the Rings" và "Hobbit" theo định dạng 4K. ', N'Theo Variety, ngày 7/10, Sean Astin - diễn viên đóng nhân vật Samwise Gamgee - cho biết tác phẩm định dạng mới sẽ ra mắt vào tháng 12, đạo diễn Peter Jackson trực tiếp giám sát quá trình sản xuất. "Với chất lượng hình ảnh mới, người hâm mộ sẽ có trải nghiệm tốt nhất khi thưởng thức loạt phim ngay tại nhà", Astin nói.')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (18, N'Khán giả Pháp chỉ trích phim ''Emily in Paris''', N'202010100337142225.jpg', N'Nhiều nhà phê bình và khán giả cho rằng series "Emily in Paris" xúc phạm và chế giễu văn hóa Pháp. ', N'Tờ 20 Minutes nhận xét: "Mũ nồi, bánh sừng bò, bánh mì, bồi bàn và lễ tân nóng tính, những kẻ lăng nhăng... Bạn có thể kể thêm những định kiến về con người và nước Pháp, chúng đều xuất hiện trong Emily in Paris". Nhà phê bình Charles Martin của tờ Premier đồng quan điểm, cho rằng phim miêu tả người Pháp "xấu tính, lười biếng và không biết đến khái niệm chung thủy".')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (19, N'Phạm Băng Băng đóng phim hành động Hollywood', N'202010100338569781.jpg', N'Phạm Băng Băng vào vai một trong năm nữ điệp viên của "The 355", cùng các sao Hollywood như Jessica Chastain, Lupita Nyong''o. 

', N'Theo Hollywood Reporter, bộ phim kể về nhóm năm điệp viên nữ từ các tổ chức tình báo khác nhau, hợp tác nhằm đoạt lại một loại vũ khí bí mật có thể khơi mào Thế chiến Thứ Ba. Giới bình phim đánh giá tác phẩm chịu ảnh hưởng lớn từ các phim James Bond, Mission Impossible và Bourne.')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (20, N'Tom Hanks lần đầu đóng phim cao bồi', N'202010100340314133.png', N'Tài tử Tom Hanks vào vai cựu binh đối đầu nhiều hiểm nguy ở miền Tây nước Mỹ, trong phim "News of the World". ', N'

Lấy bối cảnh năm 1870, phim xoay quanh Đại úy Jefferson Kyle Kidd (Tom Hanks đóng), một cựu binh chu du vòng quanh thế giới, hành nghề kể chuyện. Tại Texas, Mỹ, ông đồng ý hộ tống cô bé 10 tuổi Johanna (Helena Zengel) về với cô chú ruột. Bộ đôi gặp nhiều hiểm nguy, từ đó nảy sinh tình bạn đẹp giữa miền Tây hoang dã.')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (21, N'Sao ''X-Men'' diễn không kịch bản', N'202010100341429634.jpg', N'James McAvoy, từng đóng "X-Men", diễn ứng biến trong phim mới "My Son" mà không cần kịch bản, lời thoại sẵn. ', N'James McAvoy vào vai người cha đi tìm con mất tích, với sự trợ giúp của vợ cũ (Claire Foy đóng). Theo Hollywood Reporter, McAvoy không được cung cấp kịch bản và lời thoại, chỉ được biết nội dung chính. Diễn viên người Scotland phải ứng biến dựa trên cảnh quay và các nhân vật khác. Adam Fogelson, giám đốc studio sản xuất My Son - STXfilms - cho biết: "James phải tự suy luận, nhằm mang đến kịch tính cho bộ phim".')
INSERT [dbo].[tintuc_phim] ([id_tintuc_phim], [tieu_de], [anh_daidien], [tom_tat_tin], [noidung]) VALUES (22, N'Phim của Thành Long thất bại phòng vé', N'202010100342409099.jpg', N'"Cấp tiên phong" - do Thành Long đóng chính - là phim doanh thu thấp nhất trong dịp lễ Quốc khánh Trung Quốc. ', N'Ra mắt hôm 30/9 sau thời gian hoãn chiếu vì dịch, tính đến hết ngày 6/10, phim đạt doanh thu 200 triệu nhân dân tệ (hơn 686 tỷ đồng) - thấp nhất trong bốn tác phẩm phát hành dịp Quốc khánh nước này (1/10). Trong đó, Tôi và quê hương của tôi đứng đầu với 1,6 tỷ nhân dân tệ (hơn 5,4 nghìn tỷ đồng), phim hoạt hình Khương Tử Nha thu về 1,24 tỷ nhân dân tệ (hơn 4,2 nghìn tỷ) và Vô địch thiên hạ đạt 560 triệu nhân dân tệ (1,9 nghìn tỷ).')
SET IDENTITY_INSERT [dbo].[tintuc_phim] OFF
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_phim] FOREIGN KEY([id_phim])
REFERENCES [dbo].[phim] ([id_phim])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_phim]
GO
ALTER TABLE [dbo].[ctDaodien]  WITH CHECK ADD  CONSTRAINT [FK_ctDaodien_daodien] FOREIGN KEY([id_daodien])
REFERENCES [dbo].[daodien] ([id_daodien])
GO
ALTER TABLE [dbo].[ctDaodien] CHECK CONSTRAINT [FK_ctDaodien_daodien]
GO
ALTER TABLE [dbo].[ctDaodien]  WITH CHECK ADD  CONSTRAINT [FK_ctDaodien_phim] FOREIGN KEY([id_phim])
REFERENCES [dbo].[phim] ([id_phim])
GO
ALTER TABLE [dbo].[ctDaodien] CHECK CONSTRAINT [FK_ctDaodien_phim]
GO
ALTER TABLE [dbo].[ctDienvien]  WITH CHECK ADD  CONSTRAINT [FK_ctDienvien_Dienvien] FOREIGN KEY([id_dienvien])
REFERENCES [dbo].[Dienvien] ([id_Dienvien])
GO
ALTER TABLE [dbo].[ctDienvien] CHECK CONSTRAINT [FK_ctDienvien_Dienvien]
GO
ALTER TABLE [dbo].[ctDienvien]  WITH CHECK ADD  CONSTRAINT [FK_ctDienvien_phim] FOREIGN KEY([id_phim])
REFERENCES [dbo].[phim] ([id_phim])
GO
ALTER TABLE [dbo].[ctDienvien] CHECK CONSTRAINT [FK_ctDienvien_phim]
GO
ALTER TABLE [dbo].[ctlogin]  WITH CHECK ADD  CONSTRAINT [FK_ctlogin_login] FOREIGN KEY([id_login])
REFERENCES [dbo].[login] ([id_login])
GO
ALTER TABLE [dbo].[ctlogin] CHECK CONSTRAINT [FK_ctlogin_login]
GO
ALTER TABLE [dbo].[ctlogin]  WITH CHECK ADD  CONSTRAINT [FK_ctlogin_phim] FOREIGN KEY([id_phim])
REFERENCES [dbo].[phim] ([id_phim])
GO
ALTER TABLE [dbo].[ctlogin] CHECK CONSTRAINT [FK_ctlogin_phim]
GO
ALTER TABLE [dbo].[ctTheloai]  WITH CHECK ADD  CONSTRAINT [FK_ctTheloai_phim] FOREIGN KEY([id_phim])
REFERENCES [dbo].[phim] ([id_phim])
GO
ALTER TABLE [dbo].[ctTheloai] CHECK CONSTRAINT [FK_ctTheloai_phim]
GO
ALTER TABLE [dbo].[ctTheloai]  WITH CHECK ADD  CONSTRAINT [FK_ctTheloai_theloai_phim] FOREIGN KEY([id_theLoai])
REFERENCES [dbo].[theloai_phim] ([id_theloai])
GO
ALTER TABLE [dbo].[ctTheloai] CHECK CONSTRAINT [FK_ctTheloai_theloai_phim]
GO
ALTER TABLE [dbo].[tapphim]  WITH CHECK ADD  CONSTRAINT [FK_tapphim_phim] FOREIGN KEY([id_phim])
REFERENCES [dbo].[phim] ([id_phim])
GO
ALTER TABLE [dbo].[tapphim] CHECK CONSTRAINT [FK_tapphim_phim]
GO
