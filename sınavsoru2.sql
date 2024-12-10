--create database Odev2
use Odev2
create table tblMusteri
(
	musteriID int identity(1,1) not null primary key,
	musteriAdi varchar(10) not null,
	musteriTelefon varchar(15) not null
)
create table tblTedarikci
(
	tedarikciID int identity(1,1) not null primary key,
	tedarikciAdi varchar(15) not null,
	tedarikciTel varchar(11) not null,
	tedarikciMail varchar(25) not null
)
create table tblUrun
(
	urunID int identity (1,1) not null primary key,
	urunAdi varchar(25) not null,
	urunFiyat varchar(10) not null,
	urunMiktar varchar(10) not null,
	tedarikciID int not null foreign key references tblTedarikci (tedarikciID)
)
create table tblSatinAlma
(
	satiþID int identity(1,1) not null primary key,
	OdemeDurumu varchar(20) not null,
	SatinAlmaTarihi datetime not null,
	adet varchar(15) not null,
	SatiþFiyati varchar(20) not null,
	urunID int not null foreign key references tblUrun (urunID),
	musteriID int not null foreign key references tblMusteri (musteriID)
	)
