create database QuanLyDeAn_NguyenKhacDuyHung

go 

use QuanLyDeAn_NguyenKhacDuyHung

go

create table NHANVIEN
(
	MANV varchar(9) PRIMARY KEY,
	HONV nvarchar(15),
	TENLOT nvarchar(30),
	TENNV nvarchar(30),
	NGSINH smalldatetime,
	DCHI nvarchar(150),
	PHAI nvarchar(3),
	LUONG numeric(18,0),
	MA_NQL varchar(9),
	PHG varchar(2)
);

go

insert into NHANVIEN
values	('001', N'Nguyễn', N'Khắc', N'Duy Hưng', '2003-01-29', N'1202/21 Hai Tháng Tư, TP Nha Trang', N'Nam', 42500000, '004', '4'),
		('002', N'Lê', N'Minh', N'Tính', '1973-02-15', N'25/3 Lạc Long Quân, Q.10, TP Hồ Chí Minh', N'Nam', 15000000, '012', '6'),
		('003', N'Lê', N'Thanh', N'Sang', '1954-10-23', N'234 3/2, TP Biên Hòa', N'Nam', 54000000, '001', '3'),
		('004', N'Trần', N'Anh', N'Tuấn', '1977-08-06', N'22/11 Lý Thường Kiệt,TP Mỹ Tho', N'Nam', 25000000, '003', '1'),
		('005', N'Trần', N'Trung', N'Hiếu', '1988-05-20', N'12/21 Võ Văn Ngân Thủ Đức, TP Hồ Chí Minh', N'Nam', 35000000, '010', '9'),
		('006', N'Nguyễn', N'Ngọc', N'Ánh', '1998-06-11', N'234 Trấn Não, An Phú, TP Hồ Chí Minh', N'Nữ', 65000000, '004', '8'),
		('007', N'Trần', N'Bạch', N'Tuyết', '1993-12-12', N'17 Tuệ Tĩnh, Hà Nội', N'Nữ', 13000000, '012', '5'),
		('008', N'Đỗ', N'Bích', N'Trâm', '2002-01-16', N'516 Phố Dư Thu Uyển, Thôn Miên Ý, Huyện Lộc Chiêu, Cần Thơ', N'Nữ', 50000000, '001', '6'),
		('009', N'Hồ', N'Thị', N'Ngân Anh', '2001-07-06', N'548 Phố Đặng, Phường 1, Quận 86, Phú Yên', N'Nữ', 32000000, '003', '9'),
		('010', N'Trần', N'Mỹ', N'Duyên', '2001-09-19', N'18 Phố Trương Phước Du, Xã 94, Huyện Mỹ, Hậu Giang', N'Nữ', 90000000, '010', '7'),
		('011', N'Phạm', N'Minh', N'Hoàng', '1992-04-17', N'245 Phố Hùng Khánh Toản, Xã Bích Lều, Quận 42, Vĩnh Phúc', N'Nam', 75000000, '008', '10'),
		('012', N'Nguyễn', N'Thiên', N'Ân', '1996-08-06', N'65, Thôn Ly Ca, Phường 25, Huyện Lại Võ, Bạc Liêu', N'Nam', 150000000, '016', '5'),
		('013', N'Nguyễn', N'Duy', N'Tân', '1997-11-23', N'34 Phố Bồ, Xã 71, Quận 04, Hải Phòng', N'Nam', 100000000, '020', '7'),
		('014', N'Phạm', N'Thanh', N'Khang', '2002-10-25', N'62 Phố Vừ Miên Hảo, Xã Lộ, Huyện Oanh, Lào Cai', N'Nam', 55000000, '007', '8'),
		('015', N'Lê', N'Sĩ', N'Phú', '2000-02-04', N'700 Phố Sang, Xã Cơ Đậu, Huyện Tào Chiêu Phong, Hà Nội', N'Nam', 75000000, '014', '2'),
		('016', N'Nguyễn', N'Thị', N'Ngọc Hân', '1999-03-30', N'Số 1, Thôn Phương Mỹ, Phường Đồng Hường Hoa, Quận Giang Điệp, Bình Dương', N'Nữ', 130000000, '014', '3'),
		('017', N'Đoàn Nguyễn', N'Thuỳ', N'Linh', '1995-05-07', N'3076, Ấp Hứa Tuyền, Thôn Triệu Chấn, Huyện Hoàng Ngân, Kiên Giang', N'Nữ', 40000000, '007', '10'),
		('018', N'Võ', N'Quỳnh', N'Hương', '2004-08-26', N'788 Phố Châu Nhã Bắc, Xã Ánh, Quận Quân Trác, Đà Nẵng', N'Nữ', 35500000, '020', '2'),
		('019', N'Lê', N'Thanh', N'Tú', '2000-04-29', N'Số 18, Thôn 26, Xã Toại Nghiêm, Quận 29, Hậu Giang', N'Nữ', 20000000, '016', '1'),
		('020', N'Đinh', N'Hoài', N'An', '1991-07-10', N'88, Thôn 32, Ấp Uyển Hoan, Huyện Dân Học, Đồng Tháp', N'Nữ', 62500000, '008', '4'),
		('021', N'Trần', N'Mai', N'Yến Nhi', '1999-02-09', N'35 Hai Bà Trưng, Hà Nội', N'Nữ', 3500000, '024', '11'),
		('022', N'Ngô', N'Thanh', N'Sương', '2004-11-30', N'7A Hùng Vương, Quận 5, TP Hồ Chí Minh', N'Nữ', 15000000, '030', '20'),
		('023', N'Hoàng', N'Phúc', N'Hưng', '1991-07-10', N'226/5, Quận Ô Môn, Cần Thơ', N'Nam', 9500000, '024', '18'),
		('024', N'Lê', N'Đình', N'Khiêm', '2001-10-18', N'779 Lê Hồng Phong, Quận 10, TP Hồ Chí Minh', N'Nam', 25000000, '030', '14'),
		('025', N'Lê', N'Xuân', N'An', '1989-03-14', N'91 Nguyễn Cư Trinh Ward Dist. 1, TP Hồ Chí Minh', N'Nữ', 6500000, '026', '16'),
		('026', N'Võ', N'Thanh', N'Ngân', '1993-12-08', N'122 Nguyễn Trãi, Thanh Hoá', N'Nữ', 5000000, '028', '18'),
		('027', N'Nguyễn', N'Thiện', N'Nhân', '2000-06-02', N'1152 Lương Sơn, Khánh Hoà', N'Nam', 4500000, '026', '20'),
		('028', N'Nguyễn', N'Trọng', N'Tín', '1997-01-15', N'198/2A Trần Quốc Toản, Vũng Tàu', N'Nam', 18000000, '028', '11'),
		('029', N'Trần', N'Thị', N'Cẩm Tú', '1995-10-25', N'555B Võ Văn Kiệt, Khánh Hoà', N'Nữ', 15000000, '024', '16'),
		('030', N'Phạm', N'Thị', N'Kim Thuỷ', '2003-12-12', N'1767 Nguyễn Đình Chiểu, Hà Nội', N'Nữ', 20000000, '028', '14'),
		('031', N'Nguyễn', N'Phạm', N'Thịnh', '1992-09-10', N'15/4A Võ Thị Sáu, TP Hồ Chí Minh', N'Nam', 2000000, '029', '22'),
		('032', N'Lê', N'Hoàng', N'Lan', '2000-01-05', N'65B Điện Biên Phủ, Khánh Hoà', N'Nữ', 10000000, '024', '25'),
		('033', N'Phạm', N'Bảo', N'Ngân', '1990-04-02', N'1444 Trương Quyền, Hải Phòng', N'Nữ', 4000000, '038', '28'),
		('034', N'Nguyễn', N'Bảo', N'Khánh', '2003-12-14', N'233 Lý Tự Trọng, Cà Mau', N'Nam', 3000000, '020', '30'),
		('035', N'Đặng', N'Minh', N'Hoà', '1985-08-20', N'10A Tôn Thất Tùng, Quận 2, TP Hồ Chí Minh', N'Nam', 7000000, '035', '28'),
		('036', N'Nguyễn', N'Thị', N'Nga', '1999-05-12', N'1204/11 Nguyễn Thái Học, Đà Nẵng', N'Nữ', 15000000, '026', '40'),
		('037', N'Phạm', N'Chí', N'Khoa', '1998-01-09', N'355 Trần Hưng Đạo, Khánh Hoà', N'Nam', 3500000, '030', '40'),
		('038', N'Ngô', N'Thanh', N'Vân', '1994-08-24', N'75B Yên Lãng, Hà Nội', N'Nữ', 2500000, '035', '22'),
		('039', N'Lê', N'Minh', N'Tâm', '2003-08-05', N'54 Nguyễn Hữu Thọ, Đà Nẵng', N'Nữ', 20000000, '040', '25'),
		('040', N'Nguyễn', N'Minh', N'Vũ', '2000-02-21', N'417 Trần Quý Cáp, Khánh Hoà', N'Nam', 25000000, '034', '30');


