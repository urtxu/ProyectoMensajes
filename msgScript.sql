USE [DAM_GorkaUrtxuegia_DEV]
GO

/****** Object:  Table [msg].[msgMensajes]    Script Date: 11/03/2020 9:33:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [msg].[msgMensajes](
	[IDMensaje] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuarioEnv] [int] NOT NULL,
	[IDUsuarioRec] [int] NOT NULL,
	[IDEstado] [int] NOT NULL,
	[Mensaje] [varchar](max) NOT NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_msgMensajes] PRIMARY KEY CLUSTERED 
(
	[IDMensaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [msg].[msgMensajes]  WITH CHECK ADD  CONSTRAINT [FK_msgMensajes_msgEstado] FOREIGN KEY([IDEstado])
REFERENCES [msg].[msgEstado] ([IDEstado])
GO

ALTER TABLE [msg].[msgMensajes] CHECK CONSTRAINT [FK_msgMensajes_msgEstado]
GO

ALTER TABLE [msg].[msgMensajes]  WITH CHECK ADD  CONSTRAINT [FK_msgMensajes_msgUsuarios] FOREIGN KEY([IDUsuarioEnv])
REFERENCES [msg].[msgUsuarios] ([IDUsuarios])
GO

ALTER TABLE [msg].[msgMensajes] CHECK CONSTRAINT [FK_msgMensajes_msgUsuarios]
GO

ALTER TABLE [msg].[msgMensajes]  WITH CHECK ADD  CONSTRAINT [FK_msgMensajes_msgUsuarios1] FOREIGN KEY([IDUsuarioRec])
REFERENCES [msg].[msgUsuarios] ([IDUsuarios])
GO

ALTER TABLE [msg].[msgMensajes] CHECK CONSTRAINT [FK_msgMensajes_msgUsuarios1]
GO

CREATE TABLE [msg].[msgUsuarios](
	[IDUsuarios] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Contrasena] [varchar](20) NOT NULL,
	[TipoUsuario] [varchar](20) NOT NULL,
	[Telefono] [char](12) NULL,
 CONSTRAINT [PK_msgUsuarios] PRIMARY KEY CLUSTERED 
(
	[IDUsuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [msg].[msgEstado](
	[IDEstado] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_msgEstado_1] PRIMARY KEY CLUSTERED 
(
	[IDEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


