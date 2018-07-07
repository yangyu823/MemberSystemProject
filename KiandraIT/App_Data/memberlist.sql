CREATE TABLE [dbo].[Table]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY(0, 1), 
    [Username] NCHAR(20) NULL, 
    [Password] NCHAR(20) NULL, 
    [FullName] NCHAR(20) NULL, 
    [Phone] NCHAR(15) NULL, 
    [Email] NCHAR(50) NULL
)
