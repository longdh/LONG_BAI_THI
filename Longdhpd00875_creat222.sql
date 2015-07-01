-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:15:18.303




-- tables
-- Table: TNHANVIEN
CREATE TABLE TNHANVIEN (
    Ma_NV int  NOT NULL,
    Ten_NV nvarchar(30)  NOT NULL,
    Ngay_Sinh date  NOT NULL,
    Gioi_TIinh nvarchar(10)  NOT NULL,
    Email nvarchar(30)  NOT NULL,
    Muc_Luong money  NOT NULL,
    Ma_PB int  NOT NULL,
    CONSTRAINT TNHANVIEN_pk PRIMARY KEY (Ma_NV)
)
;





-- Table: TPHONGBAN
CREATE TABLE TPHONGBAN (
    Ma_PB int  NOT NULL,
    Ten_PB nvarchar(20)  NOT NULL,
    CONSTRAINT TPHONGBAN_pk PRIMARY KEY (Ma_PB)
)
;









-- foreign keys
-- Reference:  NHAN_VIEN_PHONG_BAN (table: TNHANVIEN)


ALTER TABLE TNHANVIEN ADD CONSTRAINT NHAN_VIEN_PHONG_BAN 
    FOREIGN KEY (Ma_PB)
    REFERENCES TPHONGBAN (Ma_PB)
;





-- End of file.