go

create table PHONGBAN
(
	MAPHG			varchar(2) PRIMARY KEY,
	TENPHG			nvarchar(20),
	TRPHG			varchar(9),
	NG_NHANCHUC		smalldatetime
);

go

insert into PHONGBAN
values	('1', N'Quản lý', '005', '2013-02-01'),
		('2', N'Kế toán', '020', '2019-09-23'),
		('3', N'Điều hành', '012', '2020-01-15'),
		('4', N'Kinh doanh', '010', '2022-03-29'),
		('5', N'Marketing', '003', '2010-05-12'),
		('6', N'Công nghệ', '007', '2018-11-23'),
		('7', N'Thư viện', '019', '2021-12-31'),
		('8', N'Nhân sự', '001', '2023-07-10'),
		('9', N'Nghiên cứu', '015', '2023-10-02'),
		('10', N'Hành chính', '008', '2022-04-18'),
		('11', N'Thiết kế', '024', '2023-04-02'),
		('20', N'Kiểm thử', '028', '2017-11-22'),
		('18', N'An ninh', '021', '2022-08-10'),
		('14', N'Sản xuất', '035', '2015-12-31'),
		('16', N'Chăm sóc khách hàng', '040', '2025-09-18'),
		('22', N'Phó Giám Đốc', '034', '2024-01-01'),
		('25', N'Kế hoạch', '038', '2020-02-15'),
		('28', N'Đào tạo', '032', '2026-07-05'),
		('30', N'Bảo hành', '026', '2019-09-29'),
		('40', N'Quan hệ quốc tế', '033', '2017-03-24');



