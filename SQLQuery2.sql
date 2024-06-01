 

﻿USE [rapchieuphim]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPhim] [int] NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayDang] [date] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[DanhGia] [int] NOT NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[id] [int] NOT NULL,
	[TenDanhMuc] [varchar](50) NOT NULL,
	[id_Phim] [int] NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[ghe_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Loai_id] [int] NULL,
	[TringTrang] [bit] NOT NULL,
	[Id_phong] [int] NULL,
	[Id_Ve] [int] NULL,
	[TenGhe] [varchar](50) NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[ghe_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPhong] [int] NULL,
	[NgayChieu] [datetime] NOT NULL,
	[GioBatDau] [varchar](50) NOT NULL,
	[GioKetThuc] [varchar](50) NOT NULL,
	[IdPhim] [int] NULL,
 CONSTRAINT [PK_LichChieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGhe]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGhe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiGhe] [nvarchar](max) NOT NULL,
	[GiaGhe] [float] NOT NULL,
 CONSTRAINT [PK_LoaiGhe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhim]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_LoaiPhim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiDung]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiDung](
	[id] [int] NOT NULL,
	[Id_binhLuan] [int] NULL,
	[Id_TaiKhoan] [int] NULL,
 CONSTRAINT [PK_NoiDung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenPhim] [nvarchar](max) NOT NULL,
	[AnhPhim] [nvarchar](max) NOT NULL,
	[ThoiLuong] [int] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[TinhTrang] [bit] NOT NULL,
	[IdLoaiPhim] [int] NOT NULL,
	[DienVien] [nvarchar](max) NOT NULL,
	[DaoDien] [varchar](max) NOT NULL,
	[NgayCongChieu] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[NamPhatHanh] [varchar](50) NULL,
	[ChatLuong] [varchar](50) NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdRapChieu] [int] NULL,
	[TenPhong] [nvarchar](max) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TrinhTrang] [bit] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RapPhim]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RapPhim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenRapChieu] [nvarchar](50) NOT NULL,
	[TongSoPhong] [int] NOT NULL,
	[ThanhPho] [nvarchar](max) NULL,
	[QuanHuyen] [nvarchar](max) NULL,
	[PhuongXa] [nvarchar](max) NULL,
	[KhungGio] [nvarchar](max) NULL,
 CONSTRAINT [PK_RapChieuPhim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](60) NULL,
	[NgayDangKy] [date] NULL,
	[TinhTrang] [bit] NULL,
	[PhanQuyen] [varchar](50) NULL,
	[id_ThongTin] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTin]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTin](
	[ThongTin_id] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](max) NULL,
	[DiaChi] [varchar](max) NULL,
	[GioiTinh] [nvarchar](max) NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_ThongTin] PRIMARY KEY CLUSTERED 
(
	[ThongTin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 23/11/2023 10:37:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTaiKhoan] [int] NULL,
	[IdRap] [int] NULL,
	[NgayDat] [datetime2](7) NULL,
	[GiaVe] [decimal](18, 2) NULL,
	[Id_LichChieu] [int] NULL,
	[Soluong] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([Id], [IdPhim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (1, 2, N'hay', CAST(N'2023-11-11' AS Date), 0, 0)
INSERT [dbo].[BinhLuan] ([Id], [IdPhim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (2, 6, N'hay', CAST(N'2023-11-11' AS Date), 0, 0)
INSERT [dbo].[BinhLuan] ([Id], [IdPhim], [NoiDung], [NgayDang], [TinhTrang], [DanhGia]) VALUES (3, 10, N'dhfhsif', CAST(N'2023-11-14' AS Date), 0, 0)
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
SET IDENTITY_INSERT [dbo].[Ghe] ON 

INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [Id_Ve], [TenGhe]) VALUES (12, 1, 1, 1, 1109, N'8A')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [Id_Ve], [TenGhe]) VALUES (13, 1, 1, 1, 1105, N'7A')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [Id_Ve], [TenGhe]) VALUES (14, 1, 0, 2, NULL, N'6A')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [Id_Ve], [TenGhe]) VALUES (16, 2, 1, 1, 1102, N'4A')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [Id_Ve], [TenGhe]) VALUES (18, 2, 0, 1, NULL, N'2A')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [Id_Ve], [TenGhe]) VALUES (19, 2, 0, 1, NULL, N'1A')
INSERT [dbo].[Ghe] ([ghe_id], [Loai_id], [TringTrang], [Id_phong], [Id_Ve], [TenGhe]) VALUES (21, 2, 0, 1, NULL, N'AA')
SET IDENTITY_INSERT [dbo].[Ghe] OFF
GO
SET IDENTITY_INSERT [dbo].[LichChieu] ON 

INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (2, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'20:20', N'21:20', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (3, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'21-20', N'11:50', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (4, 1, CAST(N'2021-12-22T00:00:00.000' AS DateTime), N'10:30', N'11:30', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (5, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'21-20', N'11:50', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (6, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (7, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (8, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (9, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (10, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (11, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'20:20', N'21:20', NULL)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (12, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 4)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (13, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'20:20', N'21:20', 4)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (14, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'21-20', N'11:50', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (15, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 11)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (16, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'21-20', N'11:50', 4)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (17, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (18, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'21-20', N'11:50', 4)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (19, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 5)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (20, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 5)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (21, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1021, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 14)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1022, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1023, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 10)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1024, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 10)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1025, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 10)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1026, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'20:20', N'21:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1027, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1028, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1029, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1030, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1031, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1032, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1033, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1034, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1035, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 1035)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1036, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1037, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1038, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1039, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1040, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1041, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1042, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1043, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1044, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1045, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1046, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1047, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1048, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1049, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1050, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1051, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1052, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1053, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1054, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1055, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1056, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1057, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1058, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1059, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1060, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1061, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1062, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1063, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1064, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1065, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1066, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1067, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1068, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1069, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1070, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 10)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1071, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1072, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1073, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1074, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1075, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1076, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1077, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1078, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1079, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1080, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1081, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1082, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1083, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1084, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1085, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1086, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1087, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1088, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1089, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1090, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1091, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1092, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1093, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1094, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1095, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1096, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1097, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1098, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
GO
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1099, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1100, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1101, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1102, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1103, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1104, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1105, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1106, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1107, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1108, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1109, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1110, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1111, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 2)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1112, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1113, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 6)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1114, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1115, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1116, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
INSERT [dbo].[LichChieu] ([Id], [IdPhong], [NgayChieu], [GioBatDau], [GioKetThuc], [IdPhim]) VALUES (1117, 1, CAST(N'2021-12-21T00:00:00.000' AS DateTime), N'19:30', N'20:20', 3)
SET IDENTITY_INSERT [dbo].[LichChieu] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiGhe] ON 

INSERT [dbo].[LoaiGhe] ([Id], [TenLoaiGhe], [GiaGhe]) VALUES (1, N'Vip', 95000)
INSERT [dbo].[LoaiGhe] ([Id], [TenLoaiGhe], [GiaGhe]) VALUES (2, N'Thường', 75000)
SET IDENTITY_INSERT [dbo].[LoaiGhe] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiPhim] ON 

INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (1, N'Hành Động')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (2, N'Siêu Anh Hùng')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (3, N'Hoạt Hình')
INSERT [dbo].[LoaiPhim] ([Id], [TenLoai]) VALUES (4, N'Kinh Dị')
SET IDENTITY_INSERT [dbo].[LoaiPhim] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (2, N' Người Hùng Tia Chớp 1', N'TheFlash.png', 121, N'Người Hùng Tia Chớp Phần 8 Mùa thứ tám của loạt phim truyền hình siêu anh hùng Mỹ The Flash , dựa trên nhân vật Barry Allen / Flash của DC Comics , được công chiếu lần đầu trên The CW vào ngày 16 tháng 11 năm 2021. Phim lấy bối cảnh ở Arrowverse , chia sẻ tính liên tục với phần còn lại loạt phim truyền hình về vũ trụ, và là phần phụ của Arrow . Phần này được sản xuất bởi Berlanti Productions , Warner Bros. Television và DC Entertainment , với Eric Wallace làm người dẫn chương trình', 0, 2, N' Grant Gustin, Candice Patton, Danielle', N' Greg Berlanti,', CAST(N'2021-12-16T00:00:00.000' AS DateTime), CAST(N'2021-12-29T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (3, N'Batman: Người Dơi', N'BatMan.png', 231, N'Người Dơi Trong năm thứ hai chiến đấu với tội phạm, Batman phát hiện ra tham nhũng ở thành phố Gotham , nơi kết nối với gia đình của chính anh ta trong khi đối mặt với một kẻ giết người hàng loạt được gọi là Riddler .', 1, 1, N'Robert Pattinson, Zoë Kravitz, Colin Farrell,', N'Matt Reeves,', CAST(N'2022-01-11T00:00:00.000' AS DateTime), CAST(N'2022-06-23T00:00:00.000' AS DateTime), N'2022', N'FULL HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (4, N'Injustice', N'Injustice.png', 123, N'Injustice Trên một Trái đất thay thế, Joker lừa Superman giết Lois Lane, điều này gây ra một cơn thịnh nộ trong anh hùng. Superman quyết định nắm quyền kiểm soát Trái đất, Batman và các đồng minh của anh ta sẽ phải cố gắng ngăn chặn anh ta.', 1, 1, N'Gillian Jacobs, Laura Bailey,', N': Matt Peters,', CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'2021', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (5, N'Liên Minh Công Lý: Phiên bản của Zack Snyder', N'ZackSnyder.png', 242, N'Liên Minh Công Lý: Phiên bản của Zack Snyder Năm nghìn năm trước, Darkseid và đội quân Parademon của anh ta cố gắng chinh phục Trái đất bằng cách sử dụng ba Hộp Mẹ . Họ bị đánh bại bởi một liên minh của Các vị thần già , Amazons , người Atlantis , con người và Green Lantern , để lại những Hộp Mẹ, được giấu riêng biệt. Hiện tại, cái chết của Superman [b] đã kích hoạt lại Boxes, thu hút Steppenwolf , trung úy thất sủng của Darkseid. Steppenwolf đặt mục tiêu giành lại sự ưu ái của Darkseid bằng cách thu thập các hộp để tạo thành "The Unity", biến Trái đất thành một bản sao của Apokolips, quê hương của họ.', 1, 2, N'Jared Leto, Henry Cavill, Ray Porter, Sergi', N'Zack Snyder,', CAST(N'2021-12-23T00:00:00.000' AS DateTime), CAST(N'2021-12-31T00:00:00.000' AS DateTime), N'2021', N'HD ')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (6, N'Suicide Squad: Biệt Đội Cảm Tử 2', N'SuicideSquad.png', 132, N'Suicide Squad: Biệt Đội Cảm Tử 2 Theo lệnh của sĩ quan tình báo Amanda Waller , mười ba tù nhân từ trại giam Belle Reve — cựu bác sĩ tâm thần Harley Quinn ; Nanaue lai ăn thịt người ; Thuyền trưởng tên trộm người Úc Boomerang ; sát thủ Bloodsport ; Nhà tạo hòa bình cực đoan bạo lực ; metahumans TDK . và Polka-Dot Man ; hacker máy tính Savant ; lính đánh thuê Blackguard ; cựu vận động viên Olympic Javelin ; chiến binh ngoài hành tinh Mongal ; tên cướp điều khiển chuột Ratcher 2 ; và Chồn hình người ăn thịt đồng loại—Đ', 1, 1, N'John Cena, Margot Robbie, Pete Davidson,', N'James Gunn,', CAST(N'2021-11-30T00:00:00.000' AS DateTime), CAST(N'2022-01-06T00:00:00.000' AS DateTime), N'2021', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (7, N' Biệt Đội Cảm Tử', N'thesuicidesquad2021.png', 123, N'Biệt Đội Cảm Tử Trong phim "Biệt Đội Cảm Tử" Suicide Squad là bộ phim được chuyển thể từ truyện tranh DC Comics xoay quanh một đội tội phạm bao gồm những siêu phản diện. Có thể kể đến như Joker, Deadshot, Captain Boomerang, Slipknot, Katana, The Enchantress, Killer Croc, Rick Flag ... và cô nàng "người tình của Joker". Harley Quinn. Họ buộc phải làm việc cho Amanda Waller, một nhân vật quyền lực trong chính phủ. Tất cả những tên tội phạm này đều từng là kẻ thù của Batman.
Xem Biệt Đội Cảm Tử 2', 1, 1, N'Ben Affleck, Will Smith, Jared Leto, Margot', N'David Ayer,', CAST(N'2021-12-09T00:00:00.000' AS DateTime), CAST(N'2021-12-22T00:00:00.000' AS DateTime), N'2016', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (8, N' Siêu Anh Hùng Phá Hoại', N'TheBoys.png', 124, N'Siêu Anh Hùng Phá Hoại (Phần 2) Siêu Anh Hùng Phá Hoại (Phần 2)
1 Trong khi các quan chức Hoa Kỳ thảo luận về những siêu nhân phục vụ với Giám đốc điều hành của Vought Stan Edgar, Noir giết Naqib ở Trung Đông và Homelander chủ trì đám tang của Translucent. Giờ đây, những kẻ đào tẩu bị truy nã với Butcher bị buộc tội giết Stillwell, Hughie ẩn náu dưới một Cửa hàng cầm đồ cùng với Milk, Frenchie và Kimiko trong khi Butcher mất tích. Họ biết rằng một tên khủng bố siêu mạnh v', 1, 2, N'Karl Urban, Jack Quaid, Antony Starr, Erin Moriarty, Dominique Mcelligott, Jessie T. Usher, Laz Alonso, Chace Crawford, Tomer Capon, Nathan Mitchell, Shantel Vansanten, Elisabeth Shue, Aya Cash, Laila Robins, Nicola Correia-Damude, Cameron Crovetti, Karen Fukuhara, C,', N'Eric Kripke,', CAST(N'2021-12-30T00:00:00.000' AS DateTime), CAST(N'2021-12-06T00:00:00.000' AS DateTime), NULL, N' FULL HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (9, N'Aquaman: Đế vương Atlantis', N'Aquaman.png', 123, N'Aquaman: Đế vương Atlantis Aquaman (2017) Arthur Curry biết rằng anh là người thừa kế vương quốc dưới nước Atlantis, anh phải đứng lên lãnh đạo người dân của mình và trở thành anh hùng của thế giới.
Sau các sự kiện của Justice League, Arthur Curry / Aquaman trở lại biển và bắt đầu đảm nhận quyền thừa kế vương quốc Atlantis dưới sự cố vấn của Công chúa Mera. Tuy nhiên, đế chế huyền thoại nhiều năm ẩn mình dưới đáy biển sâu Atlantics sắp trỗi dậy khi Orm quyết tâm chinh phục 7 chủng tộc dưới đáy đại dương để tiêu diệt toàn bộ sự sống trên trái đất. Giữa biển xanh cuộn sóng dữ dội nhất, Aquaman sẽ đương đầu với mọi thứ như thế nào để bảo vệ quê hương và thế giới?', 0, 2, N' Dolph Lundgren, Jason Momoa, Amber Heard', N'James Wan,', CAST(N'2021-12-14T00:00:00.000' AS DateTime), CAST(N'2022-01-04T00:00:00.000' AS DateTime), N'2018', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (10, N' Huyền Thoại Rồng Đen: Scorpion Báo Thù', N'Scorpion.png', 123, N'Huyền Thoại Rồng Đen: Scorpion Báo Thù Tại Nhật Bản , đại kiện tướng Shirai Ryu Hanzo Hasashi và cậu con trai nhỏ Satoshi bị phục kích trên đường về nhà bởi một vài ninja từ gia tộc đối thủ Lin Kuei. Hasashi giết tất cả bọn họ sau khi phát hiện ra Lin Kuei đã tàn sát phần còn lại của Shirai Ryu, bao gồm cả vợ Harumi. Sub-Zero của Lin Kuei xuất hiện, sử dụng khả năng đóng băng của mình để kiềm chế Hanzo trong băng và sau đó giết chết Satoshi. Sau đó, anh ta đâm Hanzo qua cổ bằng một cột băng, giết chết anh ta. Sâu bên dưới sâu thẳm của Netherrealm, Hasashi được hồi sinh một cách bí ẩn và gặp gỡ thầy phù thủy Quan C', 1, 1, N'ennifer Carpenter, Joel Mchale, Ike Amadi, Steve Blum, Artt Butler, Darin De Paul, Robin Atkin Downes, Grey Griffin, Kevin Michael Richardson, Jordan Rodrigues, Patrick Seitz, Fred Tatasciore, Dave B. Mitchell,', N'dc', CAST(N'2021-12-22T00:00:00.000' AS DateTime), CAST(N'2021-12-14T00:00:00.000' AS DateTime), N'2020', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (11, N' Batman: Kỵ Sĩ Bóng Đêm', N'Batman2.png', 152, N'Batman: Kỵ Sĩ Bóng Đêm Kỵ sỹ bóng đêm (The Dark Knight) là một bộ phim siêu anh hùng do Christopher Nolan làm đạo diễn và đồng kịch bản năm 2008. Dựa trên nhân vật Batman của hãng truyện tranh DC Comics, bộ phim này là một phần của loạt 3 phim Batman do Christopher Nolan đạo diễn và là phần tiếp theo của bộ phim Huyền thoại Người Dơi (Batman Begins) sản xuất năm 2005. Christian Bale tiếp tục thủ vai chính Batman trong phim. Bộ phim tập trung vào cuộc chiến giữa Batman và kẻ thù mới: Joker (Heath Ledger), mối quan hệ của anh với c', 1, 2, N'Christian Bale, Heath Ledger,', N'Christopher Nolan,', CAST(N'2021-12-02T00:00:00.000' AS DateTime), CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'2020', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (12, N' Người Batman: Dơi Xuất Hiện', N'Batman3.png', 123, N'Người Dơi Xuất Hiện Batman Begins là bộ phim siêu anh hùng dựa trên nhân vật giả tưởng trong truyện tranh của DC Comics là Batman, được đạo diễn bởi Christopher Nolan. Với Christian Bale trong vai Batman cùng với dàn diễn viên Michael Caine, Liam Neeson, Katie Holmes, Gary Oldman, và Morgan Freeman. Phim reboot lại series phim về Batman, kể câu chuyện về nguồn gốc nhân vật, từ nỗi sợ hãi ban đầ', 1, 2, N'Michael Caine, Christian Bale,', N'Christopher Nolan,', CAST(N'2021-12-07T00:00:00.000' AS DateTime), CAST(N'2021-12-31T00:00:00.000' AS DateTime), N'2005', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (13, N'LEGO DC Liên Minh Công Lý: Đại Chiến Thiên Hà', N'LEGODC.png', 123, N'LEGO DC Liên Minh Công Lý: Đại Chiến Thiên Hà Justice League: Brainiac Machine, Lego DC Comics Super Heroes: Justice League Cosmic Clash 2016 Liệu Justice League có thể chống lại cỗ máy làm cong thời gian? Cho đến nay, Justice League đã chiến thắng mọi kẻ thù dám tuyên chiến với chúng. Lần này, họ phải đối mặt với Brainiac, một cỗ máy bất khả xâm phạm cực kỳ thông minh đang làm hại tất cả sự sống trên thế giới. Brainiac đã gửi Superman, Wonder Woman và Green Lantern đến những nơi khác nhau trong những thời điểm khác nhau, còn Batman và The Flash đang cố gắng thiết lập lại Justice League và chống lại cỗ má', 1, 3, N'Troy Baker, Nolan North, Grey Griffin,', N'Rick Morales,', CAST(N'2021-12-03T00:00:00.000' AS DateTime), CAST(N'2021-12-30T00:00:00.000' AS DateTime), N'2016', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (14, N' Người Đàn Ông Thép', N'Superman.png', 124, N'Người Đàn Ông Thép Man of Steel, Man Of Steel, Super Man of Steel (Siêu Nhân) - Man of Steel xoay quanh câu chuyện về một chàng trai trẻ tên là Clark Kent, anh ta là một người ngoài hành tinh được đưa đến Trái Đất và được một cặp vợ chồng bắt lấy. Jonathan - Martha nuôi dưỡng. Khi Trái đất bị tấn công bởi các thế lực siêu nhiên, Clark Kent trở thành anh hùng Superman bảo vệ người dân.', 1, 2, N'Henry Cavill, Amy Adams, Michael Shannon,', N': Zack Snyder,', CAST(N'2021-12-05T00:00:00.000' AS DateTime), CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'2021', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (1032, N'Cương Thi Tiên Sinh 1', N'Cuongthi.png', 96, N'Cái bóng của luật nhân quả chưa bao giờ bỏ qua ai. Dù là việc tốt, hay việc xấu ta đảm bảo sẽ không ai thoát được. Đây là điều mà Địa Vương luôn nói với mọi người, nhưng nhiều người không hiểu, dù ngài ấy dưới danh nghĩa một Thanchai (Người có dòng máu hoàng tộc) thích nói nhưng lời cảnh cáo người khác phải gìn giữ linh hồn, và phải phán xử việc làm của mọi người lúc họ còn sống.', 1, 4, N'Chin Siu-hoLam Ching-yingMoon LeeRicky HuiWong Siu-fung', N'Ricky Lau', CAST(N'1985-11-07T00:00:00.000' AS DateTime), CAST(N'1992-09-12T00:00:00.000' AS DateTime), N'1985', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (1033, N'Ngôi nhà chết chóc – Dream Home 2010', N'Dreamhome.png', 108, N'Ngôi nhà chết chóc  Tại Hồng Kông, Cheng Lai-sheung (Josie Ho) làm hai công việc với hy vọng kiếm đủ tiền để mua căn hộ của riêng mình với tầm nhìn ra Bến cảng Victoria. [3] [4] Theo thứ tự thời gian hỗn hợp, chúng ta thấy những cảnh trong quá khứ của Lai-sheung. Trong thời thơ ấu của cô, gia đình và bạn bè của cô bị đuổi khỏi nhà thuê giá rẻ của họ để các chủ đầu tư xây dựng những căn hộ đắt tiền. Sau này khi lớn lên, cô thề sẽ mua cho cha và mẹ một căn hộ mới, nhưng không thể thực hiện được lời hứa của mình trước khi mẹ cô qua đời.', 1, 4, N'Derek TsangEason ChanJosie HoJuno MakLawrence ChouMichelle YeNorman ChuiWong Ching', N'Pang Ho-cheung', CAST(N'2010-05-12T00:00:00.000' AS DateTime), CAST(N'2018-04-14T00:00:00.000' AS DateTime), N'2010', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (1035, N'Câu chuyện lúc nửa đêm – Goosebumps 2015', N'Goosebumps.png', 105, N'Câu chuyện lúc nửa đêm Sau cái chết của cha, Zach Cooper và mẹ Gale chuyển từ Thành phố New York đến thị trấn nhỏ Madison, Delaware. Đang định cư trong khu phố, Zach gặp người hàng xóm Hannah, người mà người cha bảo bọc quá mức của anh ta đã bảo anh tránh xa.

Sáng hôm sau tại trường trung học địa phương, nơi Gale được giới thiệu là hiệu phó mới, Zach kết bạn với Champ, một học sinh nhát gan nhưng thân thiện. Đêm đó, Hannah mời Zach đến một công viên giải trí bỏ hoang, nơi họ làm quen với nhau. Khi trở về nhà, cha của Hannah một lần nữa cảnh báo anh nên tránh xa.', 1, 4, N'Amy RyanDylan MinnetteJack BlackJillian BellOdeya RushRyan Lee', N'Rob Letterman', CAST(N'2015-03-12T00:00:00.000' AS DateTime), CAST(N'2021-04-30T00:00:00.000' AS DateTime), N'2015', N'HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (1036, N'
Tây Hành Kỷ – Ám Ảnh Ma Thành', N'Taydu.png', 77, N'“Tây Hành Kỷ – Ám Ảnh Ma Thành” kể về vị thành chủ thành Ám Ảnh Ma Anh, người đứng đầu Ám Ảnh Ma Thành, vì khống chế Đường Tam Tạng để cướp lấy Vĩnh Hằng Chi Hỏa, sử dụng năng lực ma thành có thể thỏa mãn tất cả dục vọng dẫn ra tâm ma của Đường Tam Tạng. Cuối cùng, Đường Tam Tạng vượt qua tâm ma, một lần nữa thức tỉnh, hắn cùng đồ đệ liên thủ đánh bại Ma Anh, tan rã ma thành gây họa một phương, một lần nữa bắt tay vào hành trình cứu vớt thiên hạ thương sinh.', 1, 3, N'Đang cập nhật', N'Ðang c?p nh?t', CAST(N'2023-10-30T00:00:00.000' AS DateTime), CAST(N'2028-05-26T00:00:00.000' AS DateTime), N'2023', N'FULL HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (1039, N'Na Tra: Ma Đồng Giáng Thế', N'Natra.png', 110, N'Từ thuở xa xưa, tinh hoa đất trời hội tụ thành một viên ngọc chứa đựng năng lượng khổng lồ. Nguyên Thủy Thiên Tôn đã phân tách viên ngọc này thành 1 viên Linh Châu và 1 viên Ma Hoàn. Viên Linh Châu sẽ đầu thai thành một anh hùng cứu thế, phò trợ nhà Chu. Trong khi đó, Ma Hoàn sẽ tạo ra một Ma Vương tàn sát thiên hạ. Để ngăn chặn thảm họa, Nguyên Thủy Thiên Tôn đã hạ chú để sau 3 năm Ma Vương sẽ bị Thiên kiếp tiêu diệt. Liệu Na Tra có đủ sức để thay đổi Thiên mệnh?', 1, 3, N'Đang cập nhật', N'Ðang c?p nh?t', CAST(N'2019-09-23T00:00:00.000' AS DateTime), CAST(N'2026-06-13T00:00:00.000' AS DateTime), N'2019', N'FULL HD')
INSERT [dbo].[Phim] ([Id], [TenPhim], [AnhPhim], [ThoiLuong], [MoTa], [TinhTrang], [IdLoaiPhim], [DienVien], [DaoDien], [NgayCongChieu], [NgayKetThuc], [NamPhatHanh], [ChatLuong]) VALUES (1041, N'
Tần Thời Minh Nguyệt : Long Đằng Vạn Lý', N'TTMNK.png', 180, N'Thiên Minh, Thiếu Vũ có duyên gặp mặt và vô tình bị cuốn vào âm mưu chiếm đoạt báu vật thượng cổ: Long Hồn của Tần Thủy Hoàng. Nhóm Cái Nhiếp, Thiên Minh, Thiếu Vũ được dẫn đường bởi thiếu nữ xinh đẹp, bí ẩn vượt qua không gian và thời gian tiến vào cổ thành 2000 năm về trước nơi có các thế lực đáng sợ đang thức tỉnh. Đối mặt với muôn trùng thử thách, liệu bọn họ có thể xoay chuyển càn khôn, cứu vớt con người khỏi kiếp nạn..', 1, 3, N'Đang cập nhật', N'Ðang c?p nh?t', CAST(N'2014-07-24T00:00:00.000' AS DateTime), CAST(N'2024-05-30T00:00:00.000' AS DateTime), N'2014', N'FULL HD')
SET IDENTITY_INSERT [dbo].[Phim] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([Id], [IdRapChieu], [TenPhong], [SoLuong], [TrinhTrang], [MoTa]) VALUES (1, 2, N'Phong VIP 1', 13, 0, N'Phòng Cao Cấp')
INSERT [dbo].[Phong] ([Id], [IdRapChieu], [TenPhong], [SoLuong], [TrinhTrang], [MoTa]) VALUES (2, 6, N'Phòng VIP 2', 12, 1, N'Phòng cao cấp')
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[RapPhim] ON 

INSERT [dbo].[RapPhim] ([Id], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [KhungGio]) VALUES (1, N'Cinestar Quốc Thanh ', 14, N'HCM', N'Q12', N'Tây hòa', NULL)
INSERT [dbo].[RapPhim] ([Id], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [KhungGio]) VALUES (2, N'DCINE Bến Thành ', 12, N'HN', N'Mỹ Đình', NULL, NULL)
INSERT [dbo].[RapPhim] ([Id], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [KhungGio]) VALUES (4, N'Galaxy Nguyễn Du', 12, N'HCM', N'Q1', NULL, NULL)
INSERT [dbo].[RapPhim] ([Id], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [KhungGio]) VALUES (5, N'Rap Đông Đa', 12, N'HN', N'HN', NULL, NULL)
INSERT [dbo].[RapPhim] ([Id], [TenRapChieu], [TongSoPhong], [ThanhPho], [QuanHuyen], [PhuongXa], [KhungGio]) VALUES (6, N'Rap Hoang Mai', 12, N'Hà Nội', N'Long Biên', N'Xa ', N'7:30-21:29')
SET IDENTITY_INSERT [dbo].[RapPhim] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (1, N'admin@gmail.com', N'12345678', CAST(N'2020-09-12' AS Date), 1, N'ADMIN', 1)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (8, N'test@gmail.com', N'1234', CAST(N'2021-12-04' AS Date), 1, N'USER', 2)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (9, N'a@gmail.com', N'1234', CAST(N'2022-01-21' AS Date), 0, N'USER', 4)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (10, N'b@@gmail.com', N'1234', CAST(N'2022-01-25' AS Date), 1, N'USER', 5)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (11, N'c@gmail.com', N'1234', CAST(N'2022-01-25' AS Date), 1, N'USER', 6)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [NgayDangKy], [TinhTrang], [PhanQuyen], [id_ThongTin]) VALUES (12, N'd@gail.com', N'1234', CAST(N'2022-01-25' AS Date), 1, N'USER', 7)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongTin] ON 

INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (1, N'Trần Anh Hiển', N'HCM', N'Nam', CAST(N'2020-12-20T00:00:00.000' AS DateTime), N'admin@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (2, N'Nguyễn Van A', N'HN', N'Nữ', CAST(N'2020-12-11T00:00:00.000' AS DateTime), N'test@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (4, N'Nguyễn Văn B', N'Ð?ng Nai', N'Nam', CAST(N'2022-01-21T11:24:22.393' AS DateTime), N'a@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (5, N'Nguyễn Văn C', N'Bình Duong', N'Nam', CAST(N'2022-01-25T20:47:49.280' AS DateTime), N'b@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (6, N'Nguyễn văn D', N'Thái Bình', N'Nữ', CAST(N'2022-01-25T20:54:30.207' AS DateTime), N'c@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (7, N'Nguyễn văn E', N'Nam Ð?nh', N'Nữ', CAST(N'2022-01-25T21:13:07.863' AS DateTime), N'd@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (1008, N'Nguyễn Văn G', N'Bình Phu?c', NULL, CAST(N'2023-04-29T10:05:10.767' AS DateTime), N'e@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (1009, N'hien', NULL, NULL, CAST(N'2023-06-02T23:30:46.690' AS DateTime), N'a@gmail.com')
INSERT [dbo].[ThongTin] ([ThongTin_id], [TenNguoiDung], [DiaChi], [GioiTinh], [NgaySinh], [Email]) VALUES (1010, N'hien', NULL, NULL, CAST(N'2023-06-02T23:33:07.183' AS DateTime), N'a@gmail.com')
SET IDENTITY_INSERT [dbo].[ThongTin] OFF
GO
SET IDENTITY_INSERT [dbo].[Ve] ON 

INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1100, 1, 1, CAST(N'2023-06-10T16:13:00.7873146' AS DateTime2), CAST(95000.00 AS Decimal(18, 2)), 1108, 1)
INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1101, 8, 1, CAST(N'2023-06-10T16:45:24.2562111' AS DateTime2), CAST(380000.00 AS Decimal(18, 2)), 1109, 4)
INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1102, 1, 1, CAST(N'2023-06-10T17:37:54.1717186' AS DateTime2), CAST(675000.00 AS Decimal(18, 2)), 1110, 9)
INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1103, 1, 1, CAST(N'2023-06-11T14:09:24.3462423' AS DateTime2), CAST(475000.00 AS Decimal(18, 2)), 1111, 5)
INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1104, 1, 2, CAST(N'2023-06-16T14:54:39.8375901' AS DateTime2), CAST(665000.00 AS Decimal(18, 2)), 1112, 7)
INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1105, 1, 2, CAST(N'2023-06-16T14:54:39.9632522' AS DateTime2), CAST(665000.00 AS Decimal(18, 2)), 1113, 7)
INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1106, 1, 1, CAST(N'2023-06-16T15:00:08.3526329' AS DateTime2), CAST(665000.00 AS Decimal(18, 2)), 1114, 7)
INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1107, 1, 4, CAST(N'2023-06-16T15:09:59.6582598' AS DateTime2), CAST(760000.00 AS Decimal(18, 2)), 1115, 8)
INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1108, 1, 1, CAST(N'2023-10-12T03:25:53.9277305' AS DateTime2), CAST(95000.00 AS Decimal(18, 2)), 1116, 1)
INSERT [dbo].[Ve] ([Id], [IdTaiKhoan], [IdRap], [NgayDat], [GiaVe], [Id_LichChieu], [Soluong]) VALUES (1109, 1, 1, CAST(N'2023-10-12T03:26:25.5847471' AS DateTime2), CAST(95000.00 AS Decimal(18, 2)), 1117, 1)
SET IDENTITY_INSERT [dbo].[Ve] OFF
GO
ALTER TABLE [dbo].[Phong] ADD  CONSTRAINT [DF__Phong__Daxoa__4BAC3F29]  DEFAULT (CONVERT([bit],(0),(0))) FOR [TrinhTrang]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_Phim] FOREIGN KEY([IdPhim])
REFERENCES [dbo].[Phim] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_Phim]
GO
ALTER TABLE [dbo].[DanhMuc]  WITH CHECK ADD  CONSTRAINT [FK_DanhMuc_Phim] FOREIGN KEY([id_Phim])
REFERENCES [dbo].[Phim] ([Id])
GO
ALTER TABLE [dbo].[DanhMuc] CHECK CONSTRAINT [FK_DanhMuc_Phim]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LoaiGhe] FOREIGN KEY([Loai_id])
REFERENCES [dbo].[LoaiGhe] ([Id])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_LoaiGhe]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Phong] FOREIGN KEY([Id_phong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_Phong]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Ve] FOREIGN KEY([Id_Ve])
REFERENCES [dbo].[Ve] ([Id])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_Ve]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_Phim] FOREIGN KEY([IdPhim])
REFERENCES [dbo].[Phim] ([Id])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_Phim]
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_Phong] FOREIGN KEY([IdPhong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_Phong]
GO
ALTER TABLE [dbo].[NoiDung]  WITH CHECK ADD  CONSTRAINT [FK_Bl_TK] FOREIGN KEY([Id_binhLuan])
REFERENCES [dbo].[BinhLuan] ([Id])
GO
ALTER TABLE [dbo].[NoiDung] CHECK CONSTRAINT [FK_Bl_TK]
GO
ALTER TABLE [dbo].[NoiDung]  WITH CHECK ADD  CONSTRAINT [FK_TK_BL] FOREIGN KEY([Id_TaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[NoiDung] CHECK CONSTRAINT [FK_TK_BL]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_LoaiPhim] FOREIGN KEY([IdLoaiPhim])
REFERENCES [dbo].[LoaiPhim] ([Id])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_LoaiPhim]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_Rap] FOREIGN KEY([IdRapChieu])
REFERENCES [dbo].[RapPhim] ([Id])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_Rap]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_ThongTin] FOREIGN KEY([id_ThongTin])
REFERENCES [dbo].[ThongTin] ([ThongTin_id])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_ThongTin]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LichChieu] FOREIGN KEY([Id_LichChieu])
REFERENCES [dbo].[LichChieu] ([Id])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_LichChieu]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Rap] FOREIGN KEY([IdRap])
REFERENCES [dbo].[RapPhim] ([Id])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Rap]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_TaiKhoan] FOREIGN KEY([IdTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_TaiKhoan]
GO
