/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     03/11/2023 7:23:01 PM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDONNHAPHANG') and o.name = 'FK_CHITIETD_CHITIETDO_DONNHAPH')
alter table CHITIETDONNHAPHANG
   drop constraint FK_CHITIETD_CHITIETDO_DONNHAPH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETDONNHAPHANG') and o.name = 'FK_CHITIETD_CHITIETDO_MATHANG')
alter table CHITIETDONNHAPHANG
   drop constraint FK_CHITIETD_CHITIETDO_MATHANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETHOADON') and o.name = 'FK_CHITIETH_CHITIETHO_HOADON')
alter table CHITIETHOADON
   drop constraint FK_CHITIETH_CHITIETHO_HOADON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETHOADON') and o.name = 'FK_CHITIETH_CHITIETHO_MATHANG')
alter table CHITIETHOADON
   drop constraint FK_CHITIETH_CHITIETHO_MATHANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETNHACUNGCAP') and o.name = 'FK_CHITIETN_CHITIETNH_NHACUNGC')
alter table CHITIETNHACUNGCAP
   drop constraint FK_CHITIETN_CHITIETNH_NHACUNGC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHITIETNHACUNGCAP') and o.name = 'FK_CHITIETN_CHITIETNH_MATHANG')
alter table CHITIETNHACUNGCAP
   drop constraint FK_CHITIETN_CHITIETNH_MATHANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MATHANG') and o.name = 'FK_MATHANG_THUOC_LOAIMATH')
alter table MATHANG
   drop constraint FK_MATHANG_THUOC_LOAIMATH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDONNHAPHANG')
            and   name  = 'CHITIETDONNHAPHANG_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDONNHAPHANG.CHITIETDONNHAPHANG_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETDONNHAPHANG')
            and   name  = 'CHITIETDONNHAPHANG2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETDONNHAPHANG.CHITIETDONNHAPHANG2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETDONNHAPHANG')
            and   type = 'U')
   drop table CHITIETDONNHAPHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETHOADON')
            and   name  = 'CHITIETHOADON_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETHOADON.CHITIETHOADON_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETHOADON')
            and   name  = 'CHITIETHOADON2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETHOADON.CHITIETHOADON2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETHOADON')
            and   type = 'U')
   drop table CHITIETHOADON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETNHACUNGCAP')
            and   name  = 'CHITIETNHACUNGCAP_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETNHACUNGCAP.CHITIETNHACUNGCAP_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHITIETNHACUNGCAP')
            and   name  = 'CHITIETNHACUNGCAP2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHITIETNHACUNGCAP.CHITIETNHACUNGCAP2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHITIETNHACUNGCAP')
            and   type = 'U')
   drop table CHITIETNHACUNGCAP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DONNHAPHANG')
            and   type = 'U')
   drop table DONNHAPHANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOADON')
            and   type = 'U')
   drop table HOADON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAIMATHANG')
            and   type = 'U')
   drop table LOAIMATHANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MATHANG')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index MATHANG.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MATHANG')
            and   type = 'U')
   drop table MATHANG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHACUNGCAP')
            and   type = 'U')
   drop table NHACUNGCAP
go

/*==============================================================*/
/* Table: CHITIETDONNHAPHANG                                    */
/*==============================================================*/
create table CHITIETDONNHAPHANG (
   MAMH                 varchar(5)           not null,
   MADNH                varchar(5)           not null,
   SOLUONGNH            int                  null,
   constraint PK_CHITIETDONNHAPHANG primary key (MAMH, MADNH)
)
go

/*==============================================================*/
/* Index: CHITIETDONNHAPHANG2_FK                                */
/*==============================================================*/




create nonclustered index CHITIETDONNHAPHANG2_FK on CHITIETDONNHAPHANG (MAMH ASC)
go

/*==============================================================*/
/* Index: CHITIETDONNHAPHANG_FK                                 */
/*==============================================================*/




create nonclustered index CHITIETDONNHAPHANG_FK on CHITIETDONNHAPHANG (MADNH ASC)
go

/*==============================================================*/
/* Table: CHITIETHOADON                                         */
/*==============================================================*/
create table CHITIETHOADON (
   MAMH                 varchar(5)           not null,
   MAHD                 varchar(5)           not null,
   SOLUONGMH            int                  null,
   constraint PK_CHITIETHOADON primary key (MAMH, MAHD)
)
go

/*==============================================================*/
/* Index: CHITIETHOADON2_FK                                     */
/*==============================================================*/




