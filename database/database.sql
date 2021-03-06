USE [DoAnJava]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 27/04/2022 9:12:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaCTDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[UuDai] [int] NULL,
	[ThanhTien] [int] NULL,
	[DaXoa] [int] NULL,
	[TongThanhToan] [int] NULL,
 CONSTRAINT [PK_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaCTPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[DaXoa] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLoaiNV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNV] [nvarchar](100) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](200) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTK] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTK] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[Fax] [varchar](50) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](200) NULL,
	[NamSinh] [date] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[NgayVaoLamViec] [date] NULL,
	[DaXoa] [int] NULL,
	[MaLoaiNV] [int] NULL,
	[TenDangNhap] [varchar](100) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](200) NULL,
	[ThongTin] [nvarchar](max) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [int] NULL,
	[MaNV] [int] NULL,
	[MaNCC] [int] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[DonGia] [int] NULL,
	[NgayCapNhat] [date] NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [varchar](200) NULL,
	[SLTon] [int] NULL,
	[DaXoa] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [varchar](100) NULL,
	[DaXoa] [int] NULL,
	[MaLoaiTK] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (1, 1, 1, 1, 0, 5500000, 0, 5500000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (2, 1, 14, 3, 500000, 11000000, 1, 10500000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (3, 1, 25, 4, 5000000, 117960000, 1, 112960000)
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON 

INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (1, 1, 1, 12, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (2, 1, 18, 20, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (6, 1, 19, 5, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (7, 4, 2, 10, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (8, 4, 14, 50, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (9, 4, 23, 30, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (10, 4, 24, 10, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (11, 4, 2, 5, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (12, 4, 1, 4, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (13, 4, 1, 2, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (14, 1, 25, 10, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (15, 9, 20, 10, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (16, 9, 21, 20, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (17, 9, 22, 10, 0)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (1, CAST(N'2022-04-23T00:00:00.000' AS DateTime), CAST(N'2022-04-23T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (2, CAST(N'2022-05-20T00:00:00.000' AS DateTime), CAST(N'2022-05-20T00:00:00.000' AS DateTime), 0, 4)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (1, N'Lê Văn An', N'Q9', N'0323303233', N'an@gmail.com', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (2, N'Nguyễn Võ Hữu Duy', N'Q1', N'0352233222', N'duy@gmail.com', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (3, N'Nguyễn Anh Tuyên', N'15C khu phố 6 p.Hiệp Phú q.9', N'0394420076', N'nguyenanhtuyen10a5@gmail.com', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (4, N'Nguyễn Thanh Tấn', N'Cát Chánh', N'0356623456', N'tan@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiNhanVien] ON 

INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV], [DaXoa]) VALUES (1, N'Bộ phận quản lý kho', 0)
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV], [DaXoa]) VALUES (2, N'Bộ phận bán hàng', 0)
SET IDENTITY_INSERT [dbo].[LoaiNhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (1, N'Iphone', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (3, N'Oppo', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (4, N'Xiaomi', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (5, N'Vivo', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (6, N'Samsung', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (9, N'Nokia', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (10, N'mobie', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (11, N'', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (12, N't', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (13, N'Sam', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (14, N'Sony', 1)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON 

INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (1, N'Quản lý kho')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (2, N'Bán hàng')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (1, N'Cửa hàng Iphone', N'161 Lê Văn Việt Q.9 TP.HCM', N'0350303033', N'ip123@gmail.com', N'+84 (8) 3823 3318', 0)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (2, N'Trung tâm Oppo', N'188 Đ. Võ Văn Ngân, Bình Thọ, Thủ Đức, Thành phố Hồ Chí Minh', N'0283736224', N'ttoppo@gmail.com', N'+84 (8) 3820 3320', 0)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (3, N'Thế Giới Xiaomi - Siêu thị Xiaomi chính hãng', N'134 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh', N'1900 636469', N'thegioixiaomi@gmail.com', N'+84 (8) 3822 2522', 0)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (1, N'Nguyễn Võ Hữu Duy', CAST(N'2001-01-01' AS Date), N'Cát Tiến', N'0352233022', N'duy@gmail.com', CAST(N'2022-04-18' AS Date), 0, 1, N'qlkho2')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (2, N'Nguyễn Thành Quốc', CAST(N'2001-02-02' AS Date), N'Cát Nhơn', N'0325506033', N'quoc@gmail.com', CAST(N'2022-04-10' AS Date), 0, 2, N'qlbanhang2')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (3, N'Võ Thành Công', CAST(N'2001-03-03' AS Date), N'Cát Chánh', N'0352033022', N'cong@gmail.com', CAST(N'2022-01-04' AS Date), 0, 2, N'qlbanhang3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (4, N'Nguyễn Phước Sinh', CAST(N'2001-04-04' AS Date), N'Cát Nhơn', N'0365523654', N'sinh@gmail.com', CAST(N'2022-02-02' AS Date), 1, 1, N'qlkho4')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (5, N'Nguyễn Minh Trọng', CAST(N'2001-01-01' AS Date), N'Cát Chánh', N'0352230023', N'trong@gmail.com', CAST(N'2022-03-03' AS Date), 1, 1, N'qlkho3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (7, N'sd', CAST(N'2002-01-01' AS Date), N'sd', N'sd', N'sd', CAST(N'2332-01-01' AS Date), 1, 2, N'admin')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (10, N'Lê Văn An', CAST(N'2001-04-12' AS Date), N'Cát Thắng', N'0325563256', N'an@gmail.com', CAST(N'2022-04-21' AS Date), 0, 2, N'qlbanhang4')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (11, N'Phan Đình Nhật', CAST(N'2001-12-25' AS Date), N'Cát Tiến', N'0352233033', N'nhat@gmail.com', CAST(N'2022-04-22' AS Date), 0, 1, N'qlkho5')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (1, N'Apple Inc', N'Apple Inc. là một tập đoàn công nghệ đa quốc gia của Mỹ có trụ sở chính tại Cupertino, California, chuyên thiết kế, phát triển và bán thiết bị điện tử tiêu dùng, phần mềm máy tính và các dịch vụ trực tuyến', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (2, N'OPPO Electronics Corp', N'OPPO Electronics Corp là nhà sản xuất thiết bị điện tử, điện thoại di động Android Trung Quốc, có trụ sở đặt tại Đông Hoản, Quảng Đông, công ty con của tập đoàn điện tử BBK Electronics. OPPO cung cấp một số sản phẩm chính như máy nghe nhạc MP3, eBook, DVD/Blu-ray và điện thoại thông minh.', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (3, N'Xiaomi Inc', N'Xiaomi là tập đoàn công nghệ của Trung Quốc, có trụ sở tại Bắc Kinh. Thương hiệu này được xem là Apple của Trung Quốc, chỉ sau 5 năm thành lập, Xiaomi đã trở thành nhà sản xuất smartphone có thị phần đứng thứ 5 thế giới và đứng thứ 1 tại thị trường trong nước (năm 2015).', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (4, N'Vivo Inc', N'Vivo là một công ty Trung Quốc chuyên thiết kế, phát triển và sản xuất điện thoại thông minh Android, phụ kiện điện thoại thông minh, phần mềm và dịch vụ trực tuyến. Vivo được thành lập năm 2009 tại Đông Hoản, Quảng Đông, và là công ty con của tập đoàn BBK Electronics.', 0)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (1, CAST(N'2022-03-26T00:00:00.000' AS DateTime), 0, 1, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (4, CAST(N'2022-02-02T00:00:00.000' AS DateTime), 0, 1, 2)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (7, CAST(N'2222-02-02T00:00:00.000' AS DateTime), 1, 2, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (8, CAST(N'2022-04-02T00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (9, CAST(N'2022-01-02T00:00:00.000' AS DateTime), 0, 1, 3)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (1, N'Iphone7 Plus', 5500000, CAST(N'2022-04-12' AS Date), N'Màn hình: LED-backlit IPS LCD, Retina HD
Hệ điều hành: IOS 14
Camera sau: 2 camera 12 MP
Camera trước: 7 MP
Chip: Apple A10 Fusion
Ram: 3GB
Bộ nhớ trong: 32 GB
SIM: 1 Nano SIM, hỗ trợ 4G
Pin, sạc: 2900 mAh', N'F:\javadoan\source code\images\products\iphone\iphone7plus.jpg', 11, 0, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (2, N'Oppo A95', 6990000, CAST(N'2022-04-10' AS Date), N'Màn hình: AMOLED, Full HD
Hệ điều hành: Android 11
Camera sau: Chính 48 MP & phụ 2 MP, 2 MP
Camera trước: 16 MP
Chip: Snapdragon 662
Ram: 8GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, hỗ trợ 4G
Pin, sạc: 5000 mAh, 33W', N'F:\javadoan\source code\images\products\oppo\oppoA95.png', 10, 0, 3, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (10, N'iphone 11 pro', 18500000, CAST(N'1970-01-01' AS Date), N'Tốt', N'', 10, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (11, N'sd', 1, CAST(N'1970-01-01' AS Date), N'ư', N'', 1, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (12, N'bvb', 1, CAST(N'1970-01-01' AS Date), N't', N'', 1, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (13, N's', 1, CAST(N'2022-01-01' AS Date), N'f', N'', 1, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (14, N'Oppo A55', 4990000, CAST(N'2022-04-21' AS Date), N'Màn hình: IPS LCD, HD+
Hệ điều hành: Android 11
Camera sau: Chính 50 MP & phụ 2 MP, 2 MP
Camera trước: 16 MP
Chip: Media Tek Helio G35
Ram: 4GB
Bộ nhớ trong: 64 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, sạc: 5000 mAh, 18 W', N'F:\javadoan\source code\images\products\oppo\oppoA55.png', 50, 0, 3, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (17, N'dvdv', 12, CAST(N'2050-12-12' AS Date), N'ưew', N'F:\javadoan\source code\images\newsp.png', 1, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (18, N'Iphone8 Plus', 6490000, CAST(N'2022-04-21' AS Date), N'Màn hình: LED-backlit IPS LCD, Retina HD
Hệ điều hành: IOS 14
Camera sau: 2 camera 12 MP
Camera trước: 7 MP
Chip: Apple A10 Fusion
Ram: 3GB
Bộ nhớ trong: 64 GB
SIM: 1 Nano SIM, hỗ trợ 4G
Pin, sạc: 2900 mAh', N'F:\javadoan\source code\images\products\iphone\iphone8plus.jpg', 20, 0, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (19, N'Iphone11 Pro Max', 15990000, CAST(N'2022-04-25' AS Date), N'Màn hình: OLED, Super Retina XDR
Hệ điều hành: IOS 14
Camera sau: 3 camera 12 MP
Camera trước: 12 MP
Chip: Apple A13 Blonic
RAM: 4 GB
Bộ nhớ trong: 64 GB
SIM: 1 Nano SIM & eSIM, hỗ trợ 4G
Pin, sạc: 3969 mAh', N'F:\javadoan\source code\images\products\iphone\iphone11promax.jpg', 5, 0, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (20, N'Xiaomi 11T 5G', 9490000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.67", Full HD
Hệ điều hành: Android 11
Camera sau: Chính 108 MP & phụ 8 MP, 5 MP
Camera trước: 16 MP
Chip: Media Tek Dimensity 1200
RAM: 8 GB
Bộ nhớ trong: 256 GB
SIM: 2 Nano SIM, hỗ trợ 5G
Pin, sạc: 5000 mAh, 67 W', N'F:\javadoan\source code\images\products\xiaomi\xiaomi11t5G.jpg', 10, 0, 4, 3, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (21, N'Redmi Note 11', 5490000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.43", Full HD
Hệ điều hành: Android 11
Camera sau: Chính 50 MP & phụ 8 MP, 2 MP, 2 MP
Camera trước: 13 MP
Chip: Snapdragon 680
RAM: 6 GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, hỗ trợ 4G
Pin, sạc: 5000 mAh, 33 W', N'F:\javadoan\source code\images\products\xiaomi\redminote11.jpg', 20, 0, 4, 3, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (22, N'Redmi Note 10', 4490000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.43", Full HD
Hệ điều hành: Android 11
Camera sau: Chính 48 MP & phụ 8 MP, 2 MP, 2 MP
Camera trước: 13 MP
Chip: Snapdragon 678
RAM: 6 GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, hỗ trợ 4G
Pin, sạc: 5000 mAh, 33 W', N'F:\javadoan\source code\images\products\xiaomi\redminote10.jpg', 10, 0, 4, 3, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (23, N'Oppo Reno7', 10490000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.43", Full HD+
Hệ điều hành: Android 11
Camera sau: Chính 64 MP & phụ 2 MP, 2 MP
Camera trước: 16 MP
Chip: Snapdragon 695 5G
Ram: 8 GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 5G
Pin, sạc: 4500 mAh, 33 W', N'F:\javadoan\source code\images\products\oppo\opporeno7.jpg', 30, 0, 3, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (24, N'Oppo Reno6 5G', 12990000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.43", Full HD+
Hệ điều hành: Android 11
Camera sau: Chính 64 MP & phụ 8 MP, 2 MP
Camera trước: 32 MP
Chip: MediaTek Dimensity 900 5G
Ram: 8 GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 5G
Pin, sạc: 4300 mAh, 65 W', N'F:\javadoan\source code\images\products\oppo\opporeno6.jpg', 10, 0, 3, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (25, N'Iphone13 Pro ', 29490000, CAST(N'2022-04-26' AS Date), N'Màn hình: OLED, 6.1", Super Retina XDR
Hệ điều hành: IOS 15
Camera sau: 3 camera 12 MP
Camera trước: 12 MP
Chip: Apple A15 Blonic
RAM: 6 GB
Bộ nhớ trong: 128 GB
SIM: 1 Nano SIM & 1 eSIM, hỗ trợ 5G
Pin, sạc: 3095 mAh, 20 W', N'F:\javadoan\source code\images\products\iphone\iphone13pro.jpg', 10, 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'admin', N'123', 0, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang2', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang3', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang4', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang5', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho', N'123', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho2', N'123', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho3', N'456', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho4', N'456', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho5', N'123', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho6', N'123', 0, 1)
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiNhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiNhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham1] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap1] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat1] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat1]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTK])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachTaiKhoanTheoMaLoaiTaiKhoan]    Script Date: 27/04/2022 9:12:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LayDanhSachTaiKhoanTheoMaLoaiTaiKhoan]
@maLoaiTK int
as
select * from TaiKhoan where MaLoaiTK = @maLoaiTK
GO