go

create table DEAN
(
	MADA		varchar(9) PRIMARY KEY,
	TENDA		nvarchar(50),
	DDIEM_DA	nvarchar(20),
	PHONG		varchar(2)
);

go

insert into DEAN
values	('DA001', N'Nghiên cứu chế tạo sợi Nanô Platin', N'TP Hồ Chí Minh', '3'),
		('DA002', N'Tạo vật liệu sinh học bằng màng ối người', N'TP Nha Trang', '10'),
		('DA003', N'Ứng dụng hóa học xanh', N'Hà Nội', '2'),
		('DA004', N'Nghiên cứu tế bào gốc', N'Đà Nẵng', '5'),
		('DA005', N'HTTT quản lý các trường ĐH', N'Đà Lạt', '8'),
		('DA006', N'HTTT quản lý thư viện ở các trường ĐH', N'Cần Thơ', '1'),
		('DA007', N'Xây dựng nhà máy chế biến thủy sản', N'Thừa Thiên Huế', '2'),
		('DA008', N'Quản lý cuộc thi chạy Marathon', N'Hải Phòng', '7'),
		('DA009', N'HTTT quản lý giáo vụ cho một Khoa', N'Quảng Trị', '6'),
		('DA010', N'Môi trường Xanh - Sạch - Đẹp', N'Lạng Sơn', '5'),
		('DA011', N'Xây dựng công xưởng nhà máy', N'Vũng Tàu', '2'),
		('DA012', N'Nghiên cứu mô hình người máy', N'Yên Bái', '7'),
		('DA013', N'Ứng dụng máy kéo sợi', N'Cao Bằng', '6'),
		('DA014', N'Ứng dụng phân tích dữ liệu', N'Nam Định', '3'),
		('DA015', N'Xây dựng cầu Vĩnh Phúc', N'Vĩnh Phúc', '8'),
		('DA016', N'Ứng dụng thiết kế Web cho công ty', N'TP Hồ Chí Minh', '1'),
		('DA017', N'Dự án Festival Biển', N'Nha Trang', '1'),
		('DA018', N'Nghiên cứu trí tuệ nhân tạo', N'Hà Nội', '30'),
		('DA019', N'Nghiên cứu lý thuyết về hoạt tính chống oxy hóa', N'Nghệ An', '28'),
		('DA020', N'Nghiên cứu enzyme lên lợi khuẩn Lactobacillus', N'TP Hồ Chí Minh', '34'),
		('DA021', N'Nghiên cứu chế tạo loại khẩu trang y tế', N'Đà Nẵng', '22'),
		('DA022', N'Khai thác lượng lớn dữ liệu tensor cho ứng dụng', N'Nha Trang', '25'),
		('DA023', N'Nghiên cứu làm sạch tạp chất trong biogas', N'Bình Định', '35'),
		('DA024', N'Nghiên cứu hiện tượng cộng hưởng cơ điện', N'Hội An', '30'),
		('DA025', N'Phát triển hệ thống mạng lưới', N'Cần Thơ', '26'),
		('DA026', N'Nghiên cứu, chế tạo robot giám sát', N'Hưng Yên', '22'),
		('DA027', N'Xây dựng mô hình đào tạo và bồi dưỡng giáo viên', N'Vinh', '32'),
		('DA028', N'Nghiên cứu xử lý mã độc trên điện toán đám mây', N'TP Hồ Chí Minh', '18'),
		('DA029', N'Xử lý tín hiệu video và nhận dạng cử chỉ', N'Hà Nội', '25'),
		('DA030', N'Nghiên cứu hiệu ứng Hall lượng tử', N'Đà Nẵng', '30'),
		('DA031', N'Nghiên cứu tổng hợp nano bạc, vàng', N'Nha Trang', '38'),
		('DA032', N'Nghiên cứu ứng dụng Luân trùng (Rotifera)', N'Tây Nguyên', '40');

