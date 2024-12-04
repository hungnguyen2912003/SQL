create database QuanLyDeAn;

use QuanLyDeAn;

create table NHANVIEN
(
	manv	varchar(9) PRIMARY KEY NOT NULL,
	honv	nvarchar(20),
	tenlot	nvarchar(30),
	tennv	nvarchar(30),
	ngsinh	date,
	dchi	nvarchar(150),
	phai	nvarchar(3),
	luong	numeric(18,0),
	ma_nql	varchar(9),
	phg		varchar(2)
);

create table PHONGBAN
(
	maphg			varchar(2) PRIMARY KEY NOT NULL,
	tenphg			nvarchar(20),
	trphg			varchar(9),
	ng_nhanchuc		date
);

create table DEAN
(
	mada		varchar(9) PRIMARY KEY NOT NULL,
	tenda		nvarchar(50),
	ddiem_da	nvarchar(20),
	phong		varchar(2)
);

create table PHANCONG
(
	ma_nvien	varchar(9),
	soda		varchar(9),
	thoigian	numeric(18,0),
	constraint pk_phancong PRIMARY KEY (ma_nvien, soda)
);

create table DIADIEM_PHG
(
	maphg		varchar(2),
	diadiem		nvarchar(20),
	constraint pk_ddiem_phg PRIMARY KEY (maphg, diadiem)
);

create table THANNHAN
(
	ma_nvien	varchar(9),
	tentn		nvarchar(40),
	ngsinh		date,
	phai		nvarchar(3),
	quanhe		nvarchar(15),
	constraint pk_thannhan PRIMARY KEY (ma_nvien, tentn)
);

alter table NHANVIEN add constraint fk_nhanvien_nhanvien FOREIGN KEY (ma_nql) REFERENCES NHANVIEN(manv);

alter table NHANVIEN add constraint fk_nhanvien_phongban FOREIGN KEY (phg) REFERENCES PHONGBAN(maphg);

alter table PHONGBAN add constraint fk_phongban_nhanvien FOREIGN KEY (trphg) REFERENCES NHANVIEN(manv);

alter table PHANCONG add constraint fk_phancong_nhanvien FOREIGN KEY (ma_nvien) REFERENCES NHANVIEN(manv);

alter table PHANCONG add constraint fk_phancong_dean FOREIGN KEY (soda) REFERENCES DEAN(mada);

alter table DIADIEM_PHG add constraint fk_diadiem_phongban FOREIGN KEY (maphg) REFERENCES PHONGBAN(maphg);

alter table THANNHAN add constraint fk_thannhan_nhanvien FOREIGN KEY (ma_nvien) REFERENCES NHANVIEN(manv);

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

insert into PHONGBAN
values		('1', N'Quản lý', '005', '2013-02-01'),
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

insert into DEAN
values		('1', N'Nghiên cứu chế tạo sợi Nanô Platin', N'TP Hồ Chí Minh', '3'),
		('2', N'Tạo vật liệu sinh học bằng màng ối người', N'TP Nha Trang', '10'),
		('3', N'Ứng dụng hóa học xanh', N'Hà Nội', '2'),
		('4', N'Nghiên cứu tế bào gốc', N'Đà Nẵng', '5'),
		('5', N'HTTT quản lý các trường ĐH', N'Đà Lạt', '8'),
		('6', N'HTTT quản lý thư viện ở các trường ĐH', N'Cần Thơ', '1'),
		('7', N'Xây dựng nhà máy chế biến thủy sản', N'Thừa Thiên Huế', '2'),
		('8', N'Quản lý cuộc thi chạy Marathon', N'Hải Phòng', '7'),
		('9', N'HTTT quản lý giáo vụ cho một Khoa', N'Quảng Trị', '6'),
		('10', N'Môi trường Xanh - Sạch - Đẹp', N'Lạng Sơn', '5'),
		('11', N'Xây dựng công xưởng nhà máy', N'Vũng Tàu', '2'),
		('12', N'Nghiên cứu mô hình người máy', N'Yên Bái', '7'),
		('13', N'Ứng dụng máy kéo sợi', N'Cao Bằng', '6'),
		('14', N'Ứng dụng phân tích dữ liệu', N'Nam Định', '3'),
		('15', N'Xây dựng cầu Vĩnh Phúc', N'Vĩnh Phúc', '8'),
		('16', N'Ứng dụng thiết kế Web cho công ty', N'TP Hồ Chí Minh', '1'),
		('20', N'Dự án Festival Biển', N'Nha Trang', '1'),
		('21', N'Nghiên cứu trí tuệ nhân tạo', N'Hà Nội', '30'),
		('22', N'Nghiên cứu lý thuyết về hoạt tính chống oxy hóa', N'Nghệ An', '28'),
		('23', N'Nghiên cứu enzyme lên lợi khuẩn Lactobacillus', N'TP Hồ Chí Minh', '34'),
		('24', N'Nghiên cứu chế tạo loại khẩu trang y tế', N'Đà Nẵng', '22'),
		('25', N'Khai thác lượng lớn dữ liệu tensor cho ứng dụng', N'Nha Trang', '25'),
		('26', N'Nghiên cứu làm sạch tạp chất trong biogas', N'Bình Định', '35'),
		('27', N'Nghiên cứu hiện tượng cộng hưởng cơ điện', N'Hội An', '30'),
		('28', N'Phát triển hệ thống mạng lưới', N'Cần Thơ', '26'),
		('29', N'Nghiên cứu, chế tạo robot giám sát', N'Hưng Yên', '22'),
		('30', N'Xây dựng mô hình đào tạo và bồi dưỡng giáo viên', N'Vinh', '32'),
		('31', N'Nghiên cứu xử lý mã độc trên điện toán đám mây', N'TP Hồ Chí Minh', '18'),
		('32', N'Xử lý tín hiệu video và nhận dạng cử chỉ', N'Hà Nội', '25'),
		('33', N'Nghiên cứu hiệu ứng Hall lượng tử', N'Đà Nẵng', '30'),
		('34', N'Nghiên cứu tổng hợp nano bạc, vàng', N'Nha Trang', '38'),
		('35', N'Nghiên cứu ứng dụng Luân trùng (Rotifera)', N'Tây Nguyên', '40');

