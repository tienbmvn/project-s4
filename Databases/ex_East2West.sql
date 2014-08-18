use East2West
go
/*==================================== PackageType Table Procedure ======================================*/
exec sp_InsertPackageType 'CWT', 'Country Wise Tours'
exec sp_InsertPackageType 'ATC', 'Activity based like treks, camps or safaris'
exec sp_InsertPackageType 'PHS', 'Places of historical significance'
/*==================================== PackageTours Table Procedure ======================================*/