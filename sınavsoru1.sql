--create database Odev
use Odev
create table tblSirket
(
	sirketID int identity(1,1) not null primary key,
	sirketAdi varchar(20) not null,
	sirketTelefon varchar(11) not null,
	sirketMail varchar(25) not null
)
create table tblCalisan
(
	calisanID int identity (1,1) not null primary key,
	calisanAdi varchar(20) not null,
	calisanPozisyonu varchar(25) not null,
	calisanTelefon varchar(11) not null,
	calisanMail varchar(15) not null
)
create table tblProje
(
	projeID int identity (1,1) not null primary key,
	projeAdi varchar(15) not null,
	projeBaslamaTarih datetime not null,
	projeBitisTarih datetime not null,
	projeButce varchar(10) not null,
	calisanID int not null foreign key references tblCalisan (calisanID),
	sirketID int not null foreign key references tblSirket (sirketID)
	)
