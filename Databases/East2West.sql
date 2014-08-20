USE master
GO
IF EXISTS(SELECT * FROM SYS.DATABASES WHERE NAME='East2West')
DROP DATABASE East2West
GO
CREATE DATABASE East2West
GO
USE East2West
GO
CREATE TABLE TypePackage
(
	TypeTourisId nvarchar(5) CONSTRAINT pk_TypeTourisId primary key,
	PackageName nvarchar(100) not null,
)
GO
CREATE TABLE PackageTours
(
	TouristId int identity CONSTRAINT pk_TouristId primary key, 
	TouristName nvarchar(100) not null,
	TouristPlace nvarchar(100) not null,
	TouristDescription nvarchar(100) not null,
	TourisPrice float not null CHECK (TourisPrice>0),
	TourisDuration nvarchar(50) not null,
	ImagesTouris text,
	TypeTouris nvarchar(5) not null CONSTRAINT fk_TypeTouris FOREIGN KEY (TypeTouris) REFERENCES TypePackage(TypeTourisId),

)
GO
CREATE TABLE PackageInfo
(
	InfoId int identity CONSTRAINT pk_InfoId primary key,
	Accommodation nvarchar(300) not null,
	TouristFood nvarchar(300) not null,
	LocalTravel text not null,
	ImagesTouris text,
	PackageTouristId int not null CONSTRAINT fk_TouristId FOREIGN KEY (PackageTouristId) REFERENCES PackageTours(TouristId)
)
