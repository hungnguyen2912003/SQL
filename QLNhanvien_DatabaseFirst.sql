create database QLNhanvien_DatabaseFirst
use QLNhanvien_DatabaseFirst

create table Nhanvien(
	manhanvien int primary key,
	tennhanvien nvarchar(30),
	ngaysinh DateTime,
	luong decimal,
	hinhanh varchar(Max),
	maphong int
);

create table Phongban(
	maphong int primary key,
	tenphong nvarchar(20)
);

alter table Nhanvien
add constraint fk_nhanvien_phongban foreign key (maphong) references Phongban(maphong)