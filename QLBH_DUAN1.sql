
	Drop Database QLBANHANG
Create Database QLBANHANG;
use QLBANHANG;
go
-- Tạo bảng:

If OBJECT_ID ('SANPHAM') Is Not Null
	Drop Table SANPHAM
Go
Create Table SANPHAM
(
	MaSP		varchar(10) Not Null,
	TenSP		varchar(50) Null,
	LoaiSP		varchar(50)  Null,	
	DonGia		Int null,
	SLTon		Int null,
	MoTa		varchar(1000) Null,
	Constraint PK_SANPHAM Primary Key (MaSP) 
);

-- - 
If OBJECT_ID ('TAIKHOAN') Is Not Null
	Drop Table TAIKHOAN
Go
Create Table TAIKHOAN
(
	TaiKhoan	varchar(50) Not Null,
	MatKhau		varchar(20) Not Null,
	VaiTro		varchar(50) Null,
	Ten			varchar(50)  Null,
	DiaChi		varchar(50)  Null,
	Email		varchar(50)  Null,
	SDT			varchar(50)  Null,
	Constraint PK_TAIKHOAN Primary Key (TaiKhoan) 
);

If OBJECT_ID ('HOADON') Is Not Null
	Drop Table HOADON
Go
Create Table HOADON
(
	MaHD		varchar(50) Not Null,
	TaiKhoan	varchar(50) Not Null,
	MaSP		varchar(10) Not Null,
	SoLuong		Int null,
	NgayLap		Date null,
	TongTien	Int null,
	Constraint PK_HOADON Primary Key (MaHD) ,
	Constraint FK_HOADON_SANPHA	FOREIGN KEY (MaSP) REFERENCES SANPHAM(MaSP),
	Constraint FK_HOADON_TAIKHOAN FOREIGN KEY (TaiKhoan) REFERENCES TAIKHOAN(TaiKhoan)
	);

	If OBJECT_ID ('CHAMCONG') Is Not Null
	Drop Table CHAMCONG
Go
Create Table CHAMCONG
(
	BatDau Date not null,
	KetThuc Date not null,
	TaiKhoan varchar(50) not null,
	SoGioLam Int null,
	Constraint PK_CHAMCONG Primary Key (BatDau) ,
	Constraint FK_CHAMCONG_TAIKHOAN	FOREIGN KEY (TaiKhoan) REFERENCES TAIKHOAN(TaiKhoan)
);
	select * from SANPHAM
	select * from TAIKHOAN
	select * from HOADON
	select * from CHAMCONG

	--nhap lieu

	delete from SANPHAM
	insert into SANPHAM values('SP001','OPPO Reno','OPPO',10000000,100,'')
	insert into SANPHAM values('SP002','OPPO Reno2','OPPO',15000000,100,'')
	insert into SANPHAM values('SP003','IPHONE 11','APPLE IPHONE',35000000,100,'')
	insert into SANPHAM values('SP004','IPHONE 11 PRO MAX','APPLE IPHONE',45000000,100,'')
	insert into SANPHAM values('SP005','IPHONE X','APPLE IPHONE',25000000,100,'')
	insert into SANPHAM values('SP006','IPHONE  XS MAX','APPLE IPHONE',30000000,100,'')
	insert into SANPHAM values('SP007','SAMSUNG S10','SAMSUNG',20000000,100,'')
	insert into SANPHAM values('SP008','SAMSUNG NOTE10','SAMSUNG',25000000,100,'')
	insert into SANPHAM values('SP009','SAMSUNG NOTE10+','SAMSUNG',30000000,100,'')
	insert into SANPHAM values('SP010','XIAOMI Redmi Note 7','XIAOMI',5000000,100,'')
	insert into SANPHAM values('SP011','XIAOMI Redmi Note 8','XIAOMI',8000000,100,'')
	insert into SANPHAM values('SP012','XIAOMI Mi 9','XIAOMI',10000000,100,'')
	insert into SANPHAM values('SP013','HUAWEI P30 Pro','HUAWEI',20000000,100,'')
	insert into SANPHAM values('SP014','HUAWEI Y9 Prime','HUAWEI',10000000,100,'')
	insert into SANPHAM values('SP015','HUAWEI Nova 3I','HUAWEI',15000000,100,'')

	--taikhoan
	delete from TAIKHOAN
	insert into TAIKHOAN values('tinhdd','tinh1995','admin','Do Danh Tinh','Bac Ninh','tinhddph07152@fpt.edu.vn','0983126906')
	insert into TAIKHOAN values('linhpq','linh1998','customers','Phan Quang Linh','Phu Tho','linhpqph07153@fpt.edu.vn','0953648264')