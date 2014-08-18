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
@TouristPlace nvarchar(100),
@Accommodation nvarchar(300),
@TouristFood nvarchar(300),
@LocalTravel text,
@TourisPrice float,
@TourisDuration nvarchar(50),
@ImagesTouris text,
@TypeTouris nvarchar(5)
As
insert into dbo.PackageTours values(@TouristPlace,@Accommodation,@TouristFood,@LocalTravel,@TourisPrice,@TourisDuration,@ImagesTouris,@TypeTouris)
GO