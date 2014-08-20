use East2West
GO
/*==================================== PackageType Table Procedure ======================================*/
create proc sp_InsertPackageType
@TypeTourisId nvarchar(5),
@PackageName nvarchar(100)
AS
insert into dbo.TypePackage values(@TypeTourisId,@PackageName)
GO
/*==================================== PackageTours Table Procedure ======================================*/
create proc sp_PackageTours
@TouristName nvarchar(100),
@TouristPlace nvarchar(100),
@TouristDescription nvarchar(100),
@TourisPrice float,
@TourisDuration nvarchar(50),
@ImagesTouris text,
@TypeTouris nvarchar(5)
As
insert into dbo.PackageTours values(@TouristName,@TouristPlace,@TouristDescription,@TourisPrice,@TourisDuration,@ImagesTouris,@TypeTouris)
GO
/*==================================== InfoPackageTours Table Procedure ======================================*/
create proc sp_InfoPackageTours
@Accommodation nvarchar(300),
@TouristFood nvarchar(300),
@LocalTravel text,
@ImagesTouris text,
@PackageTouristId int
As
insert into dbo.PackageInfor values(@Accommodation,@TouristFood,@LocalTravel,@ImagesTouris,@PackageTouristId)
GO