go

create table PHANCONG
(
	MA_NVIEN	varchar(9),
	SODA		varchar(9),
	THOIGIAN	numeric(18,0),
	constraint PK_PHANCONG PRIMARY KEY (MA_NVIEN, SODA)
);

go

insert into PHANCONG
values	('001', 'DA007', 135),
		('001', 'DA016', 150),
		('002', 'DA001', 120),
		('002', 'DA010', 125),
		('003', 'DA003', 175),
		('004', 'DA013', 140),
		('005', 'DA010', 305),
		('005', 'DA002', 185),
		('006', 'DA009', 275),
		('006', 'DA008', 160),
		('007', 'DA005', 320),
		('008', 'DA002', 110),
		('009', 'DA015', 130),
		('009', 'DA016', 120),
		('010', 'DA011', 230),
		('011', 'DA006', 200),
		('011', 'DA001', 185),
		('012', 'DA012', 190),
		('013', 'DA008', 145),
		('013', 'DA006', 190),
		('014', 'DA014', 160),
		('015', 'DA004', 180),
		('015', 'DA003', 135),
		('017', 'DA011', 124),
		('020', 'DA009', 185),
		('020', 'DA012', 165),
		('003', 'DA020', 110),
		('007', 'DA025', 145),
		('011', 'DA024', 100),
		('015', 'DA022', 185),
		('021', 'DA028', 130),
		('021', 'DA030', 250),
		('021', 'DA031', 300),
		('022', 'DA032', 340),
		('022', 'DA015', 250),
		('023', 'DA015', 390),
		('023', 'DA013', 400),
		('023', 'DA023', 240),
		('023', 'DA030', 600),
		('024', 'DA031', 200),
		('025', 'DA023', 350),
		('025', 'DA026', 450),
		('026', 'DA020', 500),
		('026', 'DA028', 700),
		('026', 'DA029', 450),
		('027', 'DA030', 300),
		('027', 'DA001', 320),
		('028', 'DA006', 270),
		('029', 'DA009', 430),
		('030', 'DA010', 450),
		('030', 'DA011', 190),
		('030', 'DA014', 400),
		('030', 'DA018', 380),
		('031', 'DA022', 650),
		('031', 'DA025', 750),
		('032', 'DA003', 1000),
		('033', 'DA004', 300),
		('034', 'DA007', 540),
		('034', 'DA014', 550),
		('035', 'DA017', 600),
		('035', 'DA028', 200),
		('036', 'DA023', 430),
		('036', 'DA010', 120),
		('036', 'DA005', 150),
		('037', 'DA009', 820),
		('038', 'DA002', 300),
		('039', 'DA015', 650),
		('039', 'DA001', 420),
		('040', 'DA007', 550),
		('040', 'DA008', 720),
		('040', 'DA005', 400),
		('040', 'DA004', 620),
		('040', 'DA027', 550);


