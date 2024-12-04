create database KhachSan_NguyenKhacDuyHung;

go

use KhachSan_NguyenKhacDuyHung;

go
CREATE TABLE Phong (
    MaPhong varchar(5) PRIMARY KEY,
    Tang INT,
    LoaiPhong nvarchar(50),
    GiaNiemYet float
);
go
CREATE TABLE KhachHang (
    MaKH varchar(4) PRIMARY KEY,
    HoKH nvarchar(50),
    TenKH nvarchar(50),
    SoCC varchar(20),
    GioiTinh BIT,
    SoDienThoai varchar(10)
);

go

CREATE TABLE PhieuDatPhong (
    MaPhieu varchar(6) PRIMARY KEY,
    MaKH varchar(4),
    NgayDatPhong DATE,
	constraint fk_pdp_kh foreign key (MaKH) references KhachHang(MaKH)
);

go

CREATE TABLE ChiTietPDP (
    MaPhieu varchar(6),
    MaPhong varchar(5),
    NgayDen DATE,
    NgayDi DATE,
    DonGia FLOAT,
	constraint pk_ct primary key (MaPhieu, MaPhong),
	constraint pk_pdp foreign key (MaPhieu) references PhieuDatPhong(MaPhieu),
	constraint pk_phg foreign key (MaPhong) references Phong(MaPhong)
);
go
INSERT INTO Phong (MaPhong, Tang, LoaiPhong, GiaNiemYet)
VALUES ('A101', 1, N'Phổ thông', 150000),
       ('B202', 2, N'Cao cấp', 250000),
       ('C303', 3, N'Tổng thống', 500000);
go
INSERT INTO KhachHang (MaKH, HoKH, TenKH, SoCC, GioiTinh, SoDienThoai)
VALUES ('0001', N'Trần Văn', N'An', '0123456789000', 0, '0123456789'),
       ('0002', N'Lê Thị', N'Bình', '0123456789001', 1, '0123456788'),
       ('0003', N'Nguyễn Thị', N'Hoa', '0123456789002', 1, '0123456787');
go
INSERT INTO PhieuDatPhong (MaPhieu, MaKH, NgayDatPhong)
VALUES ('P0001', '0001', '2022-01-01'),
       ('P0002', '0002', '2022-02-15'),
       ('P0003', '0003', '2022-03-30');
go
INSERT INTO ChiTietPDP (MaPhieu, MaPhong, NgayDen, NgayDi, DonGia)
VALUES ('P0001', 'A101', '2022-01-01', '2022-01-03', 150000),
       ('P0002', 'B202', '2022-02-15', '2022-02-20', 250000),
       ('P0003', 'C303', '2022-03-30', NULL, 500000);