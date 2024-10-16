USE [master]
GO
/****** Object:  Database [NhaSach]    Script Date: 11/18/2023 1:15:58 PM ******/
CREATE DATABASE [NhaSach]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NhaSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NhaSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NhaSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NhaSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NhaSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NhaSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [NhaSach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NhaSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NhaSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NhaSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NhaSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NhaSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NhaSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NhaSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NhaSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NhaSach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NhaSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NhaSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NhaSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NhaSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NhaSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NhaSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NhaSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NhaSach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NhaSach] SET  MULTI_USER 
GO
ALTER DATABASE [NhaSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NhaSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NhaSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NhaSach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NhaSach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NhaSach] SET QUERY_STORE = ON
GO
ALTER DATABASE [NhaSach] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [NhaSach]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/18/2023 1:15:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 11/18/2023 1:15:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaDH] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDH] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 11/18/2023 1:15:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DH] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KH]    Script Date: 11/18/2023 1:15:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KH](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[DienThoai] [varchar](11) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_KH] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 11/18/2023 1:15:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
 CONSTRAINT [PK_NXB] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 11/18/2023 1:15:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](100) NULL,
	[Gia] [decimal](18, 0) NULL,
	[KichThuoc] [varchar](20) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](50) NULL,
	[NamXB] [int] NULL,
	[SoLuongTon] [int] NULL,
	[MaTL] [int] NULL,
	[MaTG] [int] NULL,
	[MaNXB] [int] NULL,
	[Sale] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TG]    Script Date: 11/18/2023 1:15:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TG](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](50) NULL,
 CONSTRAINT [PK_TG] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TL]    Script Date: 11/18/2023 1:15:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TL](
	[MaTL] [int] IDENTITY(1,1) NOT NULL,
	[TenTL] [nvarchar](50) NULL,
 CONSTRAINT [PK_TL] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'123')
