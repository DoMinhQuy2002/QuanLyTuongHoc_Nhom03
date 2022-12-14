USE [QuanLyTruongHocDB]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [varchar](10) NOT NULL,
	[TenGV] [nvarchar](50) NOT NULL,
	[NgaySinh] [varchar](10) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DienThoai] [varchar](10) NOT NULL,
	[MaGVQuanLi] [varchar](10) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien_Day_MonHoc]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien_Day_MonHoc](
	[MaGV] [varchar](10) NOT NULL,
	[MaMH] [varchar](10) NOT NULL,
	[ThamNien] [int] NOT NULL,
	[SoLopDaDay] [int] NOT NULL,
 CONSTRAINT [PK_GiaoVien_Day_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HocVien]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocVien](
	[MaHocVien] [varchar](10) NOT NULL,
	[TenHocVien] [nvarchar](50) NOT NULL,
	[NgaySinh] [varchar](10) NOT NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
 CONSTRAINT [PK_HocVien_1] PRIMARY KEY CLUSTERED 
(
	[MaHocVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQuaSinhVien]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQuaSinhVien](
	[MaKQHV] [varchar](10) NOT NULL,
	[MaMonHoc] [varchar](10) NOT NULL,
	[LanThi] [varchar](1) NOT NULL,
	[DiemTB] [varchar](3) NOT NULL,
 CONSTRAINT [PK_KetQuaSinhVien] PRIMARY KEY CLUSTERED 
(
	[MaKQHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [varchar](10) NOT NULL,
	[TenMonHoc] [nvarchar](50) NOT NULL,
	[SoChi] [int] NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [varchar](10) NULL,
	[MatKhau] [varchar](15) NULL,
	[Loai] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'0123456789', N'Quy', N'20/10/2002', N'Nam', N'0123456789', N'0123456789')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'0987654321', N'Loi', N'Monday, Oc', N'Nam', N'0987654321', N'0987654321')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'10082002lo', N'Loi', N'20/10/1969', N'Nam', N'0363698191', N'10082002lo')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'3333333333', N'Nguyen Huu Loi', N'06/07/1989', N'Nam', N'0123456789', N'0123456789')
GO
INSERT [dbo].[HocVien] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'2006020009', N'Đỗ Minh Quý', N'20/10/2002', N'Đang học', N'14THC')
GO
INSERT [dbo].[KetQuaSinhVien] ([MaKQHV], [MaMonHoc], [LanThi], [DiemTB]) VALUES (N'2006020009', N'THVP02', N'2', N'6.5')
GO
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'1', N'1', 14)
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Loai]) VALUES (N'admin', N'123456', 0)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Loai]) VALUES (N'chipu', N'123456', 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [Loai]) VALUES (N'chiLinh', N'123456', 2)
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_GiaoVien] FOREIGN KEY([MaGVQuanLi])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_GiaoVien]
GO
ALTER TABLE [dbo].[GiaoVien_Day_MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVienDayMonHoc_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[GiaoVien_Day_MonHoc] CHECK CONSTRAINT [FK_GiaoVienDayMonHoc_GiaoVien]
GO
ALTER TABLE [dbo].[GiaoVien_Day_MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVienDayMonHoc_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[GiaoVien_Day_MonHoc] CHECK CONSTRAINT [FK_GiaoVienDayMonHoc_MonHoc]
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaGV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaGV]
	@magv varchar(10),
	@tengv nvarchar(50),
	@ngaysinh varchar(10),
	@gioitinh nvarchar(10),
	@dienthoai varchar(10),
	@magvquanli varchar(10)

AS

	UPDATE GiaoVien
	SET TenGV = @tengv, NgaySinh = @ngaysinh, GioiTinh = @gioitinh, DienThoai = @dienthoai, MaGVQuanLi = @magvquanli
	WHERE MaGV = @magv
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaGVDMH]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaGVDMH]
	@maGv varchar(10),
	@maMH varchar(10),
	@thamNien int,
	@soLopDaDay int

AS

	UPDATE GiaoVien_Day_MonHoc
	SET MaGV = @maGv, MaMH = @thamNien, SoLopDaDay = @soLopDaDay
	WHERE MaGV = @maGv
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaKQSV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaKQSV]
	@maKq varchar(10),
	@maMh varchar(10),
	@lanThi varchar(1),
	@diemTB varchar(3)
AS
	UPDATE KetQuaSinhVien
	SET MaKQHV = @maKq ,MaMonHoc = @maMh , LanThi = @lanThi, DiemTB = @diemTB
	WHERE MaKQHV = @maKq
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaMH]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaMH]
	@maMH varchar(10),
	@tenMH nvarchar(50),
	@soChi int
AS
	UPDATE MonHoc
	SET MaMonHoc = @maMH, TenMonHoc = @tenMH, SoChi = @soChi
	WHERE MaMonHoc = @maMH
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaSV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaSV]
	@maHv varchar(10),
	@tenHv nvarchar(50),
	@ngaySinh varchar(10),
	@tinhTrang nvarchar(50),
	@maLop varchar(10)

