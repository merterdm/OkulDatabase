CREATE TABLE [dbo].[Ogrenciler](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[Ad] [varchar](50) NULL,
	[Soyad] [varchar](50) NULL,
	[Tcno] [varchar](11) NULL,
	[Cinsiyet] [bit] NULL,
	[SinifId] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[DonemId] [int] NULL)

