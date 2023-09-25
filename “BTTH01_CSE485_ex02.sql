CREATE DATABASE BTTH01_CSE485
USE BTTH01_CSE485
CREATE TABLE tacgia(
ma_tgia int not null primary key,
ten_tgia varchar(100) not null,
hinh_tgia varchar(100),
)
CREATE TABLE baiviet(
ma_bviet int not null primary key,
tieude varchar(200) not null,
ten_bhat varchar(100) not null,
ma_tloai int not null,
tomtat text not null,
noidung text ,
ma_tgia int not null,
ngayviet datetime not null ,
hinhanh varchar(200),
)
CREATE TABLE theloai(
ma_tloai int not null primary key,
ten_tloai varchar(50) not null,
)
ALTER TABLE baiviet ADD CONSTRAINT khanh FOREIGN KEY (ma_tgia) REFERENCES tacgia(ma_tgia);
ALTER TABLE baiviet ADD CONSTRAINT nkhanh FOREIGN KEY (ma_tloai) REFERENCES theloai(ma_tloai);