AS
	UPDATE HocVien
	SET MaHocVien = @maHv, TenHocVien = @tenHv, NgaySinh = @ngaySinh, TinhTrang = @tinhTrang, MaLop = @maLop
	WHERE MaHocVien = @maHv
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTaiKhoan]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SuaTaiKhoan]
	@ten varchar(10),
	@matkhau varchar(15),
	@loai int

AS
	UPDATE TaiKhoan
	SET MatKhau = @matkhau, Loai = @loai
	WHERE TenDangNhap = @ten
GO
/****** Object:  StoredProcedure [dbo].[sp_TaoGV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TaoGV]
	@magv varchar(10),
	@tengv nvarchar(50),
	@ngaysinh varchar(10),
	@gioitinh nvarchar(10),
	@dienthoai varchar(10),
	@magvquanli varchar(10)

AS

	INSERT INTO GiaoVien VALUES(@magv, @tengv, @ngaysinh, @gioitinh, @dienthoai, @magvquanli)
GO
/****** Object:  StoredProcedure [dbo].[sp_TaoGVDMH]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TaoGVDMH]
	@maGv varchar(10),
	@maMH varchar(10),
	@thamNien int,
	@soLopDaDay int

AS

	INSERT INTO GiaoVien_Day_MonHoc VALUES(@maGv, @maMH, @thamNien, @soLopDaDay)
GO
/****** Object:  StoredProcedure [dbo].[sp_TaoKQSV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TaoKQSV]
	@maKq varchar(10),
	@maMh varchar(10),
	@lanThi varchar(1),
	@diemTB varchar(3)
AS
	INSERT INTO KetQuaSinhVien VALUES(@maKq, @maMh, @lanThi, @diemTB)
GO
/****** Object:  StoredProcedure [dbo].[sp_TaoMH]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TaoMH]
	@maMH varchar(10),
	@tenMH nvarchar(50),
	@soChi int
AS
	INSERT INTO MonHoc VALUES(@maMH, @tenMH, @soChi)
GO
/****** Object:  StoredProcedure [dbo].[sp_TaoSV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TaoSV]
	@maHv varchar(10),
	@tenHv nvarchar(50),
	@ngaySinh varchar(10),
	@tinhTrang nvarchar(50),
	@maLop varchar(10)

AS

	INSERT INTO HocVien VALUES(@maHv, @tenHv, @ngaySinh, @tinhTrang, @maLop)
GO
/****** Object:  StoredProcedure [dbo].[sp_TaoTaiKhoan]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TaoTaiKhoan]
	@TenDangNhap varchar(10),
	@MatKhau varchar(15),
	@Loai int

AS
	INSERT INTO TaiKhoan VALUES(@TenDangNhap, @MatKhau, @Loai)
GO
/****** Object:  StoredProcedure [dbo].[sp_TimGV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimGV]
	@magv varchar(10)

AS

	SELECT * FROM GiaoVien WHERE MaGV LIKE CONCAT('%', @magv, '%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimGVDMH]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimGVDMH]
	@maGv varchar(10)

AS

	SELECT * FROM GiaoVien_Day_MonHoc WHERE MaGV LIKE CONCAT('%', @maGv, '%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKQSV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimKQSV]
	@maKq varchar(10)

AS

	SELECT * FROM KetQuaSinhVien WHERE MaKQHV LIKE CONCAT('%', @maKq, '%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimMH]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimMH]
	@maMH varchar(10)
AS
	SELECT * FROM MonHoc WHERE MaMonHoc LIKE CONCAT('%', @maMH, '%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimSV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimSV]
	@maHv varchar(10)

AS

	SELECT * FROM HocVien WHERE MaHocVien LIKE CONCAT('%', @maHv, '%')
GO
/****** Object:  StoredProcedure [dbo].[sp_TimTaiKhoan]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TimTaiKhoan]
	@ten varchar(10)

AS
	SELECT * FROM TaiKhoan WHERE TenDangNhap LIKE CONCAT('%', @ten, '%')
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaGV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaGV]
	@magv varchar(10)

AS

	DELETE FROM GiaoVien WHERE MaGV = @magv
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaGVDMH]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaGVDMH]
	@maGv varchar(10)

AS

	DELETE FROM GiaoVien_Day_MonHoc WHERE MaGV = @maGv
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaKQSV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaKQSV]
	@maKq varchar(10)

AS

	DELETE FROM KetQuaSinhVien WHERE MaKQHV = @maKq
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaMH]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaMH]
	@maMH varchar(10)
AS
	DELETE FROM MonHoc WHERE MaMonHoc = @maMH
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaSV]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaSV]
	@maHv varchar(10)

AS

	DELETE FROM HocVien WHERE MaHocVien = @maHv
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTaiKhoan]    Script Date: 22-12-2022 9:32:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaTaiKhoan]
	@ten varchar(10)
AS
	DELETE FROM TaiKhoan WHERE TenDangNhap = @ten
GO