GO
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (23, 2, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (23, 3, 1, CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (24, 2, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (24, 3, 1, CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (24, 5, 2, CAST(18000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (25, 2, 2, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (25, 3, 1, CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (25, 4, 1, CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (28, 3, 1, CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (29, 3, 1, CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (30, 3, 1, CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (31, 3, 1, CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (33, 3, 1, CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSach], [SoLuong], [Gia]) VALUES (34, 3, 1, CAST(13000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (23, CAST(N'2023-11-17T19:07:00.647' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (24, CAST(N'2023-11-18T12:56:04.053' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (25, CAST(N'2023-11-18T13:01:59.723' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (26, CAST(N'2023-11-18T13:02:03.903' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (27, CAST(N'2023-11-18T13:02:14.313' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (28, CAST(N'2023-11-18T13:03:51.677' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (29, CAST(N'2023-11-18T13:04:55.853' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (30, CAST(N'2023-11-18T13:07:05.910' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (31, CAST(N'2023-11-18T13:07:56.883' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (32, CAST(N'2023-11-18T13:08:00.783' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (33, CAST(N'2023-11-18T13:09:44.820' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (34, CAST(N'2023-11-18T13:10:15.413' AS DateTime), NULL, 12)
INSERT [dbo].[DonHang] ([MaDH], [NgayDat], [NgayGiao], [MaKH]) VALUES (35, CAST(N'2023-11-18T13:10:18.600' AS DateTime), NULL, 12)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KH] ON 

INSERT [dbo].[KH] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiaChi], [DienThoai], [NgaySinh]) VALUES (12, N'Trí Thắng', N'Thắng', N'123456', N'Thang@gmail.com', N'123 đường 9', N'0123456888', CAST(N'2003-03-31T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KH] OFF
GO
SET IDENTITY_INSERT [dbo].[NXB] ON 

INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (1, N'NXB Giáo Dục Việt Nam')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (2, N'Kim Đồng')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (3, N'NXB Trẻ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (4, N'NXB Hội Nhà Văn')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (5, N'NXB Tổng Hợp TPHCM')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (6, N'Cambridge University')
SET IDENTITY_INSERT [dbo].[NXB] OFF
GO
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (1, N'Giải Tích 12', CAST(10000 AS Decimal(18, 0)), N'17x24', NULL, N'1.png', 2017, 3, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (2, N'Hình Học 12', CAST(10000 AS Decimal(18, 0)), N'17x24', NULL, N'2.png', 2017, 6, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (3, N'Văn Học 12 tập 1', CAST(13000 AS Decimal(18, 0)), N'17x24', NULL, N'3.png', 2017, 2, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (4, N'Văn Học 12 tập 2', CAST(13000 AS Decimal(18, 0)), N'17x24', NULL, N'4.png', 2017, 1, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (5, N'Vật Lý 12', CAST(18000 AS Decimal(18, 0)), N'17x24', NULL, N'5.png', 2017, 4, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (6, N'Hóa Học 12', CAST(17000 AS Decimal(18, 0)), N'17x24', NULL, N'6.png', 2017, 1, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (7, N'Lịch Sử 12 ', CAST(12000 AS Decimal(18, 0)), N'17x24', NULL, N'7.png', 2017, 7, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (8, N'Địa Lý 12 ', CAST(17000 AS Decimal(18, 0)), N'17x24', NULL, N'8.png', 2017, 9, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (9, N'Công Nghệ 12', CAST(10000 AS Decimal(18, 0)), N'17x24', NULL, N'9.png', 2017, 16, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (10, N'Tiếng Anh 12', CAST(15000 AS Decimal(18, 0)), N'17x24', NULL, N'10.png', 2017, 2, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (11, N'Sinh Học 12', CAST(12000 AS Decimal(18, 0)), N'17x24', NULL, N'11.png', 2017, 8, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (12, N'Tin Học 12', CAST(10000 AS Decimal(18, 0)), N'17x24', NULL, N'12.png', 2017, 20, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (13, N'Giáo Dục Công Dân ', CAST(8000 AS Decimal(18, 0)), N'17x24', NULL, N'13.png', 2017, 18, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (14, N'Bộ Sách Giáo Khoa Lớp 12', CAST(130000 AS Decimal(18, 0)), NULL, NULL, N'14.png', NULL, 2, 1, 1, 1, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (15, N'Doraemon - Tập 1', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vươn tới những tầm cao.', N'15.png', 2009, 12, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (16, N'Doraemon - Tập 2', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vươn tới những tầm cao.', N'16.png', 2009, 22, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (17, N'Doraemon - Tập 3', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vươn tới những tầm cao.', N'17.png', 2009, 3, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (18, N'Doraemon - Tập 4', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vươn tới những tầm cao.', N'18.png', 2009, 6, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (19, N'Doraemon - Tập 5', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vươn tới những tầm cao.', N'19.png', 2009, 5, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (20, N'Doraemon - Tập 6', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Những câu chuyện về chú mèo máy thông minh Doraemon và nhóm bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa chúng ta bước vào thế giới hồn nhiên, trong sáng đầy ắp tiếng cười với một kho bảo bối kì diệu - những bảo bối biến ước mơ của chúng ta thành sự thật. Nhưng trên tất cả Doraemon là hiện thân của tình bạn cao đẹp, của niềm khát khao vươn tới những tầm cao.', N'20.png', 2009, 11, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (21, N'Doraemon - Chú Khủng Long Của Nobita', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Chú khủng long của Nobita” là tác phẩm mở đầu cho xêri Doraemon truyện dài, và đã được chuyển thể thành phim hoạt hình. Trong tác phẩm này, 5 người nhóm bạn Doraemon đã ngược dòng thời gian, trở về thế giới khủng long Kỉ Bạch Á. Tất cả đã sát cánh bên nhau trải qua bao nhiêu sóng gió hiểm nguy để bảo vệ chú khủng long mới nở Pisuke.', N'21.png', 2013, 4, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (22, N'Doraemon - Nobita Ở Vương Quốc Chó Mèo', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Truyện kể về tình bạn gắn bó giữa cậu bé Nobita loài người và chú chó Ichi, sau 1000 năm xa cách cả hai vẫn không quên người kia. Ở thế giới của mình, Nobita đã nhặt được một chú chó con đáng yêu và đặt tên là Ichi, không bao lâu sau Nobita và các bạn của mình phát hiện rất nhiều chó mèo bị bỏ rơi. Nobita đã dùng cỗ máy thời gian của Doraemon để đưa tất cả về quá khứ. Lúc Nobita, Doraemon và các bạn của mình quay lại thăm Ichi  thì bị cuốn vào một cơn lốc xoáy thời gian khiến thời gian thay đổi - cả bọn bước vào thế giới chó mèo 1000 năm sau. Trải qua nhiều khó khăn và biến cố cùng với nhau, Nobita cùng Ichi cuối cùng đã nhận ra nhau.', N'22.png', 2013, 5, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (23, N'Doraemon - Nobita Và Vương Quốc Robot', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Cuộc chiến ở xứ sở robot là một chuyến phiêu lưu đáng nhớ của nhóm bạn. Chuyện bắt đầu từ thói vòi vĩnh của Nobita khi cậu muốn sở hữu một con robot. Sau khi táy máy đặt hàng, 100 con robot các loại từ thế giới tương lai được gửi tới và gây biết bao rắc rối. May mắn là Doremon sau đó đã gửi trả lại được hết toàn bộ. Nhưng cả nhóm không thể ngờ được rằng, sau đó vẫn sót lại một cậu bé robot. Và càng bất ngờ hơn, đó không phải là sản phẩm đến từ trái đất…', N'23.png', 2013, 7, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (24, N'Doraemon - Nobita Và Ba Chàng Hiệp Sĩ Mộng Mơ', CAST(19800 AS Decimal(18, 0)), N'11,3x17,6', N'Lần này, nhóm bạn Nobita sẽ trở thành những chàng hiệp sĩ trong thế giới mộng mơ và chiến đấu vô cùng anh dũng. Thế giới mộng mơ đang bị bọn yêu quái tà ma thống trị… Liệu Nobita và các bạn có tiêu diệt được binh đoàn yêu ma để đem lại sự bình yên cho thế giới này hay không… chúng ta cùng theo dõi nhé!', N'24.png', 2013, 1, 2, 2, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (25, N'Thám Tử Lừng Danh Conan - Tập 1', CAST(22500 AS Decimal(18, 0)), N'11,3x17,6', N'Kudo Shinichi là một cậu thám tử học sinh năng nổ với biệt tài suy luận có thể sánh ngang với Sherlock Holmes! Một ngày nọ, khi mải đuổi theo những kẻ khả nghi, cậu đã bị chúng cho uống một loại thuốc kì lạ khiến cho cơ thể bị teo nhỏ. Vậy là một thám tử tí hon xuất hiện với cái tên giả: Edogawa Conan!!', N'25.png', 2006, 8, 2, 3, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (26, N'Thám Tử Lừng Danh Conan - Tập 2', CAST(22500 AS Decimal(18, 0)), N'11,3x17,6', N'Conan đã quyết định ở nhờ tại văn phòng thám tử Kogoro, bố của Mori Ran - bạn gái cậu, để lần theo tung tích tổ chức bí ẩn kia. Nhằm tránh con mắt người đời, hàng ngày cậu đến trường như một học sinh cấp 1 bình thường. Và với tài suy luận lừng danh của mình, cậu vẫn đứng đằng sau ông bác thám tử "gà mờ" Mori Kogoro phá giải những vụ án hóc búa một cách tài tình!!', N'26.png', 2006, 16, 2, 3, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (27, N'Thám Tử Lừng Danh Conan - Tập 3', CAST(22500 AS Decimal(18, 0)), N'11,3x17,6', N'Một học sinh cấp 3 bỗng chốc biến thành cậu bé cấp 1!! Mọi việc trở nên khó khăn, nhưng dòng máu thám tử trong tôi vẫn sục sôi, giúp tôi tiếp tục chinh phục những vụ án mới!! Nhưng bạn biết không, để giữ kín thân phận của mình tôi đã phải khổ sở lắm đó!! Tôi là : EDOGAWA CONAN - Thám tử nhí lừng danh!!', N'27.png', 2006, 11, 2, 3, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (28, N'Thám Tử Lừng Danh Conan - Tập 4', CAST(22500 AS Decimal(18, 0)), N'11,3x17,6', N'Người nhỏ nhưng trí tuệ thì không nhỏ tẹo nào đâu nhé!! Bằng chứng là một loạt những bí ẩn đều lần lượt được tôi khám phá ra hết! Nhưng ước gì tôi sớm quay trở lại hình dạng ban đầu để lật tẩy danh tính bọn người mặc áo đen. Cũng là để được gặp lại Ran nữa!! Tôi là EDOGAWA CONAN - Thám tử lừng danh!', N'28.png', 2006, 1, 2, 3, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (29, N'Thám Tử Lừng Danh Conan - Tập 5', CAST(22500 AS Decimal(18, 0)), N'11,3x17,6', N'Shinichi thật tâm không muốn Ran vì mình mà bị liên lụy. Cậu phải lảng tránh mỗi lần Ran hỏi về bố mẹ mình. Đúng lúc, một người đàn bà mặc đồ đen xuất hiện trước cửa nhà ông Mori tự xưng là mẹ của Conan và xin dẫn cháu về! Vẫn chưa hết bàng hoàng thì mụ ta còn nói cả về cha mẹ ruột của cậu và khẳng định cậu chính là Kudo Shinichi đang bị mất tích?? Sau đó, Conan bị dẫn đến một ngôi nhà hoang và tại đây cậu còn gặp một người đàn ông đeo mặt nạ... Qua đó, Conan biết được có một vụ án mạng sắp xảy ra... Cậu nhóc đã trốn thoát, tiếp tục truy tìm hai tên mặc đồ đen ấy!', N'29.png', 2006, 22, 2, 3, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (30, N'Thám Tử Lừng Danh Conan - Tập 6', CAST(22500 AS Decimal(18, 0)), N'11,3x17,6', N'Dù cơ thể có bị teo nhỏ nhưng tớ không chịu thua nhưng gã to con đâu! Tuy đã bị gã đàn ông đeo mặt nạ cảnh báo, nhưng tớ vẫn quyết đuổi đến tận cùng và đang lâm nguy!! Nhờ cái đầu mà tớ đã tìm được cách trốn thoát và vạch rõ chân tướng chúng. Tôi là EDOGAWA CONAn - Thám tử nhí lừng danh!!', N'30.png', 2006, 19, 2, 3, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (31, N'Thám Tử Lừng Danh Conan - Tập 7', CAST(22500 AS Decimal(18, 0)), N'11,3x17,6', N'Nhận được lá thư mời kì lạ, chúng tớ khởi hành đến một hòn đảo sóng nước mênh mông... Đi thì cũng được, nhưng tôi không ngờ rằng lần này lại bị cuốn vào vụ án giết người hàng loạt xảy ra xung quanh cây đàn piano... Phá xong án thì rắc rối mới lại đến. Không biết từ đâu, một cô bạn gái mới toanh của tớ bỗng xuất hiện? Xem ra tâm lí con gái còn khó hơn cả những vụ án rắc rối nhất! Có ai giải đáp giúp tớ sự tức giận của Ran là gì được không?!', N'31.png', 2006, 11, 2, 3, 2, 7)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (32, N'Cho Tôi Xin Một Vé Đi Tuổi Thơ', CAST(90000 AS Decimal(18, 0)), N'20x13', N'Truyện Cho tôi xin một vé đi tuổi thơ là sáng tác mới nhất của nhà văn Nguyễn Nhật Ánh. Nhà văn mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dột, những ước mơ tự do trong lòng… khiến cuốn sách có thể làm các bậc phụ huynh lo lắng rồi thở phào. Không chỉ thích hợp với người đọc trẻ, cuốn sách còn có thể hấp dẫn và thực sự có ích cho người lớn trong quan hệ với con mình.', N'32.png', 2023, 50, 3, 4, 3, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (33, N'Mắt Biếc Tặng Kèm Postcard, Sổ Tay (Số Lượng Có Hạn)', CAST(110000 AS Decimal(18, 0)), N'13x20', N'Một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn này. Một tác phẩm đang được dịch và giới thiệu tại Nhật Bản (theo thông tin từ các báo)…Bởi sự trong sáng của một tình cảm, bởi cái kết thúc rất, rất buồn khi suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn (cái kết thúc không như mong đợi của mọi người).Cũng bởi, mắt biếc… năm xưa nay đâu (theo lời một bài hát)', N'33.png', 2019, 34, 3, 4, 3, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (34, N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', CAST(150000 AS Decimal(18, 0)), N'20x13', N'Những câu chuyện nhỏ xảy ra ở một ngôi làng nhỏ: chuyện người, chuyện cóc, chuyện ma, chuyện công chúa và hoàng tử , rồi chuyện đói ăn, cháy nhà, lụt lội,... Tác giả vẫn giữ cách kể chuyện bằng chính giọng trong sáng hồn nhiên của trẻ con. 81 chương ngắn là 81 câu chuyện hấp dẫn với nhiều chi tiết thú vị, cảm động, có những tình tiết bất ngờ, từ đó lộ rõ tính cách người.', N'34.png', 2023, 80, 3, 4, 3, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (35, N'Bàn Có Năm Chỗ Ngồi', CAST(95000 AS Decimal(18, 0)), N'20x13', N'Câu chuyện xoay quanh tình bạn của năm đứa trẻ ngồi cùng bàn trong lớp 8A2: Huy, Bảy, Hiền, Quang, Đại, năm con người với năm tính cách, hoàn cảnh khác nhau cùng nhiều trò nghịch ngợm, những mâu thuẫn trẻ con trong lứa tuổi cắp sách tới trường. Mộc mạc, chân chất, vô tư, trong sáng… mỗi nhân vật là một tính cách sống động của lứa tuổi học trò mà ai cũng có thể bắt gặp trong ký ức của mình.', N'35.png', 2022, 59, 3, 4, 3, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (36, N'Cho Tôi Xin Một Vé Đi Tuổi Thơ - Phiên Bản Đặc Biệt', CAST(465000 AS Decimal(18, 0)), N'24x19', N'Truyện Cho tôi xin một vé đi tuổi thơ là một trong những tác phẩm bán chạy nhất nhà văn Nguyễn Nhật Ánh. Nhà văn mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dột, những ước mơ tự do trong lòng… khiến cuốn sách có thể làm các bậc phụ huynh lo lắng rồi thở phào. Không chỉ thích hợp với người đọc trẻ, cuốn sách còn có thể hấp dẫn và thực sự có ích cho người lớn trong quan hệ với con mình.', N'36.png', 2021, 43, 3, 4, 3, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (37, N'Mùa Hè Không Tên (Tặng Kèm Bookmark 2 Mặt, Poster Tranh, Lót Ly Ngẫu Nhiên, Chữ Ký Tác Giả)', CAST(230000 AS Decimal(18, 0)), N'20x13', N'“Mùa hè không tên” là truyện dài mới nhất của nhà văn Nguyễn Nhật Ánh, với những câu chuyện tuổi thơ với vô số trò tinh nghịch, những thoáng thinh thích hồi hộp cùng vô vàn kỷ niệm. Để rồi khi những tháng ngày trong sáng của tình bạn dần qua, bọn nhỏ trong mỗi gia đình bình dị lớn lên cùng chứng kiến những giây phút cảm động của câu chuyện tình thân, nỗi khát khao hạnh phúc êm đềm, cùng bỡ ngỡ bước vào tuổi lớn nhiều yêu thương mang cả màu va vấp.', N'37.png', 2023, 100, 3, 4, 3, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (38, N'Tôi Là Bêtô', CAST(95000 AS Decimal(18, 0)), N'20x13', N'“Tôi là Bêtô” là sáng tác mới nhất của nhà văn Nguyễn Nhật Ánh được viết theo phong cách hoàn toàn khác so với những tác phẩm trước đây của ông. Những mẩu chuyện, hay những phát hiện của chú chó Bêtô đầy thú vị, vừa hài hước, vừa chiêm nghiệm một cách nhẹ nhàng “vô vàn những điều thú vị mà cuộc sống cố tình giấu kín ở ngóc ngách nào đó trong tâm hồn của mỗi chúng ta”.', N'38.png', 2023, 50, 3, 4, 3, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (39, N'Con Chó Nhỏ Mang Giỏ Hoa Hồng', CAST(95000 AS Decimal(18, 0)), N'13x20', N'Câu chuyện về 5 chú chó đầy thú vị và cũng không kém cảm xúc lãng mạn- tác phẩm mới nhất của nhà văn bestseller Nguyễn Nhật Ánh sẽ khiến bạn thay đổi nhiều trong cách nhìn về loài thú cưng số 1 thế giới này.', N'39.png', 2020, 12, 3, 4, 3, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (40, N'Tôi Là Bêtô Phiên Bản Đặc Biệt (Có Minh Họa)', CAST(450000 AS Decimal(18, 0)), N'24x19', N'Truyện Tôi là Bêtô là sáng tác của nhà văn Nguyễn Nhật Ánh được viết theo phong cách hoàn toàn khác so với những tác phẩm trước đây của ông. Những mẩu chuyện, hay những phát hiện của chú chó Bêtô đầy thú vị, vừa hài hước, vừa chiêm nghiệm một cách nhẹ nhàng “vô vàn những điều thú vị mà cuộc sống cố tình giấu kín ở ngóc ngách nào đó trong tâm hồn của mỗi chúng ta”.', N'40.png', 2021, 32, 3, 4, 3, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (41, N'Nhà Giả Kim', CAST(79000 AS Decimal(18, 0)), N'20.5x13', N'Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.', N'41.png', 2020, 63, 3, 5, 4, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (42, N'Đắc Nhân Tâm', CAST(108000 AS Decimal(18, 0)), N'20.5x14.5', N'Đắc nhân tâm của Dale Carnegie là quyển sách của mọi thời đại và một hiện tượng đáng kinh ngạc trong ngành xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo và cho đến tận bây giờ, tác phẩm này vẫn chiếm vị trí số một trong danh mục sách bán chạy nhất và trở thành một sự kiện có một không hai trong lịch sử ngành xuất bản thế giới và được đánh giá là một quyển sách có tầm ảnh hưởng nhất mọi thời đại. Đây là cuốn sách độc nhất về thể loại self-help sở hữu một lượng lớn người hâm mộ. Ngoài ra cuốn sách có doanh số bán ra cao nhất được tờ báo The New York Times bình chọn trong nhiều năm. Cuốn sách này không còn là một tác phẩm về nghệ thuật đơn thuần nữa mà là một bước thay đổi lớn trong cuộc sống của mỗi người.', N'42.png', 2021, 103, 5, 6, 5, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (43, N'Quẳng Gánh Lo Đi Và Vui Sống', CAST(86000 AS Decimal(18, 0)), N'20.5x14.5', N'Bất kỳ ai đang sống đều sẽ có những lo lắng thường trực về học hành, công việc, những hoá đơn, chuyện nhà cửa,… Cuộc sống không dễ dàng giải thoát bạn khỏi căng thẳng, ngược lại, nếu quá lo lắng, bạn có thể mắc bệnh trầm cảm. Quẳng Gánh Lo Đi Và Vui Sống khuyên bạn hãy khóa chặt dĩ vãng và tương lai lại để sống trong cái phòng kín mít của ngày hôm nay. Mọi vấn đề đều có thể được giải quyết, chỉ cần bạn bình tĩnh và xác định đúng hành động cần làm vào đúng thời điểm.Quẳng Gánh Lo Đi Và Vui Sống khuyên bạn những cách để giảm thiểu lo lắng rất đơn giản như chia sẻ nó với người khác, tìm cách giải quyết vấn đề, quên tất cả những điều lo lắng nằm ngoài tầm tay,... Cố gắng thực tập điều này hàng ngày và trong cuộc sống chắc hẳn bạn sẽ thành công, có thể, không được như bạn muốn, nhưng chỉ cần bớt đi một chút phiền muộn thì cuộc sống của bạn đã có thêm một niềm vui.', N'43.png', 2021, 160, 5, 6, 5, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (44, N'Lợi Thế Bán Hàng', CAST(138000 AS Decimal(18, 0)), N'14x20.5', N'Cuốn sách này chính là cẩm nang tư vấn chi tiết đối với từng bước trong 11 bước của qui trình bán hàng, qua đó giúp người bán nâng cao và duy trì doanh số bán hàng ở mức cao nhất có thể. 
Cách tìm kiếm cơ hội kinh doanh từ những khách hàng cũ và mới;
Tầm quan trọng của việc tìm hiểu thông tin trước khi tiếp cận khách hàng tiềm năng;
Xác định nhu cầu của khách hàng, như mối quan tâm chủ yếu của họ (cái họ muốn), các tiêu chuẩn mua hàng (yêu cầu sản phẩm/dịch vụ), và động cơ mua hàng chủ yếu (tại sao khách hàng lại muốn có sản phẩm này/dịch vụ này?);
Cách tiếp cận những người có quyền quyết định;
Cách bán hàng mà khách hàng không quá bận tâm tới vấn đề giá cả.
Lợi thế bán hàng là một cẩm nang đầy tính thực tiễn và đã được kiểm chứng của một tên tuổi nổi tiếng nhất trong lĩnh vực đào tạo kỹ năng bán hàng - chắc chắn sẽ mang lại nhiều lợi ích cho cả người bán lẫn người mua hàng.', N'44.png', 2019, 43, 5, 6, 5, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (45, N'Đắc Nhân Tâm Trong Thời Đại Số', CAST(298000 AS Decimal(18, 0)), N'23x15', N'Trong cuộc sống hiện đại, nơi mà sự giao tiếp giữa con người ngày càng phụ thuộc nhiều hơn vào công nghệ, những bài học của Carnegie chẳng những không hề lỗi thời mà càng tỏ ra hữu ích hơn bao giờ hết. Mặc dù chưa bao giờ dự đoán chính xác về tính phổ biến của công nghệ, Carnegie đã bộc lộ sự thông thái của mình trong ngữ cảnh của cuộc sống số. Để chứng minh những bài học của ông vẫn còn nguyên giá trị, thông qua cuốn sách này, công ty Dale Carnegie và cộng sự sẽ hướng dẫn bạn cách áp dụng chúng trong thời đại của chúng ta. Cho dù có những thay đổi nào đang diễn ra trong phương thức giao tiếp và cho dù chúng ta giao tiếp với tốc độ nào, thì giá trị những lời khuyên của Carnegie về cách ứng xử, lãnh đạo và làm việc sao cho hiệu quả vẫn luôn tồn tại với thời gian.', N'45.png', 2019, 20, 5, 6, 5, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (46, N'Cambridge IELTS 1 With Answers', CAST(80000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'46.png', 2008, 6, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (47, N'Cambridge IELTS 2 With Answers', CAST(80000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'47.png', 2008, 2, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (48, N'Cambridge IELTS 3 With Answers', CAST(80000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'48.png', 2008, 3, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (49, N'Cambridge IELTS 4 With Answers', CAST(130000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'49.png', 2008, 12, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (50, N'Cambridge IELTS 5 With Answers', CAST(140000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'50.png', 2008, 31, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (51, N'Cambridge IELTS 6 With Answers', CAST(140000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'51.png', 2008, 27, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (52, N'Cambridge IELTS 7 With Answers', CAST(158000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'52.png', 2008, 11, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (53, N'Cambridge IELTS 8 With Answers', CAST(158000 AS Decimal(18, 0)), N'24x19', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'53.png', 2013, 45, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (54, N'Cambridge IELTS 9 With Answers', CAST(158000 AS Decimal(18, 0)), N'24x19', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'54.png', 2013, 62, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (55, N'Cambridge IELTS 10 With Answers', CAST(158000 AS Decimal(18, 0)), N'28x20', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'55.png', 2015, 21, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (56, N'Cambridge IELTS 11 Academic With Answers', CAST(158000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'56.png', 2016, 37, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (57, N'Cambridge IELTS 11 General Training With Answers', CAST(120000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'57.png', 2016, 45, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (58, N'Cambridge IELTS 12 Academic With Answers', CAST(158000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'58.png', 2017, 63, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (59, N'Cambridge IELTS 12 General Training With Answers', CAST(120000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'59.png', 2017, 76, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (60, N'Cambridge IELTS 13 Academic With Answers', CAST(158000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'60.png', 2018, 21, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (61, N'Cambridge IELTS 13 General Training With Answers', CAST(120000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'61.png', 2018, 36, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (62, N'Cambridge IELTS 14 Academic With Answers', CAST(165000 AS Decimal(18, 0)), N'24x19', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'62.png', 2019, 23, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (63, N'Cambridge IELTS 14 General Training With Answers', CAST(140000 AS Decimal(18, 0)), N'19x24', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'63.png', 2019, 51, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (64, N'Cambridge IELTS 15 Academic With Answers', CAST(165000 AS Decimal(18, 0)), N'24x18.5', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'64.png', 2020, 56, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (65, N'Cambridge IELTS 15 General Training With Answers', CAST(158000 AS Decimal(18, 0)), N'24x18.5', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'65.png', 2020, 76, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (66, N'Cambridge IELTS 16 Academic With Answers', CAST(230000 AS Decimal(18, 0)), N'24x17', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'66.png', 2021, 45, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (67, N'Cambridge IELTS 16 General Training With Answers', CAST(230000 AS Decimal(18, 0)), N'24x17', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'67.png', 2021, 32, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (68, N'Cambridge IELTS 17 Academic With Answers', CAST(230000 AS Decimal(18, 0)), N'24x17', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'68.png', 2022, 86, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (69, N'Cambridge IELTS 17 General Training With Answers', CAST(230000 AS Decimal(18, 0)), N'24x17', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'69.png', 2022, 113, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (70, N'Cambridge IELTS 18 Academic With Answer', CAST(230000 AS Decimal(18, 0)), N'24.6x18.9', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'70.png', 2023, 65, 4, 7, 6, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [Gia], [KichThuoc], [MoTa], [AnhBia], [NamXB], [SoLuongTon], [MaTL], [MaTG], [MaNXB], [Sale]) VALUES (71, N'Cambridge IELTS 18 General Training With Answer', CAST(230000 AS Decimal(18, 0)), N'24.6x18.9', N'Đây là bộ tài liệu do đại học Cambridge tổng hợp dựa trên đề thi thực tế các năm của kỳ thi Cambridge English Language Assessment. Mỗi tập sách sẽ cung cấp các bài Test IELTS chất lượng với đầy đủ các kĩ năng Speaking – Listening – Writing và Reading, giúp cho thí sinh học IELTS được cọ sát gần nhất với lối ra đề thi IELTS.', N'71.png', 2023, 55, 4, 7, 6, 9)
SET IDENTITY_INSERT [dbo].[Sach] OFF
GO
SET IDENTITY_INSERT [dbo].[TG] ON 

INSERT [dbo].[TG] ([MaTG], [TenTG]) VALUES (1, N'Bộ Giáo Dục Và Đào Tạo')
INSERT [dbo].[TG] ([MaTG], [TenTG]) VALUES (2, N'Fujiko F Fujio')
INSERT [dbo].[TG] ([MaTG], [TenTG]) VALUES (3, N'Gosho Aoyama')
INSERT [dbo].[TG] ([MaTG], [TenTG]) VALUES (4, N'Nguyễn Nhật Ánh')
INSERT [dbo].[TG] ([MaTG], [TenTG]) VALUES (5, N'Paulo Coelho')
INSERT [dbo].[TG] ([MaTG], [TenTG]) VALUES (6, N'Dale Carnegie')
INSERT [dbo].[TG] ([MaTG], [TenTG]) VALUES (7, N'Cambridge')
INSERT [dbo].[TG] ([MaTG], [TenTG]) VALUES (8, N'Khương lệ Bình')
SET IDENTITY_INSERT [dbo].[TG] OFF
GO
SET IDENTITY_INSERT [dbo].[TL] ON 

INSERT [dbo].[TL] ([MaTL], [TenTL]) VALUES (1, N'Sách giáo khoa')
INSERT [dbo].[TL] ([MaTL], [TenTL]) VALUES (2, N'Truyện tranh')
INSERT [dbo].[TL] ([MaTL], [TenTL]) VALUES (3, N'Văn học')
INSERT [dbo].[TL] ([MaTL], [TenTL]) VALUES (4, N'Sách học ngoại ngữ')
INSERT [dbo].[TL] ([MaTL], [TenTL]) VALUES (5, N'Tâm lý - Kỹ năng sống')
SET IDENTITY_INSERT [dbo].[TL] OFF
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_Sach1] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_Sach1]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KH] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KH]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NXB1] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NXB] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NXB1]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TG1] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TG] ([MaTG])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TG1]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TL1] FOREIGN KEY([MaTL])
REFERENCES [dbo].[TL] ([MaTL])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TL1]
GO
USE [master]
GO
ALTER DATABASE [NhaSach] SET  READ_WRITE 
GO
