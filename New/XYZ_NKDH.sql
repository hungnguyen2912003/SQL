create database XYZ_NguyenKhacDuyHung;

go

use XYZ_NguyenKhacDuyHung;
go
create table LaiXe
(
	MaLX		varchar(9),
	Ho			nvarchar(30),
	Ten			nvarchar(30),
	GioiTinh	bit,
	DiaChi		nvarchar(50),
	SDT			varchar(20),
	constraint pk_laixe primary key (MaLX),
	constraint chk_gioitinh CHECK (GioiTinh in (0,1))
);
go
create table Xe
(
	MaXe		varchar(20),
	LoaiXe		nvarchar(50),
	TaiTrong	tinyint,
	TGKD		date,
	PhiVC		numeric(18,0),
	constraint pk_xe primary key (MaXe)
);
go
create table VanTai
(
	MaLX			varchar(9),
	MaXe			varchar(20),
	NgayVC			date,
	SoKm			numeric,
	TrongLuong	    numeric,
	constraint pk_vantai primary key (MaLX, MaXe, NgayVC)
);
go
insert into LaiXe(MaLX, Ho, Ten, GioiTinh, DiaChi, SDT)
values			('CN01', N'Nguyễn Văn', N'An', 0, N'Nha Trang - Khánh Hoà', '0898386715'),
				('CN02', N'Phạm Anh', N'Linh', 1, N'Củ Chi - TP HCM', '0972333603'),
				('CN03', N'Đinh Phạm', N'Khánh', 0, N'Q5 - Hà Nội', '0905452235'),
				('CN04', N'Trần Trung', N'Hiếu', 1, N'Bà Rịa - Vũng Tàu', '0495334922');
go
insert into Xe(MaXe, LoaiXe, TaiTrong, TGKD, PhiVC)
values			('79C3-58823', N'Xe tải Kazma', 15, '2022-05-15', 100000),
				('65F2-55921', N'Toyota Hilux', 5, '2020-11-20', 80000),
				('76B5-18221', N'Xe container', 10, '2021-08-01', 150000),
				('95C2-45332', N'Xe bán tải', 20, '2023-01-01', 120000);
go
insert into VanTai(MaLX, MaXe, NgayVC, SoKm, TrongLuong)
values			('CN01', '79C3-58823', '2022-11-01', 10, 25),
				('CN02', '65F2-55921', '2021-02-05', 15, 20),
				('CN03', '76B5-18221', '2021-12-16', 5, 15),
				('CN04', '95C2-45332', '2022-12-12', 16, 10);
go
alter table VanTai
add 	constraint fk_vantai_laixe foreign key (MaLX) references LaiXe(MaLX),
	constraint fk_vantai_xe foreign key (MaXe) references Xe(MaXe);