insert into DIADIEM_PHG
values		('1', N'Nha Trang'),
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

insert into PHANCONG
values	('001', '7', 135),
		('001', '16', 150),
		('002', '1', 120),
		('002', '10', 125),
		('003', '3', 175),
		('004', '13', 140),
		('005', '10', 305),
		('005', '2', 185),
		('006', '9', 275),
		('006', '8', 160),
		('007', '5', 320),
		('008', '2', 110),
		('009', '15', 130),
		('009', '16', 120),
		('010', '11', 230),
		('011', '6', 200),
		('011', '1', 185),
		('012', '12', 190),
		('013', '8', 145),
		('013', '6', 190),
		('014', '14', 160),
		('015', '4', 180),
		('015', '3', 135),
		('017', '11', 124),
		('020', '9', 185),
		('020', '12', 165),
		('003', '20', 110),
		('007', '20', 145),
		('011', '20', 100),
		('015', '20', 185),
		('021', '35', 130),
		('021', '40', 250),
		('021', '38', 300),
		('022', '20', 340),
		('022', '40', 250),
		('023', '50', 390),
		('023', '36', 400),
		('023', '23', 240),
		('023', '39', 600),
		('024', '45', 200),
		('025', '60', 350),
		('025', '32', 450),
		('026', '20', 500),
		('026', '28', 700),
		('026', '44', 450),
		('027', '39', 300),
		('027', '45', 320),
		('028', '50', 270),
		('029', '30', 430),
		('030', '44', 450),
		('030', '60', 190),
		('030', '32', 400),
		('030', '39', 380),
		('031', '50', 650),
		('031', '25', 750),
		('032', '30', 1000),
		('033', '36', 300),
		('034', '33', 540),
		('034', '14', 550),
		('035', '17', 600),
		('035', '28', 200),
		('036', '20', 430),
		('036', '50', 120),
		('036', '44', 150),
		('037', '36', 820),
		('038', '39', 300),
		('039', '15', 650),
		('039', '38', 420),
		('040', '32', 550),
		('040', '8', 720),
		('040', '60', 400),
		('040', '40', 620),
		('040', '20', 550);

