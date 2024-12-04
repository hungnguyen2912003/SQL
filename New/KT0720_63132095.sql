create database KT0720_63132095

use KT0720_63132095

create table LOP(
	Malop varchar(20) primary key,
	Tenlop nvarchar(30)
);

create table SINHVIEN(
	MaSV varchar(20) primary key,
	HoSV nvarchar(20),
	TenSV nvarchar(20),
	Ngsinh DateTime,
	Gioitinh bit,
	AnhSV varchar(Max),
	Dchi nvarchar(50),
	Malop varchar(20)
);

alter table SINHVIEN
add constraint fk_lop_sinhvien foreign key (Malop) references LOP(Malop)