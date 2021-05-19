USE [Northwind]
GO

/****** Object:  Table [dbo].[Ventas]    Script Date: 11/10/2020 19:45:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ventas](
	[VentasID] [int] IDENTITY(1,1) NOT NULL,
	[VentasDescripcion] [varchar](50) NULL,
	[VentasFecha] [date] NULL
) ON [PRIMARY]
GO