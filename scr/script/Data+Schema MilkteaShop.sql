USE [master]
GO
/****** Object:  Database [WebsiteTraSua]    Script Date: 09/01/2025 5:06:55 PM ******/
CREATE DATABASE [WebsiteTraSua]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebsiteTraSua', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebsiteTraSua.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebsiteTraSua_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebsiteTraSua_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebsiteTraSua] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteTraSua].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteTraSua] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteTraSua] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteTraSua] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebsiteTraSua] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteTraSua] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebsiteTraSua] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET RECOVERY FULL 
GO
ALTER DATABASE [WebsiteTraSua] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteTraSua] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteTraSua] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteTraSua] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteTraSua] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebsiteTraSua] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebsiteTraSua', N'ON'
GO
ALTER DATABASE [WebsiteTraSua] SET QUERY_STORE = OFF
GO
USE [WebsiteTraSua]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 09/01/2025 5:06:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[DanhGia] [int] NULL,
	[MaKhachHang] [int] NULL,
	[MaSanPham] [int] NULL,
	[ThoiGian] [datetime2](7) NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChiNhanh] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDB]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHDB] [nvarchar](50) NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[GiamGia] [int] NULL,
	[ThanhTien] [int] NULL,
	[ThuocSanPham] [int] NULL,
	[ChiTietThu] [int] NULL,
 CONSTRAINT [PK_ChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHDN] [nvarchar](50) NULL,
	[MaNguyenLieu] [int] NULL,
	[MaDonViTinh] [int] NULL,
	[GiaNhap] [int] NULL,
	[SoLuong] [int] NULL,
	[ChietKhau] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_ChiTietHDN] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](max) NULL,
	[Luong] [int] NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDonViTinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[ThuocSanPham] [int] NULL,
	[SanPhamThu] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[Id] [nvarchar](50) NOT NULL,
	[MaNhanVien] [int] NULL,
	[MaKhach] [int] NULL,
	[NgayBan] [datetime2](7) NULL,
	[GiamGia] [int] NULL,
	[TongTien] [int] NULL,
	[DaThanhToan] [int] NULL,
	[Duyet] [int] NULL,
	[MaChiNhanh] [int] NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[Id] [nvarchar](50) NOT NULL,
	[MaNhanVien] [int] NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime2](7) NULL,
	[TongTien] [int] NULL,
	[ChietKhau] [int] NULL,
	[DaThanhToan] [int] NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[SDT] [varchar](50) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[Active] [bit] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKhuyenMai] [nvarchar](max) NULL,
	[PhanTram] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiKhuyenMai]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKhuyenMai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiKhuyenMai] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](max) NULL,
	[SanPhamChinh] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNguyenLieu] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_NguyenLieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieu_DonVi]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu_DonVi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaNguyenLieu] [int] NULL,
	[MaDonViTinh] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [int] NULL,
 CONSTRAINT [PK_NguyenLieu_DonVi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[SDT] [char](15) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MaChucVu] [int] NULL,
	[MaChiNhanh] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ThoiGian] [datetime2](7) NULL,
	[MaKhachHang] [int] NULL,
	[DaXem] [int] NULL,
 CONSTRAINT [PK_PhanHoi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[MaLoaiSanPham] [int] NULL,
	[GiaBan] [int] NULL,
	[KhuyenMai] [int] NULL,
	[Anh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPChinh_Phu]    Script Date: 09/01/2025 5:06:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPChinh_Phu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SPChinh_Phu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SPChinh_Phu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200520065946_update_model05202020', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200529011600_initial', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200529014937_init', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200702184620_update-model2020', N'3.1.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200702190831_update-model2', N'3.1.4')
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (1, N'nội dung', 4, 1, 17, CAST(N'2020-04-22T15:01:10.6300000' AS DateTime2))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (2, N'bình luận 1', 4, 1, 17, CAST(N'2020-04-22T15:07:33.4900000' AS DateTime2))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (3, N'sản phẩm rất hoàn hảo', 2, 1, 17, CAST(N'2020-04-22T15:19:44.3966667' AS DateTime2))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (4, N'sản phẩm rất ngon', 2, 1, 17, CAST(N'2020-04-22T15:20:00.3166667' AS DateTime2))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (5, N'sản phẩm hoàn hảo', 5, 1, 16, CAST(N'2020-05-13T20:22:00.6900000' AS DateTime2))
INSERT [dbo].[BinhLuan] ([Id], [NoiDung], [DanhGia], [MaKhachHang], [MaSanPham], [ThoiGian]) VALUES (6, N'bình luận 1', 3, 1, 16, CAST(N'2020-05-13T20:22:48.9966667' AS DateTime2))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiNhanh] ON 

INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (1, N'Gong Cha Bason', N'A2SH10 - Ground Floor Vinhomes Golden River, 02 Ton Duc Thang Street, Ben Nghe Ward, District 01, Ho Chi Minh City', N'Monday - Sunday: 10:00AM - 18:00PM')
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (2, N'Gong Cha Emporium', N'A1-01A Stall, Level 1, The Emporium Shopping Center, 184 Le Dai Hanh Street, Ward 15, District 11.', N'Monday - Sunday: 9h - 22h')
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (4, N'Gong Cha Saigon Centre', N'B2-6B Stall, Basement 2, Saigon Center Building, 67 Le Loi Street, Ben Nghe Ward, District 1, Ho Chi Minh City.', N'Thứ Hai - Chủ Nhật: 8h30 - 22h')
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (5, N'
Gong Cha Phan Xích Long', N'160 Phan Xich Long Street, Ward 2, Phu Nhuan District, Ho Chi Minh City.', N'	Monday - Sunday: 8h30 - 22h')
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (6, N'Gong Cha Gigamall', N'L5-20, GIGA Mall, 240-242 Pham Van Dong Street, Hiep Binh Chanh Ward, Thu Duc District, Ho Chi Minh City.', N'Thứ Hai – Thứ Năm: 8h – 22h
Thứ Sáu – Chủ Nhật: 8h – 22h30')
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (7, N'Gong Cha Thảo Điền Pearl', N'Thao Dien Pearl - L1-23 + L1-24 + L1-23T Stall, Level 1.
12 Quoc Huong Street, Thao Dien Ward, District 2, Ho Chi Minh City.', N'	Monday - Sunday: 9h30 - 22h')
INSERT [dbo].[ChiNhanh] ([Id], [TenChiNhanh], [DiaChi], [GhiChu]) VALUES (1008, N'Gong Cha Nguyễn Thái Bình', N'59 Nguyễn Thái Bình, Phường 4, Tân Bình, Hồ Chí Minh', NULL)
SET IDENTITY_INSERT [dbo].[ChiNhanh] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHDB] ON 

INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2590, N'115234632', 45, 1, NULL, 32000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2591, N'115234632', 75, 1, NULL, 8000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2592, N'115234632', 68, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2593, N'115234632', 73, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2594, N'115234632', 50, 1, NULL, 10000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2595, N'115234632', 52, 1, NULL, 10000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2596, N'115234632', 41, 1, NULL, 32000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2597, N'115234632', 75, 1, NULL, 8000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2598, N'115234632', 68, 1, NULL, 0, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2599, N'115234632', 73, 1, NULL, 0, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2600, N'115234632', 50, 1, NULL, 10000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2601, N'115234659', 34, 1, NULL, 32000, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2602, N'115234659', 75, 1, NULL, 8000, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2603, N'115234659', 68, 1, NULL, 0, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2604, N'115234659', 73, 1, NULL, 0, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2605, N'115234659', 13, 1, NULL, 39000, 13, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2606, N'115234659', 75, 1, NULL, 8000, 13, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2607, N'115234659', 68, 1, NULL, 0, 13, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2608, N'115234659', 73, 1, NULL, 0, 13, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2609, N'115234659', 49, 1, NULL, 16000, 13, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2610, N'115234733', 34, 1, NULL, 32000, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2611, N'115234733', 75, 1, NULL, 8000, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2612, N'115234733', 68, 1, NULL, 0, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2613, N'115234733', 73, 1, NULL, 0, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2614, N'115234733', 52, 1, NULL, 10000, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2615, N'115234733', 54, 1, NULL, 10000, 34, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2616, N'115234733', 36, 1, NULL, 32000, 36, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2617, N'115234733', 75, 1, NULL, 8000, 36, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2618, N'115234733', 68, 1, NULL, 0, 36, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2619, N'115234733', 73, 1, NULL, 0, 36, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2620, N'115234733', 49, 1, NULL, 16000, 36, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2621, N'115234733', 51, 1, NULL, 10000, 36, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2635, N'12505547', 92, 1, NULL, 25000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2636, N'12505547', 75, 1, NULL, 8000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2637, N'12505547', 68, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2638, N'12505547', 73, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2639, N'12505547', 49, 1, NULL, 16000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2640, N'12505547', 53, 1, NULL, 10000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2648, N'125221250', 45, 1, NULL, 32000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2649, N'125221250', 75, 1, NULL, 8000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2650, N'125221250', 68, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2651, N'125221250', 73, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2652, N'12523400', 47, 1, NULL, 32000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2653, N'12523400', 75, 1, NULL, 8000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2654, N'12523400', 68, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2655, N'12523400', 73, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2656, N'125234911', 46, 1, NULL, 32000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2657, N'125234911', 75, 1, NULL, 8000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2658, N'125234911', 68, 1, NULL, 0, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2659, N'125234911', 73, 1, NULL, 0, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2664, N'1260312', 45, 1, NULL, 32000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2665, N'1260312', 75, 1, NULL, 8000, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2666, N'1260312', 68, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2667, N'1260312', 73, 1, NULL, 0, 45, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2668, N'1260312', 46, 1, NULL, 32000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2669, N'1260312', 75, 1, NULL, 8000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2670, N'1260312', 68, 1, NULL, 0, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2671, N'1260312', 73, 1, NULL, 0, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2672, N'126081', 46, 1, NULL, 32000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2673, N'126081', 75, 1, NULL, 8000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2674, N'126081', 64, 1, NULL, 0, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2675, N'126081', 70, 1, NULL, 0, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2676, N'126081', 50, 1, NULL, 10000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2677, N'126081', 52, 1, NULL, 10000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2678, N'126081', 54, 1, NULL, 10000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2679, N'126081', 56, 1, NULL, 10000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2680, N'126081', 58, 1, NULL, 10000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2685, N'12601123', 92, 2, NULL, 50000, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2686, N'12601123', 75, 2, NULL, 16000, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2687, N'12601123', 63, 2, NULL, 0, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2688, N'12601123', 69, 2, NULL, 0, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2689, N'12601123', 49, 2, NULL, 32000, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2690, N'12601123', 51, 2, NULL, 20000, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2691, N'12601123', 53, 2, NULL, 20000, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2692, N'12601123', 55, 2, NULL, 20000, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2693, N'12601123', 57, 2, NULL, 20000, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2694, N'12601123', 59, 2, NULL, 20000, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (2695, N'12601123', 62, 2, NULL, 20000, 92, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3622, N'629121616', 15, 1, 0, 32000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3623, N'629121616', 75, 1, 0, 8000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3624, N'629121616', 68, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3625, N'629121616', 73, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3626, N'629121616', 56, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3627, N'629121616', 58, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3628, N'629121616', 60, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3643, N'64154526', 16, 2, 0, 64000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3644, N'64154526', 75, 2, 0, 16000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3645, N'64154526', 64, 2, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3646, N'64154526', 70, 2, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3647, N'64154526', 57, 2, 0, 20000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3648, N'64154526', 59, 2, 0, 20000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3649, N'64154526', 61, 2, 0, 20000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3650, N'14154750', 47, 2, NULL, 64000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3651, N'14154750', 75, 2, NULL, 16000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3652, N'14154750', 63, 2, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3653, N'14154750', 73, 2, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3654, N'14154750', 49, 2, NULL, 32000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3655, N'14154750', 53, 2, NULL, 20000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3656, N'14154750', 57, 2, NULL, 20000, 47, 1)
GO
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3657, N'14154750', 37, 1, NULL, 32000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3658, N'14154750', 75, 1, NULL, 8000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3659, N'14154750', 63, 1, NULL, 0, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3660, N'14154750', 73, 1, NULL, 0, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3661, N'14154750', 49, 1, NULL, 16000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3662, N'14154750', 50, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3663, N'14154750', 51, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3664, N'14154750', 52, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3665, N'14154750', 53, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3666, N'14154750', 54, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3667, N'14154750', 55, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3668, N'14154750', 56, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3669, N'14154750', 57, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3670, N'14154750', 58, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3671, N'14154750', 59, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3672, N'14154750', 60, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3673, N'14154750', 61, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3674, N'14154750', 62, 1, NULL, 10000, 37, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3675, N'64155146', 16, 1, 0, 32000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3676, N'64155146', 75, 1, 0, 8000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3677, N'64155146', 66, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3678, N'64155146', 73, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3679, N'64155146', 51, 1, 0, 10000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3680, N'9623133', 15, 1, 0, 32000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3681, N'9623133', 75, 1, 0, 8000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3682, N'9623133', 68, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3683, N'9623133', 69, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3684, N'9623133', 49, 1, 0, 16000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3685, N'9623133', 51, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3686, N'96232920', 15, 2, 0, 64000, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3687, N'96232920', 75, 2, 0, 16000, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3688, N'96232920', 68, 2, 0, 0, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3689, N'96232920', 72, 2, 0, 0, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3690, N'96232920', 50, 2, 0, 20000, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3691, N'96232920', 52, 2, 0, 20000, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3692, N'96232920', 54, 2, 0, 20000, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3693, N'96232920', 56, 2, 0, 20000, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3694, N'96232920', 58, 2, 0, 20000, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3695, N'96232920', 60, 2, 0, 20000, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3696, N'96232920', 62, 2, 0, 20000, 15, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3697, N'16233020', 92, 1, NULL, 25000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3698, N'16233020', 74, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3699, N'16233020', 63, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3700, N'16233020', 69, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3701, N'16233020', 49, 1, NULL, 16000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3702, N'16233020', 51, 1, NULL, 10000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3703, N'16233020', 53, 1, NULL, 10000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3704, N'9623419', 16, 1, 0, 32000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3705, N'9623419', 74, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3706, N'9623419', 63, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3707, N'9623419', 69, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3708, N'9623419', 49, 1, 0, 16000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3709, N'86234528', 21, 1, 0, 32000, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3710, N'86234528', 75, 1, 0, 8000, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3711, N'86234528', 63, 1, 0, 0, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3712, N'86234528', 72, 1, 0, 0, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3713, N'86234528', 49, 1, 0, 16000, 21, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3714, N'670058', 15, 1, 0, 32000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3715, N'670058', 75, 1, 0, 8000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3716, N'670058', 68, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3717, N'670058', 72, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3718, N'670058', 62, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3719, N'170142', 92, 1, NULL, 25000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3720, N'170142', 75, 1, NULL, 8000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3721, N'170142', 63, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3722, N'170142', 70, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3723, N'170142', 58, 1, NULL, 10000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3724, N'17035', 43, 2, NULL, 64000, 43, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3725, N'17035', 75, 2, NULL, 16000, 43, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3726, N'17035', 63, 2, NULL, 0, 43, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3727, N'17035', 70, 2, NULL, 0, 43, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3728, N'17035', 60, 2, NULL, 20000, 43, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3729, N'1723025', 47, 1, NULL, 32000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3730, N'1723025', 74, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3731, N'1723025', 66, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3732, N'1723025', 71, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3733, N'1723025', 51, 1, NULL, 10000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3734, N'173933', 46, 1, NULL, 32000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3735, N'173933', 75, 1, NULL, 8000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3736, N'173933', 67, 1, NULL, 0, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3737, N'173933', 71, 1, NULL, 0, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3738, N'173933', 52, 1, NULL, 10000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3739, N'173933', 54, 1, NULL, 10000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3740, N'173933', 56, 1, NULL, 10000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (3741, N'173933', 58, 1, NULL, 10000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4622, N'9801745', 15, 1, 0, 32000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4623, N'9801745', 75, 1, 0, 8000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4624, N'9801745', 63, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4625, N'9801745', 70, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4626, N'9801745', 50, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4627, N'9801745', 52, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4628, N'9801745', 53, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4629, N'9801745', 54, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4630, N'9801745', 55, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4631, N'9801745', 56, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4632, N'9801745', 57, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4633, N'9801745', 58, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4634, N'9801745', 59, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4635, N'180254', 31, 1, NULL, 32000, 31, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4636, N'180254', 74, 1, NULL, 0, 31, 1)
GO
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4637, N'180254', 64, 1, NULL, 0, 31, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4638, N'180254', 70, 1, NULL, 0, 31, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4639, N'180254', 52, 1, NULL, 10000, 31, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4640, N'180254', 54, 1, NULL, 10000, 31, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4641, N'180254', 58, 1, NULL, 10000, 31, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4642, N'180254', 42, 1, NULL, 32000, 42, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4643, N'180254', 75, 1, NULL, 8000, 42, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4644, N'180254', 68, 1, NULL, 0, 42, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4645, N'180254', 73, 1, NULL, 0, 42, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4646, N'880549', 7, 2, 0, 78000, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4647, N'880549', 74, 2, 0, 0, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4648, N'880549', 66, 2, 0, 0, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4649, N'880549', 71, 2, 0, 0, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4650, N'880549', 51, 2, 0, 20000, 7, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4651, N'1815955', 46, 1, NULL, 32000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4652, N'1815955', 75, 1, NULL, 8000, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4653, N'1815955', 66, 1, NULL, 0, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4654, N'1815955', 69, 1, NULL, 0, 46, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4655, N'98144455', 16, 1, 0, 32000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4656, N'98144455', 75, 1, 0, 8000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4657, N'98144455', 68, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4658, N'98144455', 73, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4659, N'98144455', 18, 2, 0, 64000, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4660, N'98144455', 74, 2, 0, 0, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4661, N'98144455', 63, 2, 0, 0, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4662, N'98144455', 71, 2, 0, 0, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4663, N'98144455', 49, 2, 0, 32000, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4664, N'98144455', 51, 2, 0, 20000, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4665, N'98144455', 53, 2, 0, 20000, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4666, N'98144455', 55, 2, 0, 20000, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4667, N'98144455', 57, 2, 0, 20000, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4668, N'98144455', 59, 2, 0, 20000, 18, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4669, N'611125537', 15, 2, 0, 64000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4670, N'611125537', 74, 2, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4671, N'611125537', 63, 2, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4672, N'611125537', 72, 2, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4673, N'611125537', 50, 2, 0, 20000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4674, N'611125537', 52, 2, 0, 20000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4675, N'611125537', 54, 2, 0, 20000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4676, N'611161119', 16, 1, 0, 32000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4677, N'611161119', 74, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4678, N'611161119', 63, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4679, N'611161119', 69, 1, 0, 0, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4680, N'611161119', 55, 1, 0, 10000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4681, N'611161119', 57, 1, 0, 10000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4682, N'611161119', 59, 1, 0, 10000, 16, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4683, N'111161535', 47, 1, NULL, 32000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4684, N'111161535', 75, 1, NULL, 8000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4685, N'111161535', 63, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4686, N'111161535', 69, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4687, N'111161535', 54, 1, NULL, 10000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4688, N'111161535', 56, 1, NULL, 10000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4689, N'111161535', 41, 2, NULL, 64000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4690, N'111161535', 75, 2, NULL, 16000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4691, N'111161535', 64, 2, NULL, 0, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4692, N'111161535', 70, 2, NULL, 0, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4693, N'111161535', 50, 2, NULL, 20000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (4694, N'111161535', 52, 2, NULL, 20000, 41, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5676, N'619152125', 15, 1, 0, 32000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5677, N'619152125', 75, 1, 0, 8000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5678, N'619152125', 68, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5679, N'619152125', 73, 1, 0, 0, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5680, N'619152125', 50, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5681, N'619152125', 52, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5682, N'619152125', 54, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5683, N'619152125', 56, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5684, N'619152125', 58, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5685, N'619152125', 60, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (5686, N'619152125', 62, 1, 0, 10000, 15, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6676, N'1108020', 47, 1, NULL, 32000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6677, N'1108020', 75, 1, NULL, 8000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6678, N'1108020', 63, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6679, N'1108020', 69, 1, NULL, 0, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6680, N'1108020', 49, 1, NULL, 16000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6681, N'1108020', 51, 1, NULL, 10000, 47, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6682, N'1108020', 46, 1, NULL, 32000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6683, N'1108020', 75, 1, NULL, 8000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6684, N'1108020', 63, 1, NULL, 0, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6685, N'1108020', 70, 1, NULL, 0, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6686, N'1108020', 52, 1, NULL, 10000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6687, N'1108020', 54, 1, NULL, 10000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6688, N'1108020', 56, 1, NULL, 10000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6689, N'11011590', 92, 1, NULL, 25000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6690, N'11011590', 75, 1, NULL, 8000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6691, N'11011590', 68, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6692, N'11011590', 73, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6693, N'11011590', 45, 1, NULL, 32000, 45, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6694, N'11011590', 75, 1, NULL, 8000, 45, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6695, N'11011590', 68, 1, NULL, 0, 45, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6696, N'11011590', 73, 1, NULL, 0, 45, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6697, N'110141847', 92, 1, NULL, 25000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6698, N'110141847', 75, 1, NULL, 8000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6699, N'110141847', 68, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6700, N'110141847', 73, 1, NULL, 0, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6701, N'110141847', 49, 1, NULL, 16000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6702, N'110141847', 51, 1, NULL, 10000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6703, N'110141847', 53, 1, NULL, 10000, 92, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6704, N'110141847', 46, 1, NULL, 32000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6705, N'110141847', 74, 1, NULL, 0, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6706, N'110141847', 68, 1, NULL, 0, 46, 2)
GO
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6707, N'110141847', 73, 1, NULL, 0, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6708, N'110141847', 50, 1, NULL, 10000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6709, N'110141847', 54, 1, NULL, 10000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6710, N'110141847', 56, 1, NULL, 10000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6711, N'110141847', 58, 1, NULL, 10000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6712, N'110141847', 60, 1, NULL, 10000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6713, N'110141847', 62, 1, NULL, 10000, 46, 2)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6714, N'610152845', 1, 2, 0, 40000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6715, N'610152845', 75, 2, 0, 16000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6716, N'610152845', 63, 2, 0, 0, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6717, N'610152845', 69, 2, 0, 0, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6718, N'610152845', 53, 2, 0, 20000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6719, N'610152845', 55, 2, 0, 20000, 1, 1)
INSERT [dbo].[ChiTietHDB] ([Id], [MaHDB], [MaSanPham], [SoLuong], [GiamGia], [ThanhTien], [ThuocSanPham], [ChiTietThu]) VALUES (6720, N'610152845', 57, 2, 0, 20000, 1, 1)
SET IDENTITY_INSERT [dbo].[ChiTietHDB] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHDN] ON 

INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (37, N'304202019523', 1, 1, 10000, 10, 10000, 90000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (38, N'304202019523', 2, 2, 10000, 20, 10000, 190000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (39, N'3042020224055', 1, 2, 10000, 11, 10000, 100000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (40, N'3042020224055', 3, 2, 10000, 10, 10000, 90000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (41, N'75202016332', 2, 1, 10000, 10, 10000, 90000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (42, N'752020203545', 1, 2, 40000, 100, 400000, 3600000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (43, N'752020203545', 2, 2, 100000, 20, 100000, 1900000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (44, N'752020205415', 1, 1, 10000, 400, 100000, 3900000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (45, N'75202020560', 1, 1, 40000, 20, 200000, 600000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (46, N'752020211420', 1, 1, 40000, 400, 1000000, 15000000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (47, N'752020212234', 2, 2, 40000, 100, 300000, 3700000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (48, N'752020213438', 2, 2, 40000, 20, 50000, 750000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (1041, N'1352020155626', 1, 3, 1000000, 10, 2000000, 8000000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (1042, N'1352020155626', 2, 1, 100000, 20, 200000, 1800000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (1043, N'195202016122', 3, 2, 40000, 20, 100000, 700000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (1044, N'1952020161854', 2, 2, 10000, 50, 20000, 480000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (1045, N'3052020222623', 1, 1, 2500, 20, 30, 49970)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (1046, N'3052020223611', 2, 1, 2500, 25, 20, 62480)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (1047, N'66202013533', 2, 2, 25000, 100, 25, 2499975)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (2041, N'1162020124858', 1, 1, 2500, 100, 25, 249975)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (2042, N'1162020162357', 2, 1, 2000, 213, 20, 425980)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (3042, N'1072020145136', 2, 2, 2500, 200, 20000, 480000)
INSERT [dbo].[ChiTietHDN] ([Id], [MaHDN], [MaNguyenLieu], [MaDonViTinh], [GiaNhap], [SoLuong], [ChietKhau], [ThanhTien]) VALUES (3043, N'1072020145136', 3, 2, 30000, 10, 50000, 250000)
SET IDENTITY_INSERT [dbo].[ChiTietHDN] OFF
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Luong]) VALUES (1, N'Online', 0)
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Luong]) VALUES (2, N'Thu ngân', 5000000)
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Luong]) VALUES (3, N'Quản lý ', 20000000)
INSERT [dbo].[ChucVu] ([Id], [TenChucVu], [Luong]) VALUES (4, N'Pha Chế', 7000000)
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[DonViTinh] ON 

INSERT [dbo].[DonViTinh] ([Id], [TenDonViTinh]) VALUES (1, N'bao ')
INSERT [dbo].[DonViTinh] ([Id], [TenDonViTinh]) VALUES (2, N'chiếc')
INSERT [dbo].[DonViTinh] ([Id], [TenDonViTinh]) VALUES (3, N'kg')
INSERT [dbo].[DonViTinh] ([Id], [TenDonViTinh]) VALUES (5, N'thùng')
SET IDENTITY_INSERT [dbo].[DonViTinh] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4056, 6, 15, 1, 15, 1)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4057, 6, 75, 1, 15, 1)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4058, 6, 68, 1, 15, 1)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4059, 6, 73, 1, 15, 1)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4060, 6, 57, 1, 15, 1)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4061, 6, 58, 1, 15, 1)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4062, 6, 59, 1, 15, 1)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4063, 6, 61, 1, 15, 1)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4064, 6, 62, 1, 15, 1)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4065, 6, 92, 1, 92, 2)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4066, 6, 75, 1, 92, 2)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4067, 6, 68, 1, 92, 2)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4068, 6, 73, 1, 92, 2)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4069, 6, 49, 1, 92, 2)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4070, 6, 53, 1, 92, 2)
INSERT [dbo].[GioHang] ([Id], [MaKhachHang], [MaSanPham], [SoLuong], [ThuocSanPham], [SanPhamThu]) VALUES (4071, 6, 57, 1, 92, 2)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'11011590', 1, 4, CAST(N'2020-07-10T11:59:00.1906418' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'110141847', 1, 4, CAST(N'2020-07-10T14:18:47.6801557' AS DateTime2), 0, 161000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1108020', 1, 4, CAST(N'2020-07-10T08:00:20.0108046' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'111161535', 1, 4, CAST(N'2020-06-11T16:15:35.5039209' AS DateTime2), 0, 180000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'115234632', 1, 4, CAST(N'2020-04-15T23:46:32.6500000' AS DateTime2), 0, 110000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'115234659', 1, 4, CAST(N'2020-05-15T23:46:59.2433333' AS DateTime2), 0, 103000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'115234733', 1, 4, CAST(N'2020-05-13T23:47:33.2200000' AS DateTime2), 0, 126000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1250459', 1, 4, CAST(N'2020-05-25T00:45:09.5442769' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'12505547', 1, 4, CAST(N'2020-05-25T00:55:47.9343835' AS DateTime2), 0, 59000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'125132310', 1, 4, CAST(N'2020-05-25T13:23:10.2541289' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'125221250', 1, 4, CAST(N'2020-05-25T22:12:50.6856950' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'12523400', 1, 4, CAST(N'2020-05-25T23:40:00.3561837' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'125234911', 1, 4, CAST(N'2020-05-25T23:49:11.3755844' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'12523594', 1, 4, CAST(N'2020-05-25T23:59:04.8273233' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'12601123', 1, 4, CAST(N'2020-05-26T00:11:23.6213401' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1260312', 1, 4, CAST(N'2020-05-26T00:03:12.8833932' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'126081', 1, 4, CAST(N'2020-05-26T00:08:01.3237688' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'14152231', 1, 4, CAST(N'2020-06-04T15:22:31.0184503' AS DateTime2), 0, 0, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'14154750', 1, 4, CAST(N'2020-06-04T15:47:50.1602915' AS DateTime2), 0, 338000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'16233020', 1, 4, CAST(N'2020-06-06T23:30:20.5773722' AS DateTime2), 0, 61000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'170142', 1, 4, CAST(N'2020-06-07T00:01:42.7016164' AS DateTime2), 0, 43000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'17035', 1, 4, CAST(N'2020-06-07T00:03:05.5174308' AS DateTime2), 0, 100000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1723025', 1, 4, CAST(N'2020-06-07T02:30:25.3811686' AS DateTime2), 0, 42000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'173933', 1, 4, CAST(N'2020-06-07T03:09:33.6783280' AS DateTime2), 0, 80000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'180254', 1, 4, CAST(N'2020-06-08T00:25:04.4643022' AS DateTime2), 0, 102000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'1815955', 1, 4, CAST(N'2020-06-08T01:59:55.6522450' AS DateTime2), 0, 40000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'610152845', 1, 6, CAST(N'2020-07-10T15:28:45.9960030' AS DateTime2), NULL, 116000, 1, 1, 2)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'611125537', 1, 6, CAST(N'2020-06-11T12:55:37.7483958' AS DateTime2), NULL, 124000, 1, 1, 2)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'611161119', 1, 6, CAST(N'2020-06-11T16:11:19.1996809' AS DateTime2), NULL, 62000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'619152125', 1, 6, CAST(N'2020-06-19T15:21:25.2937818' AS DateTime2), NULL, 110000, 0, 0, NULL)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'629121616', 1, 6, CAST(N'2020-05-29T12:16:16.5063491' AS DateTime2), NULL, 70000, 0, 1, 6)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'64154526', 1, 6, CAST(N'2020-06-04T15:45:26.2950569' AS DateTime2), NULL, 140000, 0, 1, 5)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'64155146', 1, 6, CAST(N'2020-06-04T15:51:46.6184840' AS DateTime2), NULL, 50000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'670058', 1, 6, CAST(N'2020-06-07T00:00:58.8108204' AS DateTime2), NULL, 50000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'86234528', 1, 8, CAST(N'2020-06-06T23:45:28.4525112' AS DateTime2), NULL, 56000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'880549', 1, 8, CAST(N'2020-06-08T00:54:09.2839032' AS DateTime2), NULL, 98000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'9623133', 1, 9, CAST(N'2020-06-06T23:13:03.4475023' AS DateTime2), NULL, 66000, 0, 0, NULL)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'96232920', 1, 9, CAST(N'2020-06-06T23:29:20.6622528' AS DateTime2), NULL, 220000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'9623419', 1, 9, CAST(N'2020-06-06T23:41:09.3802385' AS DateTime2), NULL, 48000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'9801745', 1, 9, CAST(N'2020-06-08T00:17:45.1915120' AS DateTime2), NULL, 130000, 1, 1, 1)
INSERT [dbo].[HoaDonBan] ([Id], [MaNhanVien], [MaKhach], [NgayBan], [GiamGia], [TongTien], [DaThanhToan], [Duyet], [MaChiNhanh]) VALUES (N'98144455', 1, 9, CAST(N'2020-06-08T14:44:55.1572975' AS DateTime2), NULL, 236000, 1, 1, 2)
GO
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'1072020145136', 3, 2, CAST(N'2020-07-10T14:52:32.7884601' AS DateTime2), 730000, 300000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'1162020124858', 3, 2, CAST(N'2020-06-11T12:49:09.3286668' AS DateTime2), 249975, 30000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'1162020162357', 3, 2, CAST(N'2020-06-11T16:24:10.0879880' AS DateTime2), 425980, 200000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'1352020155626', 3, 1, CAST(N'2020-05-13T15:57:23.9033333' AS DateTime2), 9800000, 0, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'304202019523', 3, 1, CAST(N'2020-04-30T19:05:49.6300000' AS DateTime2), 280000, 10000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'3042020224055', 3, 2, CAST(N'2020-04-30T22:42:09.1466667' AS DateTime2), 190000, 10000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'3052020223611', 3, 2, CAST(N'2020-05-30T22:36:27.4512669' AS DateTime2), 62480, 25000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'66202013533', 3, 1, CAST(N'2020-06-06T01:35:53.2905921' AS DateTime2), 2499975, 250000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'752020203545', 3, 1, CAST(N'2020-05-07T20:37:33.6666667' AS DateTime2), 5500000, 1000, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'752020211420', 3, 1, CAST(N'2020-05-07T21:14:39.7000000' AS DateTime2), 15000000, 0, NULL)
INSERT [dbo].[HoaDonNhap] ([Id], [MaNhanVien], [MaNCC], [NgayNhap], [TongTien], [ChietKhau], [DaThanhToan]) VALUES (N'752020213438', 3, 2, CAST(N'2020-05-07T21:35:19.7400000' AS DateTime2), 750000, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email], [Active], [CreatedTime]) VALUES (1, N'Phạm Văn Bằng ', N'0386777373', N'bang12a12a', N'FCEA920F7412B5DA7BE0CF42B8C93759', N'TPHCM', N'bang12a12a@gmail.com', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email], [Active], [CreatedTime]) VALUES (2, N'Trần Thiên Long', N'0123212522', N'long123', N'25F9E794323B453885F5181F1B624D0B', N'TPHCM', N'long12@gmail.com', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email], [Active], [CreatedTime]) VALUES (3, N'admin', N'0386777373', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', N'TPHCM', N'bang111a111@gmail.com', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email], [Active], [CreatedTime]) VALUES (4, N'Khách lẻ', NULL, N'KhachLe', NULL, NULL, NULL, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email], [Active], [CreatedTime]) VALUES (6, N'Đỗ Văn Long', N'0321542544', N'vanlong123', N'40FBE32A8A5789EA8F62F978C81D2BA7', N'TPHCM', N'khoimessi99@gmail.com', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email], [Active], [CreatedTime]) VALUES (8, N'Nguyễn Khôi', N'0784457598', N'nguyenkhoiKH', N'40FBE32A8A5789EA8F62F978C81D2BA7', N'TPHCM', N'nguyenminhduckhoi@gmail.com', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email], [Active], [CreatedTime]) VALUES (9, N'Nguyễn Khôi', N'0784457598', N'nguyenkhoiKH2', N'40FBE32A8A5789EA8F62F978C81D2BA7', N'TPHCM', N'khoimessi99@gmail.com', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email], [Active], [CreatedTime]) VALUES (10, N'Gia Minh', N'0784457598', N'GiaMinhKH', N'40FBE32A8A5789EA8F62F978C81D2BA7', N'TPHCM', N'tugiaminh01113@gmail.com', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[KhachHang] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [DiaChi], [Email], [Active], [CreatedTime]) VALUES (2030, N'Nguyễn Minh Khôi', N'0784457598', N'bacsi2', N'E10ADC3949BA59ABBE56E057F20F883E', N'436/77/22 CMT8 P11 Q3', N'khangyuki368@gmail.com', 1, CAST(N'2020-07-03T10:44:46.3464063' AS DateTime2))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([Id], [TenKhuyenMai], [PhanTram], [MoTa], [NgayBatDau], [NgayKetThuc], [Status]) VALUES (1, N'Khuyến mãi theo hóa đơn từ ngày 1/4/2020 đến 7/4/2020', 10, N'4', CAST(N'2020-05-01T00:00:00.000' AS DateTime), CAST(N'2020-05-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[KhuyenMai] ([Id], [TenKhuyenMai], [PhanTram], [MoTa], [NgayBatDau], [NgayKetThuc], [Status]) VALUES (2, N'khuyến mãi từ ngày 18/5/2020 đến 22/5/2020', 10, N'4', CAST(N'2020-05-18T00:00:00.000' AS DateTime), CAST(N'2020-05-22T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[KhuyenMai] ([Id], [TenKhuyenMai], [PhanTram], [MoTa], [NgayBatDau], [NgayKetThuc], [Status]) VALUES (3, N'Khuyến mãi theo nhóm sản phẩm từ ngày 1/4/2020 đến 7/1/2020', 10, N'1,4', CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[KhuyenMai] ([Id], [TenKhuyenMai], [PhanTram], [MoTa], [NgayBatDau], [NgayKetThuc], [Status]) VALUES (4, N'gsdfgsdgsdf', 10, N'1,6,9,11', CAST(N'2020-05-06T00:00:00.000' AS DateTime), CAST(N'2020-05-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[KhuyenMai] ([Id], [TenKhuyenMai], [PhanTram], [MoTa], [NgayBatDau], [NgayKetThuc], [Status]) VALUES (1001, N'KM U23 vô địch', 20, N'6', CAST(N'2020-07-08T00:00:00.000' AS DateTime), CAST(N'2020-07-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[KhuyenMai] ([Id], [TenKhuyenMai], [PhanTram], [MoTa], [NgayBatDau], [NgayKetThuc], [Status]) VALUES (1002, N'KM mùa dịch', 25, N'4,6', CAST(N'2020-07-08T00:00:00.000' AS DateTime), CAST(N'2020-07-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[KhuyenMai] ([Id], [TenKhuyenMai], [PhanTram], [MoTa], [NgayBatDau], [NgayKetThuc], [Status]) VALUES (2001, N'KM mùa dịch 2', 50, N'4,10', CAST(N'2020-07-10T00:00:00.000' AS DateTime), CAST(N'2020-07-12T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiKhuyenMai] ON 

INSERT [dbo].[LoaiKhuyenMai] ([Id], [TenLoaiKhuyenMai]) VALUES (1, N'Khuyến mãi theo hóa đơn')
INSERT [dbo].[LoaiKhuyenMai] ([Id], [TenLoaiKhuyenMai]) VALUES (2, N'Khuyến mãi theo sản phẩm')
INSERT [dbo].[LoaiKhuyenMai] ([Id], [TenLoaiKhuyenMai]) VALUES (3, N'Tạo Voucher')
SET IDENTITY_INSERT [dbo].[LoaiKhuyenMai] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (1, N'Topping', 2)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (4, N'Trà nguyên chất', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (6, N'LATTE SERIES', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (8, N'Nước uống đặc biệt', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (9, N'Thức uống sáng tạo', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (10, N'Trà Sữa', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (11, N'Thức uống đá xay', 1)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (12, N'Đá', 2)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (13, N'Đường', 2)
INSERT [dbo].[LoaiSanPham] ([Id], [TenLoaiSanPham], [SanPhamChinh]) VALUES (14, N'Size', 2)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NguyenLieu] ON 

INSERT [dbo].[NguyenLieu] ([Id], [TenNguyenLieu], [MoTa]) VALUES (1, N'nguyên liệu 1', NULL)
INSERT [dbo].[NguyenLieu] ([Id], [TenNguyenLieu], [MoTa]) VALUES (2, N'nguyên liệu 2', NULL)
INSERT [dbo].[NguyenLieu] ([Id], [TenNguyenLieu], [MoTa]) VALUES (3, N'nguyên liệu 3', NULL)
SET IDENTITY_INSERT [dbo].[NguyenLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[NguyenLieu_DonVi] ON 

INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (1, 1, 1, 1010, 2500)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (2, 1, 2, 120, 40000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (3, 3, 2, 30, 30000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (4, 3, 1, 10, 10000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (5, 2, 2, 460, 2500)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (6, 2, 1, 268, 2000)
INSERT [dbo].[NguyenLieu_DonVi] ([Id], [MaNguyenLieu], [MaDonViTinh], [SoLuong], [GiaNhap]) VALUES (1006, 1, 3, 10, 100000)
SET IDENTITY_INSERT [dbo].[NguyenLieu_DonVi] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([Id], [TenNCC], [DiaChi], [DienThoai]) VALUES (1, N'Nhà cung cấp China', NULL, NULL)
INSERT [dbo].[NhaCungCap] ([Id], [TenNCC], [DiaChi], [DienThoai]) VALUES (2, N'Nhà cung cấp Japan', NULL, NULL)
INSERT [dbo].[NhaCungCap] ([Id], [TenNCC], [DiaChi], [DienThoai]) VALUES (3, N'Nhà cung cấp ly', NULL, NULL)
INSERT [dbo].[NhaCungCap] ([Id], [TenNCC], [DiaChi], [DienThoai]) VALUES (4, N'Nhà cung cấp đá', NULL, NULL)
INSERT [dbo].[NhaCungCap] ([Id], [TenNCC], [DiaChi], [DienThoai]) VALUES (5, N'Nhà cung cấp vật dụng', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (1, N'Đỗ Tiến Sĩ', N'0123456789     ', N'Tien123', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, N'TPHCM', 2, 1)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (4, N'Quản lý Gong Cha Emporium', N'0386777373     ', N'EmporiumManager', N'E10ADC3949BA59ABBE56E057F20F883E', N'khoimessi99@gmail.com', N'TPHCM', 3, 2)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (5, N'Trần Hiếu Nhân', NULL, N'HNPhaChe1', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, N'TPHCM', 4, 1)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (7, N'Nguyễn Khôi', N'0784457598     ', N'NKThuNgan', N'25F9E794323B453885F5181F1B624D0B', NULL, N'TPHCM', 2, 4)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (9, N'Quản lý Gong Cha Bason', N'0386777373     ', N'BasonManager', N'E10ADC3949BA59ABBE56E057F20F883E', N'khoimessi99@gmail.com', N'TPHCM', 3, 1)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (10, N'Nguyễn Khôi', NULL, N'nkthungan98', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, NULL, 2, 2)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (11, N'Quản lý Gong Cha Saigon Centre', N'0784457598     ', N'SaigonCentreManager', N'E10ADC3949BA59ABBE56E057F20F883E', N'khoimessi99@gmail.com', N'TPHCM', 3, 3)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (12, N'Công Minh', N'0784457569     ', N'CMThuNgan', N'E10ADC3949BA59ABBE56E057F20F883E', N'khoimessi99@gmail.com', N'TPHCM', 2, 3)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (13, N'Trần Hiếu Nhân', NULL, N'HNPhaChe2', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, N'TPHCM', 4, 2)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (14, N'Trần Hiếu Nhân', NULL, N'HNPhaChe3', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, N'TPHCM', 4, 3)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (15, N'Trần Hiếu Nhân', NULL, N'HNPhaChe4', N'E10ADC3949BA59ABBE56E057F20F883E', NULL, N'TPHCM', 4, 4)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (1002, N'Nguyễn Minh Đức Khôi', NULL, N'khoimessi', N'8E10D3891CBA7051A76062541641325B', NULL, NULL, 4, 4)
INSERT [dbo].[NhanVien] ([Id], [HoTen], [SDT], [TenDangNhap], [MatKhau], [Email], [DiaChi], [MaChucVu], [MaChiNhanh]) VALUES (2002, N'Nguyễn Minh Khôi', NULL, N'abc', N'3B1A2559697B3BFF5D64245B42809F25', NULL, NULL, 2, 4)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanHoi] ON 

INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (1, N'Đồ uống quá ngon!!! 1', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (2, N'Giao hàng hơi chậm ', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 2, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (3, N'Trà sữa pha rất chuẩn', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (4, N'Sản phẩm rất ngon', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 2, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (5, N'Đồ uống rất ngon.', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (6, NULL, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (7, NULL, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (8, N'Chào mừng bạn đến với trà sữa Gong Cha, hãy cùng khám phá những khuyến mãi và ưu đãi của chúng tôi trong tháng này nhé.', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (9, N'phản hồi từ khách hàng', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (21, N'yuiyiyiyiyiyiy', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (22, N'con chó con', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 3, 0)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (23, N'utiomfmfmkfmf45365', CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (24, N'phản hồi từ khách hàng', CAST(N'2020-05-13T21:33:50.7333333' AS DateTime2), 1, 0)
INSERT [dbo].[PhanHoi] ([Id], [NoiDung], [ThoiGian], [MaKhachHang], [DaXem]) VALUES (1001, N'abc', CAST(N'2020-06-08T23:42:16.0198080' AS DateTime2), 9, 0)
SET IDENTITY_INSERT [dbo].[PhanHoi] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (1, N'Trà Sữa Matcha Đậu Đỏ', 10, 40000, 20000, N'trasuamatchadaudo.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (2, N'Trà Sữa Xoài Trân Châu Đen', 10, 39000, 19500, N'trasuaxoaitranchauden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (3, N'Trà Sữa Okianawa', 10, 39000, 19500, N'trasuaOkinawa.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (4, N'Trà Sữa Oolong', 10, 39000, 19500, N'trasuaoolong.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (6, N'Trà Sữa Chocolate', 10, 39000, 19500, N'trasuachocolate.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (7, N'Trà Sữa Trân Châu Đen', 10, 39000, 19500, N'trasuatranchauden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (8, N'Trà Sữa Hokkaido', 10, 39000, 19500, N'trasuahokkaido.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (9, N'Trà Sữa Cà Phê', 10, 39000, 19500, N'trasuacaphe.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (10, N'Trà Sữa Sương Sáo', 10, 39000, 19500, N'trasuasuongsao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (11, N'Trà Sữa Trà Đen', 10, 39000, 19500, N'trasuatraden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (12, N'Trà Sữa Trà Xanh', 10, 39000, 19500, N'trasuatraxanh.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (13, N'Trà Sữa Khoai Môn', 10, 39000, 19500, N'trasuakhoaimon.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (14, N'Trà Sữa Earl Grey', 10, 39000, 19500, N'trasuaearlgrey.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (15, N'Sữa Tươi Okinawa', 6, 32000, 32000, N'suatuoiokinawa.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (16, N'Strawberry Earl Grey Latte', 6, 32000, 32000, N'strawberryearlgreylatte.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (17, N'Mango Matcha Latte', 6, 32000, 32000, N'mangomatchalatte.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (18, N'Okinawa Latte', 6, 32000, 32000, N'okinawalatte.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (19, N'Trà Bí Đao Estore', 8, 32000, 32000, N'trabidaoestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (20, N'Trà Oolong Estore ', 8, 32000, 32000, N'traoolongestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (21, N'Trà Alisan Estore ', 8, 32000, 32000, N'traalisanestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (22, N'Trà Earl Grey Estore ', 8, 32000, 32000, N'traearlgreyestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (23, N'Trà Đen Estore ', 8, 32000, 32000, N'tradenestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (24, N'Trà Xanh Estore ', 8, 32000, 32000, N'traxanhestore.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (25, N'Trà Bí Đao Alisan', 4, 32000, 16000, N'trabidaoalisan.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (26, N'Trà Bí Đao', 4, 32000, 16000, N'trabidao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (27, N'Trà Alisan', 4, 32000, 16000, N'traalisan.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (28, N'Trà Earl Grey', 4, 32000, 16000, N'traearlgrey.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (29, N'Trà Oolong', 4, 32000, 16000, N'traoolong.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (30, N'Trà Đen', 4, 32000, 16000, N'traden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (31, N'Trà Xanh', 4, 32000, 16000, N'traxanh.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (32, N'QQ Chanh Dây Trà Xanh', 9, 32000, 32000, N'qqchanhdaytraxanh.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (33, N'Chanh Ai-yu và Trân Châu Trắng', 9, 32000, 32000, N'chanhaiyuvatranchautrang.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (34, N'Đào Hồng Mận Hạt É', 9, 32000, 32000, N'daohongmanhatee.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (35, N'Trà Oolong Vải', 9, 32000, 32000, N'traoolongvai.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (36, N'Trà Alisan Vải', 9, 32000, 32000, N'traalisanvai.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (37, N'Trà Alisan Xoài', 9, 32000, 32000, N'traalisanxoai.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (38, N'Trà Xanh Chanh Dây', 9, 32000, 32000, N'traxanhchanhday.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (39, N'Trà Alisan Chanh Dây', 9, 32000, 32000, N'traalisanchanhday.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (40, N'Trà Đen Đào', 9, 32000, 32000, N'tradendao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (41, N'Trà Xanh Đào', 9, 32000, 32000, N'traxanhdao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (42, N'Strawberry Oreo Smoothie', 11, 32000, 32000, N'Strawberry-Oreo-Smoothie.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (43, N'Chocolate Đá Xay', 11, 32000, 32000, N'chocolatedaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (44, N'Khoai Môn Đá Xay', 11, 32000, 32000, N'khoaimondaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (45, N'Matcha Đá Xay', 11, 32000, 32000, N'matchadaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (46, N'Yakult Đào Đá Xay', 11, 32000, 32000, N'Yakultdaodaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (47, N'Xoài Đá Xay', 11, 32000, 32000, N'xoaidaxay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (49, N'Kem Sữa', 1, 16000, 16000, N'kemsua.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (50, N'Nha Đam', 1, 10000, 10000, N'nhadam.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (51, N'Hạt É', 1, 10000, 10000, N'hate.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (52, N'Trân Châu Đen', 1, 10000, 10000, N'tranchauden.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (53, N'Trân Châu Trắng', 1, 10000, 10000, N'tranchautrang.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (54, N'Đậu Đỏ', 1, 10000, 10000, N'daudo.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (55, N'Sương Sáo', 1, 10000, 10000, N'suongsao.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (56, N'Thạch Nâu', 1, 10000, 10000, N'thachnau.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (57, N'Thạch Trái Cây', 1, 10000, 10000, N'thachtraicay.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (58, N'Thạch Ai-yu', 1, 10000, 10000, N'thachaiyu.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (59, N'Thạch Dừa', 1, 10000, 10000, N'thachdua.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (60, N'Pudding', 1, 10000, 10000, N'pudding.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (61, N'Combo 2 Loại Hạt', 1, 10000, 10000, N'combo2loaihat.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (62, N'Combo 3 Loại Hạt', 1, 10000, 10000, N'combo3loaihat.png', NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (63, N'100% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (64, N'70% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (66, N'50% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (67, N'30% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (68, N'0% Đường', 13, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (69, N'100% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (70, N'70% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (71, N'50% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (72, N'30% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (73, N'0% Đá', 12, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (74, N'Size M', 14, 0, 0, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (75, N'Size L', 14, 8000, 8000, NULL, NULL)
INSERT [dbo].[SanPham] ([Id], [TenSanPham], [MaLoaiSanPham], [GiaBan], [KhuyenMai], [Anh], [MoTa]) VALUES (92, N'Kem Trà Sữa', 8, 25000, 25000, N'79bc4871-1470-4b3c-ae7e-17bf7f1fc4ce_kem.png', NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SPChinh_Phu] ON 

INSERT [dbo].[SPChinh_Phu] ([Id], [SPChinh_Phu]) VALUES (1, N'Sản phẩm chính')
INSERT [dbo].[SPChinh_Phu] ([Id], [SPChinh_Phu]) VALUES (2, N'Sản phẩm phụ')
SET IDENTITY_INSERT [dbo].[SPChinh_Phu] OFF
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Active]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedTime]
GO
USE [master]
GO
ALTER DATABASE [WebsiteTraSua] SET  READ_WRITE 
GO