insert into THANNHAN
values	('001', N'Phan Huỳnh An', '2005-02-03', N'Nữ', N'Em'),
		('003', N'Đặng Lợi Trúc', '1965-04-29', N'Nữ', N'Vợ'),
		('003', N'Trần Thị Mỹ Phượng', '1990-09-11', N'Nữ', N'Em'),
		('004', N'Nguyễn Thị Kiều My', '1980-11-22', N'Nữ', N'Vợ'),
		('006', N'Phan Minh Vương', '2000-07-15', N'Nam', N'Chồng'),
		('008', N'Ngô Đình Tiến', '1994-06-17', N'Nam', N'Chồng'),
		('010', N'Nguyễn Đăng Khoa', '1970-03-30', N'Nam', N'Bố'),
		('012', N'Đoàn Ngọc Yến Vy', '1968-11-01', N'Nữ', N'Mẹ'),
		('013', N'Nguyễn Trà My', '1997-09-14', N'Nữ', N'Vợ'),
		('015', N'Lê Văn Anh Linh', '1966-01-28', N'Nữ', N'Dì'),
		('017', N'Nguyễn Trúc Uyên', '1975-04-30', N'Nữ', N'Cô'),
		('018', N'Nguyễn Nhựt Trung', '1995-08-20', N'Nam', N'Anh'),
		('019', N'Lê Thành Hưng', '1998-10-24', N'Nam', N'Chồng'),
		('020', N'Nguyễn Thị Loan', '1966-05-21', N'Nữ', N'Bác'),
		('007', N'Lê Hồng Việt', '1990-01-01', N'Nam', N'Chồng'),
		('014', N'Phạm Thị Khánh Ly', '1970-04-16', N'Nữ', N'Mẹ'),
		('006', N'Phan Khắc Thịnh', '1988-01-03', N'Nam', N'Anh'),
		('006', N'Lê Hoàng Nam', '2015-06-17', N'Nam', N'Em'),
		('008', N'Nguyễn Đình Long', '2006-02-12', N'Nam', N'Em'),
		('010', N'Hồ Lê Ngọc Thi', '2010-05-05', N'Nữ', N'Em'),
		('010', N'Lê Thị Ngọc', '1996-11-23', N'Nữ', N'Chị'),
		('012', N'Trần Tiến Ninh', '1960-08-29', N'Nam', N'Bố'),
		('013', N'Phan Anh Huy', '1990-02-10', N'Nam', N'Anh'),
		('015', N'Nguyễn Khánh Vy', '2000-03-30', N'Nữ', N'Vợ'),
		('017', N'Lý Gia Trân', '2005-07-10', N'Nữ', N'Em'),
		('017', N'Bùi Vi Hiếu', '1975-12-01', N'Nam', N'Bố'),
		('017', N'Nguyễn Ngọc Ý', '2000-02-04', N'Nữ', N'Em'),
		('020', N'Lê Xuân Diệu', '1968-05-21', N'Nữ', N'Mẹ'),
		('020', N'Đinh Tiến Cường', '1960-01-29', N'Nam', N'Bố'),
		('020', N'Phạm Duy Thái', '1989-09-28', N'Nam', N'Chồng'),
		('020', N'Đinh Thành Nam', '2000-11-11', N'Nam', N'Em'),
		('021', N'Trần Tuấn Hùng', '1998-08-07', N'Nam', N'Chồng'),
		('022', N'Ngô Quốc Bảo', '1965-02-02', N'Nam', N'Bố'),
		('022', N'Lê Thị Thương', '1970-05-03', N'Nữ', N'Mẹ'),
		('023', N'Phạm Thu Hà', '1993-09-11', N'Nữ', N'Vợ'),
		('024', N'Lê Anh Tuấn', '1965-04-29', N'Nam', N'Bố'),
		('024', N'Hồ Thị Dung', '1965-04-29', N'Nữ', N'Mẹ'),
		('024', N'Lê Anh Tâm', '1965-04-29', N'Nam', N'Em'),
		('025', N'Nguyễn Minh Tiến', '1990-04-29', N'Nam', N'Chồng'),
		('030', N'Võ Thuý Duyên', '1975-10-22', N'Nữ', N'Mẹ'),
		('030', N'Phạm Hữu Phúc', '2005-06-04', N'Nam', N'Em'),
		('032', N'Võ Tấn Khuê', '1965-04-29', N'Nam', N'Chồng'),
		('032', N'Lê Thị Chi Mai', '1965-04-29', N'Nữ', N'Mẹ'),
		('032', N'Lê Anh Phương', '1965-04-29', N'Nam', N'Bố'),
		('034', N'Phạm Phương Hà', '1980-02-16', N'Nữ', N'Mẹ'),
		('036', N'Ngô Việt Hưng', '1999-12-23', N'Nam', N'Chồng'),
		('038', N'Nguyễn Quốc Huy', '1992-08-20', N'Nam', N'Chồng'),
		('038', N'Lê Hồng Vân', '1963-05-24', N'Nữ', N'Mẹ'),
		('039', N'Hà Thị Mỹ Dung', '1975-10-03', N'Nữ', N'Mẹ'),
		('039', N'Lê Hải Duy', '1973-04-01', N'Nam', N'Bố'),
		('039', N'Lê Thanh Hà', '2010-10-08', N'Nữ', N'Em');