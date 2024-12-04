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
values	('001', N'Nguy?n', N'Kh?c', N'Duy H?ng', '2003-01-29', N'1202/21 Hai Th�ng T?, TP Nha Trang', N'Nam', 42500000, '004', '4'),
		('002', N'L�', N'Minh', N'T�nh', '1973-02-15', N'25/3 L?c Long Qu�n, Q.10, TP H? Ch� Minh', N'Nam', 15000000, '012', '6'),
		('003', N'L�', N'Thanh', N'Sang', '1954-10-23', N'234 3/2, TP Bi�n H�a', N'Nam', 54000000, '001', '3'),
		('004', N'Tr?n', N'Anh', N'Tu?n', '1977-08-06', N'22/11 L� Th??ng Ki?t,TP M? Tho', N'Nam', 25000000, '003', '1'),
		('005', N'Tr?n', N'Trung', N'Hi?u', '1988-05-20', N'12/21 V� V?n Ng�n Th? ??c, TP H? Ch� Minh', N'Nam', 35000000, '010', '9'),
		('006', N'Nguy?n', N'Ng?c', N'�nh', '1998-06-11', N'234 Tr?n N�o, An Ph�, TP H? Ch� Minh', N'N?', 65000000, '004', '8'),
		('007', N'Tr?n', N'B?ch', N'Tuy?t', '1993-12-12', N'17 Tu? T?nh, H� N?i', N'N?', 13000000, '012', '5'),
		('008', N'??', N'B�ch', N'Tr�m', '2002-01-16', N'516 Ph? D? Thu Uy?n, Th�n Mi�n �, Huy?n L?c Chi�u, C?n Th?', N'N?', 50000000, '001', '6'),
		('009', N'H?', N'Th?', N'Ng�n Anh', '2001-07-06', N'548 Ph? ??ng, Ph??ng 1, Qu?n 86, Ph� Y�n', N'N?', 32000000, '003', '9'),
		('010', N'Tr?n', N'M?', N'Duy�n', '2001-09-19', N'18 Ph? Tr??ng Ph??c Du, X� 94, Huy?n M?, H?u Giang', N'N?', 90000000, '010', '7'),
		('011', N'Ph?m', N'Minh', N'Ho�ng', '1992-04-17', N'245 Ph? H�ng Kh�nh To?n, X� B�ch L?u, Qu?n 42, V?nh Ph�c', N'Nam', 75000000, '008', '10'),
		('012', N'Nguy?n', N'Thi�n', N'�n', '1996-08-06', N'65, Th�n Ly Ca, Ph??ng 25, Huy?n L?i V�, B?c Li�u', N'Nam', 150000000, '016', '5'),
		('013', N'Nguy?n', N'Duy', N'T�n', '1997-11-23', N'34 Ph? B?, X� 71, Qu?n 04, H?i Ph�ng', N'Nam', 100000000, '020', '7'),
		('014', N'Ph?m', N'Thanh', N'Khang', '2002-10-25', N'62 Ph? V? Mi�n H?o, X� L?, Huy?n Oanh, L�o Cai', N'Nam', 55000000, '007', '8'),
		('015', N'L�', N'S?', N'Ph�', '2000-02-04', N'700 Ph? Sang, X� C? ??u, Huy?n T�o Chi�u Phong, H� N?i', N'Nam', 75000000, '014', '2'),
		('016', N'Nguy?n', N'Th?', N'Ng?c H�n', '1999-03-30', N'S? 1, Th�n Ph??ng M?, Ph??ng ??ng H??ng Hoa, Qu?n Giang ?i?p, B�nh D??ng', N'N?', 130000000, '014', '3'),
		('017', N'?o�n Nguy?n', N'Thu?', N'Linh', '1995-05-07', N'3076, ?p H?a Tuy?n, Th�n Tri?u Ch?n, Huy?n Ho�ng Ng�n, Ki�n Giang', N'N?', 40000000, '007', '10'),
		('018', N'V�', N'Qu?nh', N'H??ng', '2004-08-26', N'788 Ph? Ch�u Nh� B?c, X� �nh, Qu?n Qu�n Tr�c, ?� N?ng', N'N?', 35500000, '020', '2'),
		('019', N'L�', N'Thanh', N'T�', '2000-04-29', N'S? 18, Th�n 26, X� To?i Nghi�m, Qu?n 29, H?u Giang', N'N?', 20000000, '016', '1'),
		('020', N'?inh', N'Ho�i', N'An', '1991-07-10', N'88, Th�n 32, ?p Uy?n Hoan, Huy?n D�n H?c, ??ng Th�p', N'N?', 62500000, '008', '4'),
		('021', N'Tr?n', N'Mai', N'Y?n Nhi', '1999-02-09', N'35 Hai B� Tr?ng, H� N?i', N'N?', 3500000, '024', '11'),
		('022', N'Ng�', N'Thanh', N'S??ng', '2004-11-30', N'7A H�ng V??ng, Qu?n 5, TP H? Ch� Minh', N'N?', 15000000, '030', '20'),
		('023', N'Ho�ng', N'Ph�c', N'H?ng', '1991-07-10', N'226/5, Qu?n � M�n, C?n Th?', N'Nam', 9500000, '024', '18'),
		('024', N'L�', N'?�nh', N'Khi�m', '2001-10-18', N'779 L� H?ng Phong, Qu?n 10, TP H? Ch� Minh', N'Nam', 25000000, '030', '14'),
		('025', N'L�', N'Xu�n', N'An', '1989-03-14', N'91 Nguy?n C? Trinh Ward Dist. 1, TP H? Ch� Minh', N'N?', 6500000, '026', '16'),
		('026', N'V�', N'Thanh', N'Ng�n', '1993-12-08', N'122 Nguy?n Tr�i, Thanh Ho�', N'N?', 5000000, '028', '18'),
		('027', N'Nguy?n', N'Thi?n', N'Nh�n', '2000-06-02', N'1152 L??ng S?n, Kh�nh Ho�', N'Nam', 4500000, '026', '20'),
		('028', N'Nguy?n', N'Tr?ng', N'T�n', '1997-01-15', N'198/2A Tr?n Qu?c To?n, V?ng T�u', N'Nam', 18000000, '028', '11'),
		('029', N'Tr?n', N'Th?', N'C?m T�', '1995-10-25', N'555B V� V?n Ki?t, Kh�nh Ho�', N'N?', 15000000, '024', '16'),
		('030', N'Ph?m', N'Th?', N'Kim Thu?', '2003-12-12', N'1767 Nguy?n ?�nh Chi?u, H� N?i', N'N?', 20000000, '028', '14'),
		('031', N'Nguy?n', N'Ph?m', N'Th?nh', '1992-09-10', N'15/4A V� Th? S�u, TP H? Ch� Minh', N'Nam', 2000000, '029', '22'),
		('032', N'L�', N'Ho�ng', N'Lan', '2000-01-05', N'65B ?i?n Bi�n Ph?, Kh�nh Ho�', N'N?', 10000000, '024', '25'),
		('033', N'Ph?m', N'B?o', N'Ng�n', '1990-04-02', N'1444 Tr??ng Quy?n, H?i Ph�ng', N'N?', 4000000, '038', '28'),
		('034', N'Nguy?n', N'B?o', N'Kh�nh', '2003-12-14', N'233 L� T? Tr?ng, C� Mau', N'Nam', 3000000, '020', '30'),
		('035', N'??ng', N'Minh', N'Ho�', '1985-08-20', N'10A T�n Th?t T�ng, Qu?n 2, TP H? Ch� Minh', N'Nam', 7000000, '035', '28'),
		('036', N'Nguy?n', N'Th?', N'Nga', '1999-05-12', N'1204/11 Nguy?n Th�i H?c, ?� N?ng', N'N?', 15000000, '026', '40'),
		('037', N'Ph?m', N'Ch�', N'Khoa', '1998-01-09', N'355 Tr?n H?ng ??o, Kh�nh Ho�', N'Nam', 3500000, '030', '40'),
		('038', N'Ng�', N'Thanh', N'V�n', '1994-08-24', N'75B Y�n L�ng, H� N?i', N'N?', 2500000, '035', '22'),
		('039', N'L�', N'Minh', N'T�m', '2003-08-05', N'54 Nguy?n H?u Th?, ?� N?ng', N'N?', 20000000, '040', '25'),
		('040', N'Nguy?n', N'Minh', N'V?', '2000-02-21', N'417 Tr?n Qu� C�p, Kh�nh Ho�', N'Nam', 25000000, '034', '30');


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
values	('1', N'Qu?n l�', '005', '2013-02-01'),
		('2', N'K? to�n', '020', '2019-09-23'),
		('3', N'?i?u h�nh', '012', '2020-01-15'),
		('4', N'Kinh doanh', '010', '2022-03-29'),
		('5', N'Marketing', '003', '2010-05-12'),
		('6', N'C�ng ngh?', '007', '2018-11-23'),
		('7', N'Th? vi?n', '019', '2021-12-31'),
		('8', N'Nh�n s?', '001', '2023-07-10'),
		('9', N'Nghi�n c?u', '015', '2023-10-02'),
		('10', N'H�nh ch�nh', '008', '2022-04-18'),
		('11', N'Thi?t k?', '024', '2023-04-02'),
		('20', N'Ki?m th?', '028', '2017-11-22'),
		('18', N'An ninh', '021', '2022-08-10'),
		('14', N'S?n xu?t', '035', '2015-12-31'),
		('16', N'Ch?m s�c kh�ch h�ng', '040', '2025-09-18'),
		('22', N'Ph� Gi�m ??c', '034', '2024-01-01'),
		('25', N'K? ho?ch', '038', '2020-02-15'),
		('28', N'?�o t?o', '032', '2026-07-05'),
		('30', N'B?o h�nh', '026', '2019-09-29'),
		('40', N'Quan h? qu?c t?', '033', '2017-03-24');



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
values	('DA001', N'Nghi�n c?u ch? t?o s?i Nan� Platin', N'TP H? Ch� Minh', '3'),
		('DA002', N'T?o v?t li?u sinh h?c b?ng m�ng ?i ng??i', N'TP Nha Trang', '10'),
		('DA003', N'?ng d?ng h�a h?c xanh', N'H� N?i', '2'),
		('DA004', N'Nghi�n c?u t? b�o g?c', N'?� N?ng', '5'),
		('DA005', N'HTTT qu?n l� c�c tr??ng ?H', N'?� L?t', '8'),
		('DA006', N'HTTT qu?n l� th? vi?n ? c�c tr??ng ?H', N'C?n Th?', '1'),
		('DA007', N'X�y d?ng nh� m�y ch? bi?n th?y s?n', N'Th?a Thi�n Hu?', '2'),
		('DA008', N'Qu?n l� cu?c thi ch?y Marathon', N'H?i Ph�ng', '7'),
		('DA009', N'HTTT qu?n l� gi�o v? cho m?t Khoa', N'Qu?ng Tr?', '6'),
		('DA010', N'M�i tr??ng Xanh - S?ch - ??p', N'L?ng S?n', '5'),
		('DA011', N'X�y d?ng c�ng x??ng nh� m�y', N'V?ng T�u', '2'),
		('DA012', N'Nghi�n c?u m� h�nh ng??i m�y', N'Y�n B�i', '7'),
		('DA013', N'?ng d?ng m�y k�o s?i', N'Cao B?ng', '6'),
		('DA014', N'?ng d?ng ph�n t�ch d? li?u', N'Nam ??nh', '3'),
		('DA015', N'X�y d?ng c?u V?nh Ph�c', N'V?nh Ph�c', '8'),
		('DA016', N'?ng d?ng thi?t k? Web cho c�ng ty', N'TP H? Ch� Minh', '1'),
		('DA017', N'D? �n Festival Bi?n', N'Nha Trang', '1'),
		('DA018', N'Nghi�n c?u tr� tu? nh�n t?o', N'H� N?i', '30'),
		('DA019', N'Nghi�n c?u l� thuy?t v? ho?t t�nh ch?ng oxy h�a', N'Ngh? An', '28'),
		('DA020', N'Nghi�n c?u enzyme l�n l?i khu?n Lactobacillus', N'TP H? Ch� Minh', '34'),
		('DA021', N'Nghi�n c?u ch? t?o lo?i kh?u trang y t?', N'?� N?ng', '22'),
		('DA022', N'Khai th�c l??ng l?n d? li?u tensor cho ?ng d?ng', N'Nha Trang', '25'),
		('DA023', N'Nghi�n c?u l�m s?ch t?p ch?t trong biogas', N'B�nh ??nh', '35'),
		('DA024', N'Nghi�n c?u hi?n t??ng c?ng h??ng c? ?i?n', N'H?i An', '30'),
		('DA025', N'Ph�t tri?n h? th?ng m?ng l??i', N'C?n Th?', '26'),
		('DA026', N'Nghi�n c?u, ch? t?o robot gi�m s�t', N'H?ng Y�n', '22'),
		('DA027', N'X�y d?ng m� h�nh ?�o t?o v� b?i d??ng gi�o vi�n', N'Vinh', '32'),
		('DA028', N'Nghi�n c?u x? l� m� ??c tr�n ?i?n to�n ?�m m�y', N'TP H? Ch� Minh', '18'),
		('DA029', N'X? l� t�n hi?u video v� nh?n d?ng c? ch?', N'H� N?i', '25'),
		('DA030', N'Nghi�n c?u hi?u ?ng Hall l??ng t?', N'?� N?ng', '30'),
		('DA031', N'Nghi�n c??u t�?ng h??p nano b?c, v�ng', N'Nha Trang', '38'),
		('DA032', N'Nghi�n c?u ?ng d?ng Lu�n tr�ng (Rotifera)', N'T�y Nguy�n', '40');

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
		('2', N'H� N?i'),
		('3', N'TP H? Ch� Minh'),
		('4', N'?� N?ng'),
		('5', N'H?i Ph�ng'),
		('6', N'C?n Th?'),
		('7', N'V?ng T�u'),
		('8', N'Th?a Thi�n Hu?'),
		('9', N'Ngh? An'),
		('10', N'Ninh Thu?n'),
		('11', N'Nha Trang'),
		('20', N'H� N?i'),
		('18', N'TP H? Ch� Minh'),
		('14', N'?� N?ng'),
		('16', N'Nha Trang'),
		('22', N'H� N?i'),
		('25', N'C?n Th?'),
		('28', N'Th?a Thi�n Hu?'),
		('30', N'?� N?ng'),
		('40', N'TP H? Ch� Minh');

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