create nonclustered index CHITIETHOADON2_FK on CHITIETHOADON (MAMH ASC)
go

/*==============================================================*/
/* Index: CHITIETHOADON_FK                                      */
/*==============================================================*/




create nonclustered index CHITIETHOADON_FK on CHITIETHOADON (MAHD ASC)
go

/*==============================================================*/
/* Table: CHITIETNHACUNGCAP                                     */
/*==============================================================*/
create table CHITIETNHACUNGCAP (
   MAMH                 varchar(5)           not null,
   MANCC                varchar(5)           not null,
   constraint PK_CHITIETNHACUNGCAP primary key (MAMH, MANCC)
)
go

/*==============================================================*/
/* Index: CHITIETNHACUNGCAP2_FK                                 */
/*==============================================================*/




create nonclustered index CHITIETNHACUNGCAP2_FK on CHITIETNHACUNGCAP (MAMH ASC)
go

/*==============================================================*/
/* Index: CHITIETNHACUNGCAP_FK                                  */
/*==============================================================*/




create nonclustered index CHITIETNHACUNGCAP_FK on CHITIETNHACUNGCAP (MANCC ASC)
go

/*==============================================================*/
/* Table: DONNHAPHANG                                           */
/*==============================================================*/
create table DONNHAPHANG (
   MADNH                varchar(5)           not null,
   TRANGTHAI            bit                  null,
   NGAYLAPDNH           datetime             null,
   NGAYXACNHANDNH       datetime             null,
   TONGTIENDNH          money                null,
   constraint PK_DONNHAPHANG primary key (MADNH)
)
go

/*==============================================================*/
/* Table: HOADON                                                */
/*==============================================================*/
create table HOADON (
   MAHD                 varchar(5)           not null,
   NGAYLAPHD            datetime             null,
   TONGTIENHD           money                null,
   constraint PK_HOADON primary key (MAHD)
)
go

/*==============================================================*/
/* Table: LOAIMATHANG                                           */
/*==============================================================*/
create table LOAIMATHANG (
   MALMH                varchar(5)           not null,
   TENLMH               nvarchar(255)        null,
   constraint PK_LOAIMATHANG primary key (MALMH)
)
go

/*==============================================================*/
/* Table: MATHANG                                               */
/*==============================================================*/
create table MATHANG (
   MAMH                 varchar(5)           not null,
   MALMH                varchar(5)           not null,
   TENMH                nvarchar(255)        null,
   SOLUONGTK            int                  null,
   VITRI                nvarchar(255)        null,
   MOTA                 nvarchar(500)        null,
   GIABAN               money                null,
   GIAMUA               money                null,
   DONVI                nvarchar(20)         null,
   constraint PK_MATHANG primary key (MAMH)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/




create nonclustered index THUOC_FK on MATHANG (MALMH ASC)
go

/*==============================================================*/
/* Table: NHACUNGCAP                                            */
/*==============================================================*/
create table NHACUNGCAP (
   MANCC                varchar(5)           not null,
   TENNCC               nvarchar(255)        null,
   DIACHI               nvarchar(255)        null,
   SDT                  varchar(20)          null,
   EMAIL                nvarchar(255)        null,
   FAX                  nvarchar(255)        null,
   constraint PK_NHACUNGCAP primary key (MANCC)
)
go

alter table CHITIETDONNHAPHANG
   add constraint FK_CHITIETD_CHITIETDO_DONNHAPH foreign key (MADNH)
      references DONNHAPHANG (MADNH)
go

alter table CHITIETDONNHAPHANG
   add constraint FK_CHITIETD_CHITIETDO_MATHANG foreign key (MAMH)
      references MATHANG (MAMH)
go

alter table CHITIETHOADON
   add constraint FK_CHITIETH_CHITIETHO_HOADON foreign key (MAHD)
      references HOADON (MAHD)
go

alter table CHITIETHOADON
   add constraint FK_CHITIETH_CHITIETHO_MATHANG foreign key (MAMH)
      references MATHANG (MAMH)
go

alter table CHITIETNHACUNGCAP
   add constraint FK_CHITIETN_CHITIETNH_NHACUNGC foreign key (MANCC)
      references NHACUNGCAP (MANCC)
go

alter table CHITIETNHACUNGCAP
   add constraint FK_CHITIETN_CHITIETNH_MATHANG foreign key (MAMH)
      references MATHANG (MAMH)
go

alter table MATHANG
   add constraint FK_MATHANG_THUOC_LOAIMATH foreign key (MALMH)
      references LOAIMATHANG (MALMH)
go