go

create table DIADIEM_PHG
(
	MAPHG		varchar(2),
	DIADIEM		nvarchar(20),
	constraint PK_DIADIEM_PHG PRIMARY KEY (MAPHG, DIADIEM)
);

go

insert into DIADIEM_PHG
values	('1', N'Nha Trang'),
		('2', N'Hà Nội'),
		('3', N'TP Hồ Chí Minh'),
		('4', N'Đà Nẵng'),
		('5', N'Hải Phòng'),
		('6', N'Cần Thơ'),
		('7', N'Vũng Tàu'),
		('8', N'Thừa Thiên Huế'),
		('9', N'Nghệ An'),
		('10', N'Ninh Thuận'),
		('11', N'Nha Trang'),
		('20', N'Hà Nội'),
		('18', N'TP Hồ Chí Minh'),
		('14', N'Đà Nẵng'),
		('16', N'Nha Trang'),
		('22', N'Hà Nội'),
		('25', N'Cần Thơ'),
		('28', N'Thừa Thiên Huế'),
		('30', N'Đà Nẵng'),
		('40', N'TP Hồ Chí Minh');

go

create table THANNHAN
(
	MA_NVIEN	varchar(9),
	TENTN		nvarchar(40),
	NGSINH		smalldatetime,
	PHAI		nvarchar(3),
	QUANHE		nvarchar(15),
	constraint pk_thannhan PRIMARY KEY (MA_NVIEN, TENTN)
);


go

alter table NHANVIEN add constraint FK_NHANVIEN_NHANVIEN FOREIGN KEY (MA_NQL) REFERENCES NHANVIEN(MANV);

go

alter table NHANVIEN add constraint FK_NHANVIEN_PHONGBAN FOREIGN KEY (PHG) REFERENCES PHONGBAN(MAPHG);

go

alter table PHONGBAN add constraint FK_PHONGBAN_NHANVIEN FOREIGN KEY (TRPHG) REFERENCES NHANVIEN(MANV);

go

alter table PHANCONG add constraint FK_PHANCONG_NHANVIEN FOREIGN KEY (MA_NVIEN) REFERENCES NHANVIEN(MANV);

go

alter table PHANCONG add constraint FK_PHANCONG_DEAN FOREIGN KEY (SODA) REFERENCES DEAN(MADA);

go

alter table DIADIEM_PHG add constraint FK_DDIEM_PHONGBAN FOREIGN KEY (MAPHG) REFERENCES PHONGBAN(MAPHG);

go

alter table THANNHAN add constraint FK_THANNHAN_NHANVIEN FOREIGN KEY (MA_NVIEN) REFERENCES NHANVIEN(MANV);
