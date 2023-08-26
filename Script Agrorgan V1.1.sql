USE [agrogan]
GO
/****** Object:  Table [dbo].[animal]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[animal](
	[id_animal] [int] IDENTITY(1,1) NOT NULL,
	[orejera] [nvarchar](10) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[id_especie] [int] NOT NULL,
	[id_raza] [int] NOT NULL,
	[observaciones] [nvarchar](1000) NOT NULL,
	[sexo] [char](1) NOT NULL,
	[categoria_pedigre] [nchar](10) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[peso_nacimiento] [nchar](10) NOT NULL,
	[orejera_madre] [nvarchar](10) NOT NULL,
	[orejera_padre] [nvarchar](10) NOT NULL,
	[codigo_geo] [nvarchar](50) NOT NULL,
	[fecha_creacion] [date] NOT NULL,
	[id_usuario_creacion] [int] NOT NULL,
	[fecha_modificacion] [date] NULL,
	[id_usuario_modificacion] [int] NULL,
	[id_hato] [int] NOT NULL,
	[id_foto_animal] [int] NOT NULL,
 CONSTRAINT [PK_animal1] PRIMARY KEY CLUSTERED 
(
	[id_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[celo]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[celo](
	[id_celo] [int] IDENTITY(1,1) NOT NULL,
	[id_animal] [int] NOT NULL,
	[fecha_deteccion] [date] NOT NULL,
	[observaciones] [nvarchar](300) NOT NULL,
	[id_usuario_deteccion] [int] NOT NULL,
 CONSTRAINT [PK_celo] PRIMARY KEY CLUSTERED 
(
	[id_celo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[control_sanitario]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control_sanitario](
	[id_control_sanitario] [int] IDENTITY(1,1) NOT NULL,
	[id_animal] [int] NOT NULL,
	[id_tipo_control_sanitario] [int] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_finalizacion] [date] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[tratamiento_utilizado] [nvarchar](50) NOT NULL,
	[dias] [int] NOT NULL,
	[dias_retiro_ordeñe] [int] NULL,
	[comentarios] [nvarchar](500) NOT NULL,
	[id_usuario_responsable] [int] NOT NULL,
 CONSTRAINT [PK_control_sanitario] PRIMARY KEY CLUSTERED 
(
	[id_control_sanitario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[control_sanitario_evidencia]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control_sanitario_evidencia](
	[id_control_sanitario_evidencia] [int] IDENTITY(1,1) NOT NULL,
	[id_control_sanitario] [int] NOT NULL,
	[evidencia] [varbinary](max) NOT NULL,
	[fecha_creacion] [date] NOT NULL,
 CONSTRAINT [PK_control_sanitario_evidencia] PRIMARY KEY CLUSTERED 
(
	[id_control_sanitario_evidencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[especie]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[especie](
	[id_especie] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[descripcion] [nvarchar](500) NOT NULL,
	[estado] [bit] NOT NULL,
	[fecha_creacion] [date] NOT NULL,
	[id_usuario_creacion] [int] NOT NULL,
	[fecha_modificacion] [date] NULL,
	[id_usuario_modificacion] [int] NULL,
 CONSTRAINT [PK_especie] PRIMARY KEY CLUSTERED 
(
	[id_especie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[finca]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[finca](
	[id_finca] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](300) NOT NULL,
	[cantidad_hectareas] [int] NOT NULL,
	[direccion] [nvarchar](100) NOT NULL,
	[latitud] [nvarchar](15) NOT NULL,
	[longitud] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_ubicaciones_fincas] PRIMARY KEY CLUSTERED 
(
	[id_finca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[foto_animal]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foto_animal](
	[id_foto_animal] [int] IDENTITY(1,1) NOT NULL,
	[foto] [varbinary](max) NOT NULL,
	[estado] [bit] NOT NULL,
	[fecha_creacion] [date] NOT NULL,
	[id_usuario_creacion] [int] NOT NULL,
 CONSTRAINT [PK_foto_animal] PRIMARY KEY CLUSTERED 
(
	[id_foto_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[foto_usuario]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foto_usuario](
	[id_foto_usuario] [int] IDENTITY(1,1) NOT NULL,
	[foto] [varbinary](max) NOT NULL,
	[estado] [bit] NOT NULL,
	[fecha_creacion] [date] NOT NULL,
	[id_usuario_creacion] [int] NOT NULL,
 CONSTRAINT [PK_foto_usuario] PRIMARY KEY CLUSTERED 
(
	[id_foto_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genetica_macho]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genetica_macho](
	[id_genetica_macho] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[orejera] [nvarchar](10) NOT NULL,
	[id_tipo_recurso_genetica] [int] NOT NULL,
	[id_especie] [int] NOT NULL,
	[id_raza] [int] NOT NULL,
	[estado] [bit] NOT NULL,
	[descripcion] [nvarchar](300) NOT NULL,
	[categoria] [nvarchar](20) NOT NULL,
	[fecha_creacion] [date] NOT NULL,
	[id_usuario_creacion] [int] NOT NULL,
	[fecha_modificacion] [date] NULL,
	[id_usuario_modificacion] [int] NULL,
	[ficha_tecnica] [varbinary](max) NULL,
 CONSTRAINT [PK_genetica_macho] PRIMARY KEY CLUSTERED 
(
	[id_genetica_macho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hato]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hato](
	[id_hato] [int] IDENTITY(1,1) NOT NULL,
	[id_raza] [int] NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[descripcion] [nvarchar](500) NOT NULL,
	[estado] [bit] NOT NULL,
	[fecha_creacion] [date] NOT NULL,
	[id_usuario_creacion] [int] NOT NULL,
	[fecha_modificacion] [date] NULL,
	[id_usuario_modificacion] [int] NULL,
	[id_finca] [int] NOT NULL,
 CONSTRAINT [PK_hato] PRIMARY KEY CLUSTERED 
(
	[id_hato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ingrediente]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingrediente](
	[id_ingrediente] [int] IDENTITY(1,1) NOT NULL,
	[id_racion] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[porcion] [int] NOT NULL,
	[id_unidad_medida] [int] NOT NULL,
	[energia] [int] NOT NULL,
	[proteina] [int] NOT NULL,
	[costo] [float] NOT NULL,
	[comentarios] [nvarchar](300) NOT NULL,
	[materia_seca] [int] NOT NULL,
 CONSTRAINT [PK_ingrediente] PRIMARY KEY CLUSTERED 
(
	[id_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inseminacion]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inseminacion](
	[id_inseminacion] [int] IDENTITY(1,1) NOT NULL,
	[id_animal] [int] NOT NULL,
	[fecha_servicio] [date] NOT NULL,
	[id_genetica_macho] [int] NOT NULL,
	[id_metodo_reproduccion] [int] NOT NULL,
	[id_usuario] [nchar](10) NULL,
	[fertil] [bit] NULL,
 CONSTRAINT [PK_inseminacion] PRIMARY KEY CLUSTERED 
(
	[id_inseminacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lactancia]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lactancia](
	[id_lactancia] [int] IDENTITY(1,1) NOT NULL,
	[id_animal] [int] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[lactancia_finalizada] [bit] NOT NULL,
	[fecha_fin] [date] NULL,
 CONSTRAINT [PK_lactancia] PRIMARY KEY CLUSTERED 
(
	[id_lactancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[metodo_reproduccion]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[metodo_reproduccion](
	[id_metodo_reproduccion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](30) NOT NULL,
	[descripcion] [nvarchar](500) NOT NULL,
	[estado] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordenno]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordenno](
	[id_ordenno] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[descripcion] [nvarchar](100) NOT NULL,
	[comentarios] [nvarchar](50) NOT NULL,
	[id_usuario_responsable] [int] NOT NULL,
	[id_unidad_medida] [int] NOT NULL,
	[id_finca] [int] NOT NULL,
 CONSTRAINT [PK_ordenno] PRIMARY KEY CLUSTERED 
(
	[id_ordenno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordenno_animal]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordenno_animal](
	[id_ordenno_animal] [int] IDENTITY(1,1) NOT NULL,
	[id_ordenno] [int] NOT NULL,
	[id_animal] [int] NOT NULL,
	[ordeno_1] [int] NOT NULL,
	[ordeno_2] [int] NOT NULL,
	[scc] [float] NOT NULL,
	[grasa] [float] NOT NULL,
	[proteina] [float] NOT NULL,
	[peso] [float] NOT NULL,
 CONSTRAINT [PK_ordenno_animal] PRIMARY KEY CLUSTERED 
(
	[id_ordenno_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prennez]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prennez](
	[id_prennez] [int] IDENTITY(1,1) NOT NULL,
	[id_animal] [int] NOT NULL,
	[fecha_prennez] [date] NOT NULL,
	[parto] [bit] NOT NULL,
	[id_inseminacion] [int] NOT NULL,
 CONSTRAINT [PK_prennez] PRIMARY KEY CLUSTERED 
(
	[id_prennez] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[racion]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[racion](
	[id_racion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](500) NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_fin] [date] NOT NULL,
	[id_usuario_responsable] [int] NOT NULL,
	[id_hato] [int] NOT NULL,
 CONSTRAINT [PK_racion] PRIMARY KEY CLUSTERED 
(
	[id_racion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[raza]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[raza](
	[id_raza] [int] IDENTITY(1,1) NOT NULL,
	[id_raza_lechera] [int] NULL,
	[id_raza_carne] [int] NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[descripcion] [nvarchar](500) NOT NULL,
	[estado] [bit] NOT NULL,
	[fecha_creacion] [date] NOT NULL,
	[id_usuario_creacion] [int] NOT NULL,
	[fecha_modificacion] [date] NULL,
	[id_usuario_modificacion] [int] NULL,
 CONSTRAINT [PK_raza] PRIMARY KEY CLUSTERED 
(
	[id_raza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[raza_lechera]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[raza_lechera](
	[id_raza_lechera] [int] IDENTITY(1,1) NOT NULL,
	[gestacion] [int] NOT NULL,
	[duracion_celo] [int] NOT NULL,
	[periodo_celo] [int] NOT NULL,
	[primer_celo_posparto] [int] NOT NULL,
	[limite_lactancia] [int] NOT NULL,
	[periodo_secado] [int] NOT NULL,
	[ini_lactancia_maxima] [int] NOT NULL,
	[fin_lactancia_maxima] [int] NOT NULL,
	[ini_lactancia_media] [int] NOT NULL,
	[fin_lactancia_media] [int] NOT NULL,
	[ini_lactancia_baja] [int] NOT NULL,
	[fin_lactancia_baja] [int] NOT NULL,
 CONSTRAINT [PK_raza_lechera] PRIMARY KEY CLUSTERED 
(
	[id_raza_lechera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[estado] [bit] NOT NULL,
	[fecha_creacion] [date] NOT NULL,
	[id_usuario_creacion] [int] NOT NULL,
	[fecha_modificacion] [date] NULL,
	[id_usuario_modificacion] [int] NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_control_sanitario]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_control_sanitario](
	[id_tipo_control_sanitario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_tipo_control_sanitario] PRIMARY KEY CLUSTERED 
(
	[id_tipo_control_sanitario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_establecimiento_agropecuario]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_establecimiento_agropecuario](
	[id_tipo_establecimiento_agropecuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_tipo_establecimiento_agropecuario] PRIMARY KEY CLUSTERED 
(
	[id_tipo_establecimiento_agropecuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_recurso_genetica]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_recurso_genetica](
	[id_tipo_recurso_genetica] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_tipo_recurso_genetica] PRIMARY KEY CLUSTERED 
(
	[id_tipo_recurso_genetica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trazabilidad_falla]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trazabilidad_falla](
	[id_trazabilidad] [int] IDENTITY(1,1) NOT NULL,
	[nombre_usuario] [varchar](100) NULL,
	[numero_error] [int] NULL,
	[estado_error] [int] NULL,
	[severidad_error] [int] NULL,
	[linea_error] [int] NULL,
	[procedimiento_error] [varchar](max) NULL,
	[mensaje_error] [varchar](max) NULL,
	[fecha_Error] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unidad_medida]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unidad_medida](
	[id_unidad_medida] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[abreviatura] [nvarchar](5) NOT NULL,
	[descripcion] [nvarchar](150) NOT NULL,
	[estado] [bit] NOT NULL,
 CONSTRAINT [PK_unidad_medida] PRIMARY KEY CLUSTERED 
(
	[id_unidad_medida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[id_rol] [int] NOT NULL,
	[id_finca] [int] NOT NULL,
	[correo] [nvarchar](50) NOT NULL,
	[contraseña] [nvarchar](50) NOT NULL,
	[identificacion] [nvarchar](15) NOT NULL,
	[tipo_identificacion] [nvarchar](10) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[apellido] [nvarchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
	[direccion] [nvarchar](50) NOT NULL,
	[idioma] [nvarchar](50) NOT NULL,
	[pais] [nvarchar](50) NOT NULL,
	[id_tipo_establecimiento_agropecuario] [int] NOT NULL,
	[id_foto_usuario] [int] NOT NULL,
	[id_usuario_creacion] [int] NOT NULL,
	[fecha_creacion] [date] NOT NULL,
	[id_usuario_modificacion] [int] NULL,
	[fecha_modificacion] [date] NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[animal] ON 
GO
INSERT [dbo].[animal] ([id_animal], [orejera], [nombre], [id_especie], [id_raza], [observaciones], [sexo], [categoria_pedigre], [fecha_nacimiento], [peso_nacimiento], [orejera_madre], [orejera_padre], [codigo_geo], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion], [id_hato], [id_foto_animal]) VALUES (1, N'120', N'Anacleta', 1, 1, N'Vaca parida nueva', N'H', N'NA        ', CAST(N'2017-09-28' AS Date), N'35        ', N'000', N'000', N'0', CAST(N'2021-09-28' AS Date), 1, NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[animal] OFF
GO
SET IDENTITY_INSERT [dbo].[celo] ON 
GO
INSERT [dbo].[celo] ([id_celo], [id_animal], [fecha_deteccion], [observaciones], [id_usuario_deteccion]) VALUES (1, 1, CAST(N'2021-10-01' AS Date), N'Primer Celo detectado de vaca lactante', 1)
GO
SET IDENTITY_INSERT [dbo].[celo] OFF
GO
SET IDENTITY_INSERT [dbo].[control_sanitario] ON 
GO
INSERT [dbo].[control_sanitario] ([id_control_sanitario], [id_animal], [id_tipo_control_sanitario], [fecha_inicio], [fecha_finalizacion], [nombre], [tratamiento_utilizado], [dias], [dias_retiro_ordeñe], [comentarios], [id_usuario_responsable]) VALUES (1, 1, 2, CAST(N'2021-10-01' AS Date), CAST(N'2021-11-01' AS Date), N'Vitaminizacion', N'Inyeccion', 30, NULL, N'Aplicar durante 30 dias sin parar', 1)
GO
SET IDENTITY_INSERT [dbo].[control_sanitario] OFF
GO
SET IDENTITY_INSERT [dbo].[especie] ON 
GO
INSERT [dbo].[especie] ([id_especie], [nombre], [descripcion], [estado], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion]) VALUES (1, N'Bos Taurus (Bovina)', N'Son razas originarias de Europa reconocidas en todo el mundo por sus altos rendimientos cárnicos y la precocidad de sus crías. Entre las razas representativas de la especie Bos Taurus están: Holstein, Aberdeen Angus, Limousin, Hereford, Charolaise, Romagnola, Jersey y Pardo Suizo', 1, CAST(N'2021-09-21' AS Date), 1, CAST(N'2021-09-21' AS Date), 1)
GO
INSERT [dbo].[especie] ([id_especie], [nombre], [descripcion], [estado], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion]) VALUES (2, N'Bos Inidicus (Bovina)', N'También conocido como ganado cebú, es más popular entre los países del trópico en los cuales se ha procedido a realizar cruces de animales Bos indicus con animales criollos o Bos taurus. Algunas de las razas más representativas son: Brahman, Nelore, Guzerat, Gyr e Indubrasil', 1, CAST(N'2021-09-21' AS Date), 1, CAST(N'2021-09-21' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[especie] OFF
GO
SET IDENTITY_INSERT [dbo].[finca] ON 
GO
INSERT [dbo].[finca] ([id_finca], [nombre], [descripcion], [cantidad_hectareas], [direccion], [latitud], [longitud]) VALUES (1, N'La Florida', N'La florida, parcela numero 1 por caracolicito', 23, N'Via caracolicito la primavera', N'0.0', N'0.0')
GO
SET IDENTITY_INSERT [dbo].[finca] OFF
GO
SET IDENTITY_INSERT [dbo].[foto_animal] ON 
GO
INSERT [dbo].[foto_animal] ([id_foto_animal], [foto], [estado], [fecha_creacion], [id_usuario_creacion]) VALUES (1, 0x00FFAA, 1, CAST(N'2021-09-21' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[foto_animal] OFF
GO
SET IDENTITY_INSERT [dbo].[foto_usuario] ON 
GO
INSERT [dbo].[foto_usuario] ([id_foto_usuario], [foto], [estado], [fecha_creacion], [id_usuario_creacion]) VALUES (1, 0x0001E240, 1, CAST(N'2021-09-28' AS Date), 1)
GO
INSERT [dbo].[foto_usuario] ([id_foto_usuario], [foto], [estado], [fecha_creacion], [id_usuario_creacion]) VALUES (2, 0x0001E240, 1, CAST(N'2021-09-28' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[foto_usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[genetica_macho] ON 
GO
INSERT [dbo].[genetica_macho] ([id_genetica_macho], [nombre], [orejera], [id_tipo_recurso_genetica], [id_especie], [id_raza], [estado], [descripcion], [categoria], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion], [ficha_tecnica]) VALUES (1, N'SanJuan', N'133', 1, 1, 1, 1, N'Pajillas del toro SanJuan de raza Holstein', N'Toro Lechero', CAST(N'2021-10-01' AS Date), 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[genetica_macho] OFF
GO
SET IDENTITY_INSERT [dbo].[hato] ON 
GO
INSERT [dbo].[hato] ([id_hato], [id_raza], [nombre], [descripcion], [estado], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion], [id_finca]) VALUES (1, 1, N'Alta Produccion', N'Seleccion de las mejores vacas del hato ', 1, CAST(N'2021-09-27' AS Date), 1, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[hato] OFF
GO
SET IDENTITY_INSERT [dbo].[ingrediente] ON 
GO
INSERT [dbo].[ingrediente] ([id_ingrediente], [id_racion], [nombre], [porcion], [id_unidad_medida], [energia], [proteina], [costo], [comentarios], [materia_seca]) VALUES (1, 1, N'Pasto de corte', 6, 2, 10, 17, 1, N'Se debe dar este ingrediente por 3 meses', 70)
GO
SET IDENTITY_INSERT [dbo].[ingrediente] OFF
GO
SET IDENTITY_INSERT [dbo].[inseminacion] ON 
GO
INSERT [dbo].[inseminacion] ([id_inseminacion], [id_animal], [fecha_servicio], [id_genetica_macho], [id_metodo_reproduccion], [id_usuario], [fertil]) VALUES (1, 1, CAST(N'2021-10-10' AS Date), 1, 1, N'1         ', 0)
GO
SET IDENTITY_INSERT [dbo].[inseminacion] OFF
GO
SET IDENTITY_INSERT [dbo].[lactancia] ON 
GO
INSERT [dbo].[lactancia] ([id_lactancia], [id_animal], [fecha_inicio], [lactancia_finalizada], [fecha_fin]) VALUES (1, 1, CAST(N'2021-10-01' AS Date), 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[lactancia] OFF
GO
SET IDENTITY_INSERT [dbo].[metodo_reproduccion] ON 
GO
INSERT [dbo].[metodo_reproduccion] ([id_metodo_reproduccion], [nombre], [descripcion], [estado]) VALUES (1, N'Monta Natural', N'Es la cubrición que se realiza de forma tradicional con el contacto sexual entre el macho y la hembra', 1)
GO
INSERT [dbo].[metodo_reproduccion] ([id_metodo_reproduccion], [nombre], [descripcion], [estado]) VALUES (2, N'Inseminación Artificial', N'La inseminación artificial es el método de reproducción en el cual el hombre ha sustituido el apareamiento natural entre el macho y la hembra', 1)
GO
SET IDENTITY_INSERT [dbo].[metodo_reproduccion] OFF
GO
SET IDENTITY_INSERT [dbo].[ordenno] ON 
GO
INSERT [dbo].[ordenno] ([id_ordenno], [fecha], [descripcion], [comentarios], [id_usuario_responsable], [id_unidad_medida], [id_finca]) VALUES (1, CAST(N'2021-10-01' AS Date), N'Ordeño 01-10', N'Primer Ordeño del Mes', 1, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[ordenno] OFF
GO
SET IDENTITY_INSERT [dbo].[ordenno_animal] ON 
GO
INSERT [dbo].[ordenno_animal] ([id_ordenno_animal], [id_ordenno], [id_animal], [ordeno_1], [ordeno_2], [scc], [grasa], [proteina], [peso]) VALUES (1, 1, 1, 15, 10, 1, 2, 15, 25)
GO
SET IDENTITY_INSERT [dbo].[ordenno_animal] OFF
GO
SET IDENTITY_INSERT [dbo].[prennez] ON 
GO
INSERT [dbo].[prennez] ([id_prennez], [id_animal], [fecha_prennez], [parto], [id_inseminacion]) VALUES (1, 1, CAST(N'2021-10-10' AS Date), 0, 1)
GO
SET IDENTITY_INSERT [dbo].[prennez] OFF
GO
SET IDENTITY_INSERT [dbo].[racion] ON 
GO
INSERT [dbo].[racion] ([id_racion], [nombre], [descripcion], [fecha_inicio], [fecha_fin], [id_usuario_responsable], [id_hato]) VALUES (1, N'Pasto de Corte', N'Pasto de Corte Kingrass con alto nivel de palatabilidad', CAST(N'2021-09-28' AS Date), CAST(N'2021-12-28' AS Date), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[racion] OFF
GO
SET IDENTITY_INSERT [dbo].[raza] ON 
GO
INSERT [dbo].[raza] ([id_raza], [id_raza_lechera], [id_raza_carne], [nombre], [descripcion], [estado], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion]) VALUES (1, 1, 0, N'Raza Holstein', N'Raza de ganado Holstein caracterizado por sus altas producciones en leche', 1, CAST(N'2021-09-28' AS Date), 1, CAST(N'2021-09-28' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[raza] OFF
GO
SET IDENTITY_INSERT [dbo].[raza_lechera] ON 
GO
INSERT [dbo].[raza_lechera] ([id_raza_lechera], [gestacion], [duracion_celo], [periodo_celo], [primer_celo_posparto], [limite_lactancia], [periodo_secado], [ini_lactancia_maxima], [fin_lactancia_maxima], [ini_lactancia_media], [fin_lactancia_media], [ini_lactancia_baja], [fin_lactancia_baja]) VALUES (1, 286, 21, 1, 40, 300, 60, 0, 120, 121, 200, 201, 300)
GO
SET IDENTITY_INSERT [dbo].[raza_lechera] OFF
GO
SET IDENTITY_INSERT [dbo].[rol] ON 
GO
INSERT [dbo].[rol] ([id_rol], [nombre], [estado], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion]) VALUES (1, N'Administrador', 1, CAST(N'2021-07-28' AS Date), 1, CAST(N'2021-07-28' AS Date), 1)
GO
INSERT [dbo].[rol] ([id_rol], [nombre], [estado], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion]) VALUES (2, N'Corralero', 1, CAST(N'2021-07-28' AS Date), 1, CAST(N'2021-07-28' AS Date), 1)
GO
INSERT [dbo].[rol] ([id_rol], [nombre], [estado], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion]) VALUES (3, N'Socio', 1, CAST(N'2021-07-28' AS Date), 1, CAST(N'2021-07-28' AS Date), 1)
GO
INSERT [dbo].[rol] ([id_rol], [nombre], [estado], [fecha_creacion], [id_usuario_creacion], [fecha_modificacion], [id_usuario_modificacion]) VALUES (4, N'Externo', 1, CAST(N'2021-07-28' AS Date), 1, CAST(N'2021-07-28' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[rol] OFF
GO
SET IDENTITY_INSERT [dbo].[tipo_control_sanitario] ON 
GO
INSERT [dbo].[tipo_control_sanitario] ([id_tipo_control_sanitario], [nombre], [descripcion], [estado]) VALUES (1, N'Medicacion', N'Control sanitario para aplicar medicamentos', 1)
GO
INSERT [dbo].[tipo_control_sanitario] ([id_tipo_control_sanitario], [nombre], [descripcion], [estado]) VALUES (2, N'Vacunacion', N'Control sanitario para vacunación', 1)
GO
INSERT [dbo].[tipo_control_sanitario] ([id_tipo_control_sanitario], [nombre], [descripcion], [estado]) VALUES (3, N'Desparasitacion', N'Control sanitario para realizar desparasitacion', 1)
GO
INSERT [dbo].[tipo_control_sanitario] ([id_tipo_control_sanitario], [nombre], [descripcion], [estado]) VALUES (4, N'Vitaminizacion', N'Control sanitario para aplicar vitaminas', 1)
GO
SET IDENTITY_INSERT [dbo].[tipo_control_sanitario] OFF
GO
SET IDENTITY_INSERT [dbo].[tipo_establecimiento_agropecuario] ON 
GO
INSERT [dbo].[tipo_establecimiento_agropecuario] ([id_tipo_establecimiento_agropecuario], [nombre], [estado]) VALUES (1, N'Leche', 1)
GO
INSERT [dbo].[tipo_establecimiento_agropecuario] ([id_tipo_establecimiento_agropecuario], [nombre], [estado]) VALUES (2, N'Ceba', 1)
GO
INSERT [dbo].[tipo_establecimiento_agropecuario] ([id_tipo_establecimiento_agropecuario], [nombre], [estado]) VALUES (3, N'Doble Proposito', 1)
GO
SET IDENTITY_INSERT [dbo].[tipo_establecimiento_agropecuario] OFF
GO
SET IDENTITY_INSERT [dbo].[tipo_recurso_genetica] ON 
GO
INSERT [dbo].[tipo_recurso_genetica] ([id_tipo_recurso_genetica], [nombre], [descripcion], [estado]) VALUES (1, N'Esperma', N'Genetica de tipo esperma para reproduccion por inseminación artificial', 1)
GO
INSERT [dbo].[tipo_recurso_genetica] ([id_tipo_recurso_genetica], [nombre], [descripcion], [estado]) VALUES (2, N'Animal', N'Genetica de tipo animal para reproduccion por monta natural', 1)
GO
SET IDENTITY_INSERT [dbo].[tipo_recurso_genetica] OFF
GO
SET IDENTITY_INSERT [dbo].[trazabilidad_falla] ON 
GO
INSERT [dbo].[trazabilidad_falla] ([id_trazabilidad], [nombre_usuario], [numero_error], [estado_error], [severidad_error], [linea_error], [procedimiento_error], [mensaje_error], [fecha_Error]) VALUES (1, N'BOGHDESARR001\jgaleano', 547, 0, 16, 31, N'dbo.sp_animal_guardar', N'Instrucción INSERT en conflicto con la restricción FOREIGN KEY ''FK_animal_especie''. El conflicto ha aparecido en la base de datos ''agrogan'', tabla ''dbo.especie'', column ''id_especie''.', CAST(N'2021-09-21T07:42:25.073' AS DateTime))
GO
INSERT [dbo].[trazabilidad_falla] ([id_trazabilidad], [nombre_usuario], [numero_error], [estado_error], [severidad_error], [linea_error], [procedimiento_error], [mensaje_error], [fecha_Error]) VALUES (2, N'BOGHDESARR001\jgaleano', 547, 0, 16, 31, N'dbo.sp_animal_guardar', N'Instrucción INSERT en conflicto con la restricción FOREIGN KEY ''FK_animal_foto_animal''. El conflicto ha aparecido en la base de datos ''agrogan'', tabla ''dbo.foto_animal'', column ''id_foto_animal''.', CAST(N'2021-09-21T17:34:13.727' AS DateTime))
GO
INSERT [dbo].[trazabilidad_falla] ([id_trazabilidad], [nombre_usuario], [numero_error], [estado_error], [severidad_error], [linea_error], [procedimiento_error], [mensaje_error], [fecha_Error]) VALUES (3, N'BOGHDESARR001\jgaleano', 547, 0, 16, 31, N'dbo.sp_animal_guardar', N'Instrucción INSERT en conflicto con la restricción FOREIGN KEY ''FK_animal_foto_animal''. El conflicto ha aparecido en la base de datos ''agrogan'', tabla ''dbo.foto_animal'', column ''id_foto_animal''.', CAST(N'2021-09-21T17:34:39.630' AS DateTime))
GO
INSERT [dbo].[trazabilidad_falla] ([id_trazabilidad], [nombre_usuario], [numero_error], [estado_error], [severidad_error], [linea_error], [procedimiento_error], [mensaje_error], [fecha_Error]) VALUES (4, N'BOGHDESARR001\jgaleano', 547, 0, 16, 31, N'dbo.sp_animal_guardar', N'Instrucción INSERT en conflicto con la restricción FOREIGN KEY ''FK_animal_hato''. El conflicto ha aparecido en la base de datos ''agrogan'', tabla ''dbo.hato'', column ''id_hato''.', CAST(N'2021-09-21T17:36:13.293' AS DateTime))
GO
INSERT [dbo].[trazabilidad_falla] ([id_trazabilidad], [nombre_usuario], [numero_error], [estado_error], [severidad_error], [linea_error], [procedimiento_error], [mensaje_error], [fecha_Error]) VALUES (5, N'BOGHDESARR001\jgaleano', 547, 0, 16, 22, N'dbo.sp_hato_guardar', N'Instrucción INSERT en conflicto con la restricción FOREIGN KEY ''FK_hato_raza''. El conflicto ha aparecido en la base de datos ''agrogan'', tabla ''dbo.raza'', column ''id_raza''.', CAST(N'2021-09-27T23:10:22.003' AS DateTime))
GO
INSERT [dbo].[trazabilidad_falla] ([id_trazabilidad], [nombre_usuario], [numero_error], [estado_error], [severidad_error], [linea_error], [procedimiento_error], [mensaje_error], [fecha_Error]) VALUES (6, N'BOGHDESARR001\jgaleano', 547, 0, 16, 19, N'dbo.sp_inseminacion_guardar', N'Instrucción INSERT en conflicto con la restricción FOREIGN KEY ''FK_inseminacion_metodoreproduccion''. El conflicto ha aparecido en la base de datos ''agrogan'', tabla ''dbo.metodo_reproduccion'', column ''id_metodo_reproduccion''.', CAST(N'2021-10-01T15:29:50.427' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[trazabilidad_falla] OFF
GO
SET IDENTITY_INSERT [dbo].[unidad_medida] ON 
GO
INSERT [dbo].[unidad_medida] ([id_unidad_medida], [nombre], [abreviatura], [descripcion], [estado]) VALUES (1, N'Gramo', N'Gr', N'Es la unidad principal de masa del Sistema Cegesimal de Unidades,', 1)
GO
INSERT [dbo].[unidad_medida] ([id_unidad_medida], [nombre], [abreviatura], [descripcion], [estado]) VALUES (2, N'Libra', N'Lb', N'Unidad de medida', 1)
GO
INSERT [dbo].[unidad_medida] ([id_unidad_medida], [nombre], [abreviatura], [descripcion], [estado]) VALUES (3, N'Kilogramo', N'Kl', N'Es la unidad básica de masa del Sistema Internacional de Unidades ', 1)
GO
INSERT [dbo].[unidad_medida] ([id_unidad_medida], [nombre], [abreviatura], [descripcion], [estado]) VALUES (4, N'Litro', N' L', N'Es una unidad de volumen del sistema métrico decimal', 1)
GO
SET IDENTITY_INSERT [dbo].[unidad_medida] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 
GO
INSERT [dbo].[usuario] ([id_usuario], [id_rol], [id_finca], [correo], [contraseña], [identificacion], [tipo_identificacion], [nombre], [apellido], [telefono], [direccion], [idioma], [pais], [id_tipo_establecimiento_agropecuario], [id_foto_usuario], [id_usuario_creacion], [fecha_creacion], [id_usuario_modificacion], [fecha_modificacion]) VALUES (1, 1, 1, N'joalex0423@hotmail.com', N'Colombia2021', N'1065133187', N'CC', N'John Alexander', N'Galeano Andrade', 32047479, N'Calle23 a # 1 - 140', N'Español', N'Colombia', 1, 1, 1, CAST(N'2021-09-28' AS Date), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
ALTER TABLE [dbo].[animal] ADD  CONSTRAINT [DF_animal_id_hato]  DEFAULT ((0)) FOR [id_hato]
GO
ALTER TABLE [dbo].[foto_animal] ADD  DEFAULT (0x00FFAA) FOR [foto]
GO
ALTER TABLE [dbo].[foto_usuario] ADD  DEFAULT (0x00FFAA) FOR [foto]
GO
ALTER TABLE [dbo].[raza] ADD  CONSTRAINT [DF_raza_id_raza_lechera]  DEFAULT ((0)) FOR [id_raza_lechera]
GO
ALTER TABLE [dbo].[raza] ADD  CONSTRAINT [DF_raza_id_raza_carne]  DEFAULT ((0)) FOR [id_raza_carne]
GO
ALTER TABLE [dbo].[animal]  WITH NOCHECK ADD  CONSTRAINT [FK_animal_especie] FOREIGN KEY([id_especie])
REFERENCES [dbo].[especie] ([id_especie])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[animal] NOCHECK CONSTRAINT [FK_animal_especie]
GO
ALTER TABLE [dbo].[animal]  WITH CHECK ADD  CONSTRAINT [FK_animal_foto_animal] FOREIGN KEY([id_foto_animal])
REFERENCES [dbo].[foto_animal] ([id_foto_animal])
GO
ALTER TABLE [dbo].[animal] CHECK CONSTRAINT [FK_animal_foto_animal]
GO
ALTER TABLE [dbo].[animal]  WITH CHECK ADD  CONSTRAINT [FK_animal_hato] FOREIGN KEY([id_hato])
REFERENCES [dbo].[hato] ([id_hato])
GO
ALTER TABLE [dbo].[animal] CHECK CONSTRAINT [FK_animal_hato]
GO
ALTER TABLE [dbo].[animal]  WITH CHECK ADD  CONSTRAINT [FK_animal_raza] FOREIGN KEY([id_raza])
REFERENCES [dbo].[raza] ([id_raza])
GO
ALTER TABLE [dbo].[animal] CHECK CONSTRAINT [FK_animal_raza]
GO
ALTER TABLE [dbo].[celo]  WITH CHECK ADD  CONSTRAINT [FK_celo_animal] FOREIGN KEY([id_animal])
REFERENCES [dbo].[animal] ([id_animal])
GO
ALTER TABLE [dbo].[celo] CHECK CONSTRAINT [FK_celo_animal]
GO
ALTER TABLE [dbo].[control_sanitario]  WITH CHECK ADD  CONSTRAINT [FK_controlsanitario_animal] FOREIGN KEY([id_animal])
REFERENCES [dbo].[animal] ([id_animal])
GO
ALTER TABLE [dbo].[control_sanitario] CHECK CONSTRAINT [FK_controlsanitario_animal]
GO
ALTER TABLE [dbo].[control_sanitario]  WITH CHECK ADD  CONSTRAINT [FK_controlsanitario_tipocontrolsanitario] FOREIGN KEY([id_tipo_control_sanitario])
REFERENCES [dbo].[tipo_control_sanitario] ([id_tipo_control_sanitario])
GO
ALTER TABLE [dbo].[control_sanitario] CHECK CONSTRAINT [FK_controlsanitario_tipocontrolsanitario]
GO
ALTER TABLE [dbo].[control_sanitario_evidencia]  WITH CHECK ADD  CONSTRAINT [FK_controlsanitarioevidencia_controlsanitario] FOREIGN KEY([id_control_sanitario])
REFERENCES [dbo].[control_sanitario] ([id_control_sanitario])
GO
ALTER TABLE [dbo].[control_sanitario_evidencia] CHECK CONSTRAINT [FK_controlsanitarioevidencia_controlsanitario]
GO
ALTER TABLE [dbo].[genetica_macho]  WITH CHECK ADD  CONSTRAINT [FK_genetica_macho_tipo_recurso_genetica] FOREIGN KEY([id_tipo_recurso_genetica])
REFERENCES [dbo].[tipo_recurso_genetica] ([id_tipo_recurso_genetica])
GO
ALTER TABLE [dbo].[genetica_macho] CHECK CONSTRAINT [FK_genetica_macho_tipo_recurso_genetica]
GO
ALTER TABLE [dbo].[genetica_macho]  WITH NOCHECK ADD  CONSTRAINT [FK_geneticamacho_especie] FOREIGN KEY([id_especie])
REFERENCES [dbo].[especie] ([id_especie])
GO
ALTER TABLE [dbo].[genetica_macho] NOCHECK CONSTRAINT [FK_geneticamacho_especie]
GO
ALTER TABLE [dbo].[genetica_macho]  WITH CHECK ADD  CONSTRAINT [FK_geneticamacho_raza] FOREIGN KEY([id_raza])
REFERENCES [dbo].[raza] ([id_raza])
GO
ALTER TABLE [dbo].[genetica_macho] CHECK CONSTRAINT [FK_geneticamacho_raza]
GO
ALTER TABLE [dbo].[hato]  WITH CHECK ADD  CONSTRAINT [FK_hato_finca] FOREIGN KEY([id_finca])
REFERENCES [dbo].[finca] ([id_finca])
GO
ALTER TABLE [dbo].[hato] CHECK CONSTRAINT [FK_hato_finca]
GO
ALTER TABLE [dbo].[hato]  WITH CHECK ADD  CONSTRAINT [FK_hato_raza] FOREIGN KEY([id_raza])
REFERENCES [dbo].[raza] ([id_raza])
GO
ALTER TABLE [dbo].[hato] CHECK CONSTRAINT [FK_hato_raza]
GO
ALTER TABLE [dbo].[ingrediente]  WITH CHECK ADD  CONSTRAINT [FK_ingrediente_racion] FOREIGN KEY([id_racion])
REFERENCES [dbo].[racion] ([id_racion])
GO
ALTER TABLE [dbo].[ingrediente] CHECK CONSTRAINT [FK_ingrediente_racion]
GO
ALTER TABLE [dbo].[ingrediente]  WITH CHECK ADD  CONSTRAINT [FK_ingrediente_unidadmedida] FOREIGN KEY([id_unidad_medida])
REFERENCES [dbo].[unidad_medida] ([id_unidad_medida])
GO
ALTER TABLE [dbo].[ingrediente] CHECK CONSTRAINT [FK_ingrediente_unidadmedida]
GO
ALTER TABLE [dbo].[inseminacion]  WITH CHECK ADD  CONSTRAINT [FK_inseminacion_animal] FOREIGN KEY([id_animal])
REFERENCES [dbo].[animal] ([id_animal])
GO
ALTER TABLE [dbo].[inseminacion] CHECK CONSTRAINT [FK_inseminacion_animal]
GO
ALTER TABLE [dbo].[inseminacion]  WITH CHECK ADD  CONSTRAINT [FK_inseminacion_geneticamacho] FOREIGN KEY([id_genetica_macho])
REFERENCES [dbo].[genetica_macho] ([id_genetica_macho])
GO
ALTER TABLE [dbo].[inseminacion] CHECK CONSTRAINT [FK_inseminacion_geneticamacho]
GO
ALTER TABLE [dbo].[lactancia]  WITH CHECK ADD  CONSTRAINT [FK_lactancia_animal] FOREIGN KEY([id_animal])
REFERENCES [dbo].[animal] ([id_animal])
GO
ALTER TABLE [dbo].[lactancia] CHECK CONSTRAINT [FK_lactancia_animal]
GO
ALTER TABLE [dbo].[ordenno]  WITH CHECK ADD  CONSTRAINT [FK_ordenno_unidadmedida] FOREIGN KEY([id_unidad_medida])
REFERENCES [dbo].[unidad_medida] ([id_unidad_medida])
GO
ALTER TABLE [dbo].[ordenno] CHECK CONSTRAINT [FK_ordenno_unidadmedida]
GO
ALTER TABLE [dbo].[ordenno_animal]  WITH CHECK ADD  CONSTRAINT [FK_ordennoanimal_animal] FOREIGN KEY([id_animal])
REFERENCES [dbo].[animal] ([id_animal])
GO
ALTER TABLE [dbo].[ordenno_animal] CHECK CONSTRAINT [FK_ordennoanimal_animal]
GO
ALTER TABLE [dbo].[ordenno_animal]  WITH CHECK ADD  CONSTRAINT [FK_ordennoanimal_ordenno] FOREIGN KEY([id_ordenno])
REFERENCES [dbo].[ordenno] ([id_ordenno])
GO
ALTER TABLE [dbo].[ordenno_animal] CHECK CONSTRAINT [FK_ordennoanimal_ordenno]
GO
ALTER TABLE [dbo].[prennez]  WITH CHECK ADD  CONSTRAINT [FK_prennez_animal] FOREIGN KEY([id_animal])
REFERENCES [dbo].[animal] ([id_animal])
GO
ALTER TABLE [dbo].[prennez] CHECK CONSTRAINT [FK_prennez_animal]
GO
ALTER TABLE [dbo].[prennez]  WITH CHECK ADD  CONSTRAINT [FK_prennez_inseminacion] FOREIGN KEY([id_inseminacion])
REFERENCES [dbo].[inseminacion] ([id_inseminacion])
GO
ALTER TABLE [dbo].[prennez] CHECK CONSTRAINT [FK_prennez_inseminacion]
GO
ALTER TABLE [dbo].[racion]  WITH CHECK ADD  CONSTRAINT [FK_racion_hato] FOREIGN KEY([id_hato])
REFERENCES [dbo].[hato] ([id_hato])
GO
ALTER TABLE [dbo].[racion] CHECK CONSTRAINT [FK_racion_hato]
GO
ALTER TABLE [dbo].[raza]  WITH CHECK ADD  CONSTRAINT [FK_raza_razalechera] FOREIGN KEY([id_raza_lechera])
REFERENCES [dbo].[raza_lechera] ([id_raza_lechera])
GO
ALTER TABLE [dbo].[raza] CHECK CONSTRAINT [FK_raza_razalechera]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_finca] FOREIGN KEY([id_finca])
REFERENCES [dbo].[finca] ([id_finca])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_finca]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_foto_usuario] FOREIGN KEY([id_foto_usuario])
REFERENCES [dbo].[foto_usuario] ([id_foto_usuario])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_foto_usuario]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[rol] ([id_rol])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_rol]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_tipoestablecimientoagropecuario] FOREIGN KEY([id_tipo_establecimiento_agropecuario])
REFERENCES [dbo].[tipo_establecimiento_agropecuario] ([id_tipo_establecimiento_agropecuario])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_tipoestablecimientoagropecuario]
GO
/****** Object:  StoredProcedure [dbo].[sp_animal_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Actualizar un animal
-- =============================================
CREATE PROCEDURE [dbo].[sp_animal_actualizar] 
	-- Add the parameters for the stored procedure here	
		@id_animal int,
		@orejera nvarchar(10),
		@nombre nvarchar(50),
		@id_especie int,
		@id_raza int,
		@observaciones nvarchar(1000),
		@sexo char(1),
        @categoria_pedigre nchar(10),
        @fecha_nacimiento date,
        @peso_nacimiento nchar(10),
        @orejera_madre nvarchar(10),
        @orejera_padre nvarchar(10),
        @codigo_geo nvarchar(50),
        @fecha_modificacion date,
        @id_usuario_modificacion int,
        @id_hato int,
        @id_foto_animal int
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.animal SET orejera = @orejera
           ,nombre = @nombre
           ,id_especie = @id_especie
           ,id_raza = @id_raza
           ,observaciones = @observaciones
           ,sexo = @sexo
           ,categoria_pedigre = @categoria_pedigre
           ,fecha_nacimiento = @fecha_nacimiento
           ,peso_nacimiento = @peso_nacimiento
           ,orejera_madre = @orejera_madre
           ,orejera_padre = @orejera_padre
           ,codigo_geo = @codigo_geo
           ,fecha_modificacion = @fecha_modificacion
           ,id_usuario_modificacion = @id_usuario_modificacion
           ,id_hato = @id_hato
           ,id_foto_animal = @id_foto_animal
       WHERE id_animal = @id_animal
		
	COMMIT TRANSACTION
	 SELECT 1

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_animal_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar todos los animales de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_animal_consultar_todos] 
	-- Add the parameters for the stored procedure here	
		@id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT a.id_animal IdAnimal
			,a.orejera Orejera
			,a.nombre Nombre
			,a.id_especie IdEspecie
			,a.id_raza IdRaza
			,a.observaciones Obsevaciones
			,a.sexo Sexo
			,a.categoria_pedigre CategoriaPedigre
			,a.fecha_nacimiento FechaNacimiento
			,a.peso_nacimiento PesoNacimiento
			,a.orejera_madre OrejeraMadre
			,a.orejera_padre OrejeraPadre
			,a.codigo_geo CodigoGeo
			,a.fecha_creacion FechaCreacion
			,a.id_usuario_creacion IdUsuarioCreacion
			,a.id_hato IdHato
			,fa.foto Foto
		FROM agrogan.dbo.animal a 
		INNER JOIN agrogan.dbo.foto_animal fa ON fa.id_foto_animal = a.id_foto_animal
		INNER JOIN agrogan.dbo.hato h ON a.id_hato = h.id_hato AND h.id_finca = @id_finca
		
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_animal_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guarda un nuevo animal
-- =============================================
CREATE PROCEDURE [dbo].[sp_animal_guardar] 
	-- Add the parameters for the stored procedure here	
		@orejera nvarchar(10),
		@nombre nvarchar(50),
		@id_especie int,
		@id_raza int,
		@observaciones nvarchar(1000),
		@sexo char(1),
        @categoria_pedigre nchar(10),
        @fecha_nacimiento date,
        @peso_nacimiento nchar(10),
        @orejera_madre nvarchar(10),
        @orejera_padre nvarchar(10),
        @codigo_geo nvarchar(50),
        @fecha_creacion date,
        @id_usuario_creacion int,
        @id_hato int,
        @id_foto_animal int
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.animal
           (orejera
           ,nombre
           ,id_especie
           ,id_raza
           ,observaciones
           ,sexo
           ,categoria_pedigre
           ,fecha_nacimiento
           ,peso_nacimiento
           ,orejera_madre
           ,orejera_padre
           ,codigo_geo
           ,fecha_creacion
           ,id_usuario_creacion
           ,fecha_modificacion
           ,id_usuario_modificacion
           ,id_hato
           ,id_foto_animal)
     VALUES
           (@orejera
           ,@nombre
           ,@id_especie
           ,@id_raza
           ,@observaciones
           ,@sexo
           ,@categoria_pedigre
           ,@fecha_nacimiento
           ,@peso_nacimiento
           ,@orejera_madre
           ,@orejera_padre
           ,@codigo_geo
           ,@fecha_creacion
           ,@id_usuario_creacion
           ,null
           ,null
           ,@id_hato
           ,@id_foto_animal)
		
	COMMIT TRANSACTION
	 SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_celo_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Actualiza un celo detectado
-- =============================================
CREATE PROCEDURE [dbo].[sp_celo_actualizar]
	--Add the parameters for the stored procedure here
		    @id_celo int
		   ,@id_animal int
           ,@fecha_deteccion date
           ,@observaciones nvarchar(300)
           ,@id_usuario_deteccion int
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.celo SET id_animal = @id_animal
           ,fecha_deteccion = @fecha_deteccion
           ,observaciones = @observaciones
           ,id_usuario_deteccion = @id_usuario_deteccion
		WHERE id_celo = @id_celo
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_celo_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Consulta todos los celos detectados en una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_celo_consultar_todos]
	--Add the parameters for the stored procedure here
		    @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

	 SELECT c.id_celo
		  ,c.id_animal
		  ,c.fecha_deteccion
		  ,c.observaciones
		  ,c.id_usuario_deteccion
	  FROM agrogan.dbo.celo c
	  INNER JOIN agrogan.dbo.animal a ON a.id_animal = c.id_animal
	  INNER JOIN agrogan.dbo.hato h ON h.id_hato = a.id_hato AND h.id_finca = @id_finca
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_celo_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Guarda un nuevo celo detectado
-- =============================================
CREATE PROCEDURE [dbo].[sp_celo_guardar]
	--Add the parameters for the stored procedure here
		    @id_animal int
           ,@fecha_deteccion date
           ,@observaciones nvarchar(300)
           ,@id_usuario_deteccion int
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.celo
           (id_animal
           ,fecha_deteccion
           ,observaciones
           ,id_usuario_deteccion)
     VALUES
           (@id_animal
           ,@fecha_deteccion
           ,@observaciones
           ,@id_usuario_deteccion)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_control_sanitario_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Actualiza un control sanitario
-- =============================================
CREATE PROCEDURE [dbo].[sp_control_sanitario_actualizar]
	--Add the parameters for the stored procedure here
		    @id_control_sanitario int
		   ,@id_animal int
           ,@id_tipo_control_sanitario int
           ,@fecha_inicio date
           ,@fecha_finalizacion date
           ,@nombre nvarchar(50)
           ,@tratamiento_utilizado nvarchar(50)
           ,@dias int
           ,@dias_retiro_ordeñe int
           ,@comentarios nvarchar(500)
           ,@id_usuario_responsable int
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.control_sanitario SET id_animal = @id_animal
           ,id_tipo_control_sanitario = @id_tipo_control_sanitario
           ,fecha_inicio = @fecha_inicio
           ,fecha_finalizacion = @fecha_finalizacion
           ,nombre = @nombre
           ,tratamiento_utilizado = @tratamiento_utilizado
           ,dias = @dias
           ,dias_retiro_ordeñe = @dias_retiro_ordeñe
           ,comentarios = @comentarios
           ,id_usuario_responsable  =@id_usuario_responsable
     WHERE id_control_sanitario = @id_control_sanitario
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_control_sanitario_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Consulta todos los controles sanitarios de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_control_sanitario_consultar_todos]
	--Add the parameters for the stored procedure here
		    @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT id_control_sanitario IdControlSanitario
			  ,cs.id_animal IdAnimal
			  ,cs.id_tipo_control_sanitario IdTipoControlSanitario
			  ,cs.fecha_inicio FechaInicio
			  ,cs.fecha_finalizacion FechaFinalizacion
			  ,cs.nombre Nombre
			  ,cs.tratamiento_utilizado TratamientoUtilizado
			  ,cs.dias Dias
			  ,cs.dias_retiro_ordeñe DiasRetiroOrdeñe
			  ,cs.comentarios Comentarios
			  ,cs.id_usuario_responsable IdUsuarioResponsable
		FROM agrogan.dbo.control_sanitario cs
		INNER JOIN agrogan.dbo.animal a ON a.id_animal = cs.id_animal
		INNER JOIN agrogan.dbo.hato h ON h.id_hato = a.id_hato AND h.id_finca = @id_finca
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_control_sanitario_evidencia_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Actualiza la evidencia de un control sanitario
-- =============================================
CREATE PROCEDURE [dbo].[sp_control_sanitario_evidencia_actualizar]
	--Add the parameters for the stored procedure here
		    @id_control_sanitario_evidencia int
		   ,@id_control_sanitario int
           ,@evidencia varbinary(max)
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.control_sanitario_evidencia SET id_control_sanitario = @id_control_sanitario
           ,evidencia = @evidencia
        WHERE id_control_sanitario_evidencia = @id_control_sanitario_evidencia
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_control_sanitario_evidencia_consulta]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Consulta una evidencia de un control sanitario
-- =============================================
CREATE PROCEDURE [dbo].[sp_control_sanitario_evidencia_consulta]
	--Add the parameters for the stored procedure here
		    @id_control_sanitario_evidencia int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT id_control_sanitario_evidencia IdControlSanitarioEvidencia
			,id_control_sanitario IdControlSanitario
			,evidencia Evidencia
			,fecha_creacion FechaCreacion
		FROM agrogan.dbo.control_sanitario_evidencia
        WHERE id_control_sanitario_evidencia = @id_control_sanitario_evidencia
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_control_sanitario_evidencia_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Guarda la evidencia de un control sanitario
-- =============================================
CREATE PROCEDURE [dbo].[sp_control_sanitario_evidencia_guardar]
	--Add the parameters for the stored procedure here
		    @id_control_sanitario int
           ,@evidencia varbinary(max)
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.control_sanitario_evidencia
           (id_control_sanitario
           ,evidencia
           ,fecha_creacion)
		VALUES
           (@id_control_sanitario 
           ,@evidencia 
           ,GETDATE())
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_control_sanitario_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Guarda un control sanitario
-- =============================================
CREATE PROCEDURE [dbo].[sp_control_sanitario_guardar]
	--Add the parameters for the stored procedure here
		    @id_animal int
           ,@id_tipo_control_sanitario int
           ,@fecha_inicio date
           ,@fecha_finalizacion date
           ,@nombre nvarchar(50)
           ,@tratamiento_utilizado nvarchar(50)
           ,@dias int
           ,@dias_retiro_ordeñe int
           ,@comentarios nvarchar(500)
           ,@id_usuario_responsable int
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.control_sanitario
           (id_animal
           ,id_tipo_control_sanitario
           ,fecha_inicio
           ,fecha_finalizacion
           ,nombre
           ,tratamiento_utilizado
           ,dias
           ,dias_retiro_ordeñe
           ,comentarios
           ,id_usuario_responsable)
     VALUES
           (@id_animal 
           ,@id_tipo_control_sanitario 
           ,@fecha_inicio 
           ,@fecha_finalizacion 
           ,@nombre
           ,@tratamiento_utilizado
           ,@dias
           ,@dias_retiro_ordeñe
           ,@comentarios
           ,@id_usuario_responsable)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_especie_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar todas las especies
-- =============================================
CREATE PROCEDURE [dbo].[sp_especie_consultar_todas] 
	-- Add the parameters for the stored procedure here	
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT e.id_especie IdEspecie,
			   e.nombre Nombre,
			   e.descripcion Descripcion
		FROM agrogan.dbo.especie e
		WHERE e.estado = 1
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_finca_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Actuliza la información de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_finca_actualizar] 
	-- Add the parameters for the stored procedure here	
		@id_finca int,
		@nombre nvarchar(50),
        @descripcion nvarchar(300),
        @cantidad_hectareas int,
        @direccion nvarchar(100),
        @latitud nvarchar(15),
        @longitud nvarchar(15)
AS
BEGIN TRY

	BEGIN TRANSACTION

	  UPDATE agrogan.dbo.finca SET nombre = @nombre
		  ,descripcion = @descripcion
		  ,cantidad_hectareas = @cantidad_hectareas
		  ,direccion = @direccion
		  ,latitud = @latitud
		  ,longitud = @longitud
	  WHERE id_finca = @id_finca
		
	COMMIT TRANSACTION
	SELECT 1
END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_finca_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consulta todas las fincas guardadas
-- =============================================
CREATE PROCEDURE [dbo].[sp_finca_consultar_todas] 
	-- Add the parameters for the stored procedure here	
AS
BEGIN TRY

	BEGIN TRANSACTION

	 SELECT  id_finca IdFinca
		  ,nombre Nombre
		  ,descripcion Descripcion
		  ,cantidad_hectareas CantidadHectareas
		  ,direccion Direccion
		  ,latitud Latitud
		  ,longitud Longitud
	  FROM agrogan.dbo.finca
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_finca_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guarda una nueva finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_finca_guardar] 
	-- Add the parameters for the stored procedure here	
		@nombre nvarchar(50),
        @descripcion nvarchar(300),
        @cantidad_hectareas int,
        @direccion nvarchar(100),
        @latitud nvarchar(15),
        @longitud nvarchar(15)
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.finca
           (nombre
           ,descripcion
           ,cantidad_hectareas
           ,direccion
           ,latitud
           ,longitud)
     VALUES
           (@nombre,
			@descripcion,
			@cantidad_hectareas,
			@direccion,
			@latitud,
			@longitud)
		
	COMMIT TRANSACTION
	 SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_foto_animal_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Actualiza una foto para un animal
-- =============================================
CREATE PROCEDURE [dbo].[sp_foto_animal_actualizar] 
	-- Add the parameters for the stored procedure here	
		 @id_foto_animal int
		,@foto varbinary(max)
        ,@estado bit
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.foto_animal SET
           foto = @foto
           ,estado = @estado
		WHERE id_foto_animal = @id_foto_animal
		
	COMMIT TRANSACTION
	SELECT 1

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_foto_animal_consulta]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consulta todas las fotos de los animales registrados en una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_foto_animal_consulta] 
	-- Add the parameters for the stored procedure here	
		 @id_foto_animal int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT fa.id_foto_animal IdFotoAnimal, 
			   fa.foto Foto,
			   fa.estado Estado
		FROM dbo.foto_animal fa
		WHERE fa.id_foto_animal = @id_foto_animal
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_foto_animal_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consulta todas las fotos de los animales registrados en una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_foto_animal_consultar_todas] 
	-- Add the parameters for the stored procedure here	
		 @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT fa.id_foto_animal IdFotoAnimal, 
			   fa.foto Foto,
			   fa.estado Estado
		FROM dbo.foto_animal fa
		INNER JOIN dbo.animal a ON a.id_foto_animal = fa.id_foto_animal
		INNER JOIN dbo.hato h ON h.id_hato = a.id_hato AND h.id_finca = @id_finca
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_foto_animal_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guarda una nueva foto para un animal
-- =============================================
CREATE PROCEDURE [dbo].[sp_foto_animal_guardar] 
	-- Add the parameters for the stored procedure here	
		@foto varbinary(max)
        ,@estado bit
        ,@id_usuario_creacion int
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.foto_animal
           (foto
           ,estado
           ,fecha_creacion
           ,id_usuario_creacion)
     VALUES
           (@foto
			,@estado
			,GETDATE()
			,@id_usuario_creacion)
		
	COMMIT TRANSACTION
	 SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_foto_usuario_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description: Actualiza la foto de un usuario
-- =============================================
CREATE PROCEDURE [dbo].[sp_foto_usuario_actualizar] 
	--Add the parameters for the stored procedure here
			@foto varbinary(max)
           ,@id_foto_usuario int
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.foto_usuario SET foto = @foto
		WHERE id_foto_usuario = @id_foto_usuario
		
	COMMIT TRANSACTION	
	SELECT 1

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_foto_usuario_consulta]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consulta la foto de un usuario
-- =============================================
CREATE PROCEDURE [dbo].[sp_foto_usuario_consulta] 
	--Add the parameters for the stored procedure here
	@id_foto_usuario int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT fu.id_foto_usuario IdFotoUsuario,
			   fu.foto Foto
		FROM agrogan.dbo.foto_usuario fu 
		WHERE fu.estado = 1 AND fu.id_foto_usuario = @id_foto_usuario
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_foto_usuario_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consultar todas las fotos de los usuarios de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_foto_usuario_consultar_todas] 
	--Add the parameters for the stored procedure here
	@id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT fu.id_foto_usuario IdFotoUsuario,
			   fu.foto Foto
		FROM agrogan.dbo.foto_usuario fu 
		INNER JOIN agrogan.dbo.usuario u ON u.id_foto_usuario = fu.id_foto_usuario AND u.id_finca = @id_finca
		WHERE fu.estado = 1
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_foto_usuario_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consultar todas las fotos de los usuarios de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_foto_usuario_guardar] 
	--Add the parameters for the stored procedure here
			@foto varbinary(max)
           ,@id_usuario_creacion int
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.foto_usuario
           (foto
           ,estado
           ,fecha_creacion
           ,id_usuario_creacion)
		VALUES
           (@foto
           ,1
		   ,GETDATE()
           ,@id_usuario_creacion)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();


END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_genetica_macho_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Actualizar una genetica de macho
-- =============================================
CREATE PROCEDURE [dbo].[sp_genetica_macho_actualizar] 
	--Add the parameters for the stored procedure here
		    @id_genetica_macho int
		   ,@nombre nvarchar(50)
           ,@orejera nvarchar(10)
           ,@id_tipo_recurso_genetica int
           ,@id_especie int
           ,@id_raza int
           ,@estado bit
           ,@descripcion nvarchar(300)
           ,@categoria nvarchar(20)
           ,@id_usuario_modidificacion int
           ,@ficha_tecnica varbinary(max)
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.genetica_macho SET nombre = @nombre
           ,orejera = @orejera
           ,id_tipo_recurso_genetica = @id_tipo_recurso_genetica
           ,id_especie = @id_especie
           ,id_raza = @id_raza
           ,estado = @estado
           ,descripcion = @descripcion
           ,categoria = @categoria
           ,fecha_modificacion = GETDATE()
           ,id_usuario_modificacion = @id_usuario_modidificacion
           ,ficha_tecnica = @ficha_tecnica
           WHERE id_genetica_macho = @id_genetica_macho
		
	COMMIT TRANSACTION
	SELECT 1;


END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_genetica_macho_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consulta todas las genetica de macho de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_genetica_macho_consultar_todos]
	--Add the parameters for the stored procedure here
		    @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		 SELECT gm.id_genetica_macho IdGeneticaMacho
			  ,gm.nombre Nombre
			  ,gm.orejera Orejera
			  ,gm.id_tipo_recurso_genetica IdTipoRecursoGenetica
			  ,gm.id_especie IdEspecie
			  ,gm.id_raza IdRaza
			  ,gm.estado Estado
			  ,gm.descripcion Descripcion
			  ,gm.categoria Categoria
			  ,gm.ficha_tecnica FichaTecnica
		  FROM agrogan.dbo.genetica_macho gm
		  INNER JOIN agrogan.dbo.raza r ON gm.id_raza = r.id_raza
		  INNER JOIN agrogan.dbo.hato h ON h.id_raza = gm.id_raza AND h.id_finca = @id_finca
		
	COMMIT TRANSACTION


END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_genetica_macho_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Guarda una nueva genetica de macho
-- =============================================
CREATE PROCEDURE [dbo].[sp_genetica_macho_guardar] 
	--Add the parameters for the stored procedure here
			@nombre nvarchar(50)
           ,@orejera nvarchar(10)
           ,@id_tipo_recurso_genetica int
           ,@id_especie int
           ,@id_raza int
           ,@estado bit
           ,@descripcion nvarchar(300)
           ,@categoria nvarchar(20)
           ,@id_usuario_creacion int
           ,@ficha_tecnica varbinary(max)
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.genetica_macho
           (nombre
           ,orejera
           ,id_tipo_recurso_genetica
           ,id_especie
           ,id_raza
           ,estado
           ,descripcion
           ,categoria
           ,fecha_creacion
           ,id_usuario_creacion
           ,fecha_modificacion
           ,id_usuario_modificacion
           ,ficha_tecnica)
     VALUES
           (@nombre
           ,@orejera
           ,@id_tipo_recurso_genetica
           ,@id_especie
           ,@id_raza
           ,@estado
           ,@descripcion
           ,@categoria
           ,GETDATE()
           ,@id_usuario_creacion
           ,NULL
           ,NULL
           ,@ficha_tecnica)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();


END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_hato_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Actualizar un hato
-- =============================================
CREATE PROCEDURE [dbo].[sp_hato_actualizar]
	-- Add the parameters for the stored procedure here	
		 @id_hato int 
		,@id_raza int 
        ,@nombre nvarchar(100) 
        ,@descripcion nvarchar(500) 
        ,@estado bit 
        ,@fecha_modificacion date 
        ,@id_usuario_modificacion int 
        ,@id_finca int 
AS
BEGIN TRY

	BEGIN TRANSACTION

    UPDATE dbo.hato SET 
            id_raza =  @id_raza
           ,nombre = @nombre
           ,descripcion = @descripcion
           ,estado = @estado
           ,fecha_modificacion = @fecha_modificacion
           ,id_usuario_modificacion = @id_usuario_modificacion
           ,id_finca = @id_finca
	WHERE id_hato = @id_hato
		
	COMMIT TRANSACTION
	SELECT 1

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_hato_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar un hato
-- =============================================
CREATE PROCEDURE [dbo].[sp_hato_consultar_todos]
	-- Add the parameters for the stored procedure here	
	  @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

    SELECT id_hato IdHato
      ,id_raza IdRaza
      ,nombre Nombre
      ,descripcion Descripcion
      ,estado Estado
      ,fecha_creacion FechaCreacion
      ,id_usuario_creacion IdUsuarioCreacion
      ,id_finca IdFinca
	FROM agrogan.dbo.hato
	WHERE id_finca = @id_finca 
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_hato_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guarda un nuevo hato
-- =============================================
CREATE PROCEDURE [dbo].[sp_hato_guardar] 
	-- Add the parameters for the stored procedure here	
		 @id_raza int 
        ,@nombre nvarchar(100) 
        ,@descripcion nvarchar(500) 
        ,@estado bit 
        ,@fecha_creacion date 
        ,@id_usuario_creacion int 
        ,@id_finca int 
AS
BEGIN TRY

	BEGIN TRANSACTION

    INSERT INTO  dbo.hato 
           ( id_raza 
           ,nombre 
           ,descripcion 
           ,estado 
           ,fecha_creacion 
           ,id_usuario_creacion 
           ,fecha_modificacion 
           ,id_usuario_modificacion 
           ,id_finca )
     VALUES
           (
		     @id_raza
			,@nombre
			,@descripcion
			,@estado
			,@fecha_creacion
			,@id_usuario_creacion
			,NULL
			,NULL
			,@id_finca
		   )
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_ingrediente_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Actualizar un ingrediente
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingrediente_actualizar] 
	-- Add the parameters for the stored procedure here	
		    @id_ingrediente int
		   ,@id_racion int
           ,@nombre nvarchar(50)
           ,@porcion int
           ,@id_unidad_medida int
           ,@energia int
           ,@proteina int
           ,@costo float
           ,@comentarios nvarchar(300)
           ,@materia_seca int
AS
BEGIN TRY

	BEGIN TRANSACTION

    UPDATE dbo.ingrediente SET id_racion = @id_racion
           ,nombre = @nombre
           ,porcion = @porcion
           ,id_unidad_medida = @id_unidad_medida
           ,energia = @energia
           ,proteina = @proteina
           ,costo = @costo
           ,comentarios = @comentarios
           ,materia_seca = @materia_seca
     WHERE id_ingrediente = @id_ingrediente
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_ingrediente_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar todos los ingredientes que lleva una racion
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingrediente_consultar_todos] 
	-- Add the parameters for the stored procedure here	
	@id_racion int
AS
BEGIN TRY

	BEGIN TRANSACTION

    SELECT i.id_ingrediente IdIngrediente
		  ,i.id_racion IdRacion
		  ,i.nombre Nombre
		  ,i.porcion Porcion
		  ,i.id_unidad_medida IdUnidadMedida
		  ,i.energia Energia
		  ,i.proteina Proteina
		  ,i.costo Costo
		  ,i.comentarios Comentarios
		  ,i.materia_seca MateriaSeca
	FROM agrogan.dbo.ingrediente i
	WHERE i.id_racion = @id_racion
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_ingrediente_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guarda un nuevo ingrediente
-- =============================================
CREATE PROCEDURE [dbo].[sp_ingrediente_guardar] 
	-- Add the parameters for the stored procedure here	
		    @id_racion int
           ,@nombre nvarchar(50)
           ,@porcion int
           ,@id_unidad_medida int
           ,@energia int
           ,@proteina int
           ,@costo float
           ,@comentarios nvarchar(300)
           ,@materia_seca int
AS
BEGIN TRY

	BEGIN TRANSACTION

    INSERT INTO dbo.ingrediente
           (id_racion
           ,nombre
           ,porcion
           ,id_unidad_medida
           ,energia
           ,proteina
           ,costo
           ,comentarios
           ,materia_seca)
     VALUES
           (@id_racion
           ,@nombre
           ,@porcion
           ,@id_unidad_medida
           ,@energia
           ,@proteina
           ,@costo
           ,@comentarios
           ,@materia_seca)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_inseminacion_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Actualizar una inseminacion
-- =============================================
CREATE PROCEDURE [dbo].[sp_inseminacion_actualizar]
	--Add the parameters for the stored procedure here
		    @id_inseminacion int
		   ,@id_animal int
           ,@fecha_servicio date
           ,@id_genetica_macho int
           ,@id_metodo_reproduccion int
           ,@id_usuario nchar(10)
           ,@fertil bit
AS
BEGIN TRY

	BEGIN TRANSACTION

	UPDATE dbo.inseminacion SET id_animal = @id_animal
           ,fecha_servicio = @fecha_servicio
           ,id_genetica_macho = @id_genetica_macho
           ,id_metodo_reproduccion = @id_metodo_reproduccion
           ,id_usuario = @id_usuario
           ,fertil = @fertil
     WHERE id_inseminacion = @id_inseminacion
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_inseminacion_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consultar todas las inseminaciones de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_inseminacion_consultar_todas]
	--Add the parameters for the stored procedure here
		    @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT i.id_inseminacion IdInseminacion
			  ,i.id_animal IdAnimal
			  ,i.fecha_servicio FechaServicio
			  ,i.id_genetica_macho IdGeneticaMacho
			  ,i.id_metodo_reproduccion IdMetodoReproduccion
			  ,i.id_usuario IdUsuario
			  ,i.fertil Fertil
		FROM agrogan.dbo.inseminacion i 
		INNER JOIN agrogan.dbo.animal a ON i.id_animal = a.id_animal
		INNER JOIN agrogan.dbo.hato h ON h.id_hato = a.id_hato AND h.id_finca = @id_finca
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_inseminacion_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Guardar una inseminacion
-- =============================================
CREATE PROCEDURE [dbo].[sp_inseminacion_guardar]
	--Add the parameters for the stored procedure here
		    @id_animal int
           ,@fecha_servicio date
           ,@id_genetica_macho int
           ,@id_metodo_reproduccion int
           ,@id_usuario nchar(10)
           ,@fertil bit
AS
BEGIN TRY

	BEGIN TRANSACTION

		 INSERT INTO dbo.inseminacion
           (id_animal
           ,fecha_servicio
           ,id_genetica_macho
           ,id_metodo_reproduccion
           ,id_usuario
           ,fertil)
     VALUES
           (@id_animal
           ,@fecha_servicio
           ,@id_genetica_macho
           ,@id_metodo_reproduccion
           ,@id_usuario
           ,@fertil)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_lactancia_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Guardar una lactancia
-- =============================================
CREATE PROCEDURE [dbo].[sp_lactancia_actualizar]
	--Add the parameters for the stored procedure here
		    @id_lactancia int
		   ,@fecha_inicio date
		   ,@id_animal int
           ,@lactancia_finalizada bit
           ,@fecha_fin date
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.lactancia SET id_animal = @id_animal
           ,fecha_inicio = @fecha_inicio
           ,lactancia_finalizada = @lactancia_finalizada
           ,fecha_fin = @fecha_fin 
        WHERE id_lactancia = @id_lactancia 
           
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_lactancia_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consultar todas las lactancias de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_lactancia_consultar_todas]
	--Add the parameters for the stored procedure here
		    @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT l.id_lactancia IdLactancia
			  ,l.id_animal IdAnimal
			  ,l.fecha_inicio FechaInicio
			  ,l.lactancia_finalizada LactanciaFinalizada
			  ,l.fecha_fin FechaFin
		FROM agrogan.dbo.lactancia l 
		INNER JOIN agrogan.dbo.animal a ON a.id_animal = l.id_animal 
		INNER JOIN agrogan.dbo.hato h ON h.id_hato = a.id_hato AND h.id_finca = @id_finca
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_lactancia_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Guardar una lactancia
-- =============================================
CREATE PROCEDURE [dbo].[sp_lactancia_guardar]
	--Add the parameters for the stored procedure here
		    @id_animal int
           ,@fecha_inicio date
           ,@lactancia_finalizada bit
           ,@fecha_fin date
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.lactancia
           (id_animal
           ,fecha_inicio
           ,lactancia_finalizada
           ,fecha_fin)
     VALUES
           ( @id_animal
           ,GETDATE()
           ,@lactancia_finalizada
           ,@fecha_fin)
           
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_metodo_reproduccion_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consultar todos los metodos de reproduccion
-- =============================================
CREATE PROCEDURE [dbo].[sp_metodo_reproduccion_consultar_todos] 
	--Add the parameters for the stored procedure here
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT mr.id_metodo_reproduccion IdMetodoReproduccion,
			   mr.nombre Nombre,
			   mr.descripcion Descripcion
		FROM agrogan.dbo.metodo_reproduccion mr
		WHERE mr.estado = 1
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_ordenno_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Actualizar un ordeño
-- =============================================
CREATE PROCEDURE [dbo].[sp_ordenno_actualizar]
	--Add the parameters for the stored procedure here
		    @id_ordenno int
		   ,@fecha date
           ,@descripcion nvarchar(100)
           ,@comentarios nvarchar(50)
           ,@id_usuario_responsable int
           ,@id_unidad_medida int
		   ,@id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.ordenno SET fecha = @fecha
           ,descripcion = @descripcion
           ,comentarios = @comentarios
           ,id_usuario_responsable = @id_usuario_responsable
           ,id_unidad_medida = @id_unidad_medida
		   ,id_finca = @id_finca

		WHERE id_ordenno = @id_ordenno
           
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_ordenno_animal_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Actualizar un Ordeño de un animal 
-- =============================================
CREATE PROCEDURE [dbo].[sp_ordenno_animal_actualizar]
	--Add the parameters for the stored procedure here
		    @id_ordenno_animal int
		   ,@id_ordenno int
           ,@id_animal int
           ,@ordeno_1 int
           ,@ordeno_2 int
           ,@scc float
           ,@grasa float
           ,@proteina float
           ,@peso float
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.ordenno_animal SET id_ordenno = @id_ordenno
           ,id_animal = @id_animal
           ,ordeno_1 = @ordeno_1
           ,ordeno_2 = @ordeno_2
           ,scc = @scc
           ,grasa = @grasa
           ,proteina = @proteina
           ,peso = @peso
		WHERE id_ordenno_animal = @id_ordenno_animal 
           
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_ordenno_animal_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consultar todos los ordeños de animales de una finca 
-- =============================================
CREATE PROCEDURE [dbo].[sp_ordenno_animal_consultar_todos]
	--Add the parameters for the stored procedure here
		    @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT oa.id_ordenno_animal IdOrdennoAnimal
			  ,oa.id_ordenno IdOrdenno
			  ,oa.id_animal IdAnimal
			  ,oa.ordeno_1 Ordenno1
			  ,oa.ordeno_2 Ordenno2
			  ,oa.scc Scc
			  ,oa.grasa Grasa
			  ,oa.proteina Proteina
			  ,oa.peso Peso
		FROM agrogan.dbo.ordenno_animal oa
		INNER JOIN agrogan.dbo.animal a ON a.id_animal = oa.id_animal 
		INNER JOIN agrogan.dbo.hato h ON h.id_hato = a.id_hato AND h.id_finca = @id_finca 
           
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_ordenno_animal_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Guardar el Ordeño de un animal 
-- =============================================
CREATE PROCEDURE [dbo].[sp_ordenno_animal_guardar]
	--Add the parameters for the stored procedure here
		    @id_ordenno int
           ,@id_animal int
           ,@ordeno_1 int
           ,@ordeno_2 int
           ,@scc float
           ,@grasa float
           ,@proteina float
           ,@peso float
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.ordenno_animal
           (id_ordenno
           ,id_animal
           ,ordeno_1
           ,ordeno_2
           ,scc
           ,grasa
           ,proteina
           ,peso)
     VALUES
           (@id_ordenno
           ,@id_animal
           ,@ordeno_1
           ,@ordeno_2
           ,@scc
           ,@grasa
           ,@proteina
           ,@peso)
           
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_ordenno_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consultar todos los ordeños de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_ordenno_consultar_todos]
	--Add the parameters for the stored procedure here
		    @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT id_ordenno IdOrdenno
			  ,fecha Fecha
			  ,descripcion Descripcion
			  ,comentarios Comentarios
			  ,id_usuario_responsable IdUsuarioResponsable
			  ,id_unidad_medida IdUnidadMedida
			  ,id_finca IdFinca
		  FROM agrogan.dbo.ordenno
		  WHERE id_finca = @id_finca
           
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_ordenno_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Guarda un ordeño
-- =============================================
CREATE PROCEDURE [dbo].[sp_ordenno_guardar]
	--Add the parameters for the stored procedure here
		    @fecha date
           ,@descripcion nvarchar(100)
           ,@comentarios nvarchar(50)
           ,@id_usuario_responsable int
           ,@id_unidad_medida int
		   ,@id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.ordenno
           (fecha
           ,descripcion
           ,comentarios
           ,id_usuario_responsable
           ,id_unidad_medida
		   ,id_finca)
     VALUES
           (@fecha
           ,@descripcion
           ,@comentarios
           ,@id_usuario_responsable
           ,@id_unidad_medida
		   ,@id_finca )
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_prennez_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Actualizar una prennez
-- =============================================
CREATE PROCEDURE [dbo].[sp_prennez_actualizar]
	--Add the parameters for the stored procedure here
		    @id_prennez int
		   ,@id_animal int
           ,@fecha_prennez date
           ,@parto bit
           ,@id_inseminacion int
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.prennez SET id_animal = @id_animal
           ,fecha_prennez = @fecha_prennez
           ,parto = @parto
           ,id_inseminacion = @id_inseminacion
	    WHERE id_prennez = @id_prennez
		
	COMMIT TRANSACTION
	SELECT 1;
END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_prennez_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Consultar todas las preñeces de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_prennez_consultar_todas]
	--Add the parameters for the stored procedure here
		    @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT  p.id_prennez IdPrennez
			  ,p.id_animal IdAnimal
			  ,p.fecha_prennez FechaPrennez
			  ,p.parto Parto
			  ,p.id_inseminacion IdInseminacion
		FROM agrogan.dbo.prennez p
		INNER JOIN agrogan.dbo.animal a ON a.id_animal = p.id_animal
		INNER JOIN agrogan.dbo.hato h ON h.id_hato = a.id_hato AND h.id_finca = @id_finca
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_prennez_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16
-- Description:	Guardar una prennez
-- =============================================
CREATE PROCEDURE [dbo].[sp_prennez_guardar]
	--Add the parameters for the stored procedure here
		    @id_animal int
           ,@fecha_prennez date
           ,@parto bit
           ,@id_inseminacion int
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.prennez
           (id_animal
           ,fecha_prennez
           ,parto
           ,id_inseminacion)
		VALUES
           (@id_animal
           ,@fecha_prennez
           ,@parto
           ,@id_inseminacion)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();
END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_racion_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guardar una nueva racion
-- =============================================
CREATE PROCEDURE [dbo].[sp_racion_actualizar] 
	-- Add the parameters for the stored procedure here	
	        @id_racion int
		   ,@nombre nvarchar(50)
           ,@descripcion nvarchar(500)
           ,@fecha_inicio date
           ,@fecha_fin date
           ,@id_usuario_responsable int
           ,@id_hato int
AS
BEGIN TRY

	BEGIN TRANSACTION

	UPDATE dbo.racion SET nombre = @nombre
           ,descripcion = @descripcion
           ,fecha_inicio = @fecha_inicio
           ,fecha_fin = @fecha_fin
           ,id_usuario_responsable = @id_usuario_responsable
           ,id_hato = @id_hato
	WHERE id_racion = @id_racion
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_racion_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description: Consultar todas las raciones
-- =============================================
CREATE PROCEDURE [dbo].[sp_racion_consultar_todas] 
	-- Add the parameters for the stored procedure here	
           @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

	SELECT id_racion IdRacion
		  ,r.nombre Nombre
		  ,r.descripcion Descripcion
		  ,r.fecha_inicio FechaInicio
		  ,r.fecha_fin FechaFin
		  ,r.id_usuario_responsable IdUsuarioResponsable
		  ,r.id_hato IdHato
	FROM agrogan.dbo.racion r 
	INNER JOIN agrogan.dbo.hato h ON h.id_hato = r.id_hato AND h.id_finca = @id_finca
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_racion_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guardar una nueva racion
-- =============================================
CREATE PROCEDURE [dbo].[sp_racion_guardar] 
	-- Add the parameters for the stored procedure here	
		    @nombre nvarchar(50)
           ,@descripcion nvarchar(500)
           ,@fecha_inicio date
           ,@fecha_fin date
           ,@id_usuario_responsable int
           ,@id_hato int
AS
BEGIN TRY

	BEGIN TRANSACTION

	INSERT INTO dbo.racion
           (nombre
           ,descripcion
           ,fecha_inicio
           ,fecha_fin
           ,id_usuario_responsable
           ,id_hato)
     VALUES
           (@nombre
           ,@descripcion
           ,@fecha_inicio
           ,@fecha_fin
           ,@id_usuario_responsable
           ,@id_hato)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_raza_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Actualizar una raza especifica
-- =============================================
CREATE PROCEDURE [dbo].[sp_raza_actualizar] 
	-- Add the parameters for the stored procedure here	
		 @id_raza int 
		,@id_raza_lechera int 
        ,@id_raza_carne int 
        ,@nombre nvarchar(100) 
        ,@descripcion nvarchar(500) 
        ,@estado bit 
        ,@fecha_modificacion date 
        ,@id_usuario_modificacion int 
AS
BEGIN TRY

	BEGIN TRANSACTION

    UPDATE agrogan.dbo.raza SET	id_raza_lechera = @id_raza_lechera
      ,id_raza_carne = @id_raza_carne
      ,nombre = @nombre
      ,descripcion = @descripcion
      ,estado = @estado
      ,fecha_modificacion = @fecha_modificacion
      ,id_usuario_modificacion = @id_usuario_modificacion
	WHERE id_raza = @id_raza
		
	COMMIT TRANSACTION
	SELECT 1

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_raza_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar todas las razas registradas en una finca especifica
-- =============================================
CREATE PROCEDURE [dbo].[sp_raza_consultar_todas] 
	-- Add the parameters for the stored procedure here	
		 @id_finca int 
AS
BEGIN TRY

	BEGIN TRANSACTION

    SELECT r.id_raza IdRaza
      ,r.id_raza_lechera IdRazaLechera
      ,r.id_raza_carne IdRazaCarne
      ,r.nombre Nombre
      ,r.descripcion Descripcion
      ,r.estado Estado
      ,r.fecha_creacion FechaCreacion
      ,r.id_usuario_creacion IdUsuarioCreacion
    FROM agrogan.dbo.raza r
	INNER JOIN agrogan.dbo.hato h ON h.id_raza = r.id_raza AND h.id_finca = @id_finca
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_raza_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guarda una nueva raza
-- =============================================
CREATE PROCEDURE [dbo].[sp_raza_guardar] 
	-- Add the parameters for the stored procedure here	
		 @id_raza_lechera int 
        ,@id_raza_carne int 
        ,@nombre nvarchar(100) 
        ,@descripcion nvarchar(500) 
        ,@estado bit 
        ,@fecha_creacion date 
        ,@id_usuario_creacion int 
        ,@fecha_modificacion date 
        ,@id_usuario_modificacion int 
AS
BEGIN TRY

	BEGIN TRANSACTION

    INSERT INTO dbo.raza
           (id_raza_lechera
           ,id_raza_carne
           ,nombre
           ,descripcion
           ,estado
           ,fecha_creacion
           ,id_usuario_creacion
           ,fecha_modificacion
           ,id_usuario_modificacion)
     VALUES
           ( @id_raza_lechera
			,@id_raza_carne
			,@nombre
			,@descripcion
			,@estado
			,@fecha_creacion
			,@id_usuario_creacion
			,@fecha_modificacion
			,@id_usuario_modificacion)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_raza_lechera_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Actualiza una nueva raza lechera
-- =============================================
CREATE PROCEDURE [dbo].[sp_raza_lechera_actualizar]
	-- Add the parameters for the stored procedure here	
		    @id_raza_lechera int
		   ,@gestacion int
           ,@duracion_celo int
           ,@periodo_celo int
           ,@primer_celo_posparto int
           ,@limite_lactancia int
           ,@periodo_secado int
           ,@ini_lactancia_maxima int
           ,@fin_lactancia_maxima int
           ,@ini_lactancia_media int
           ,@fin_lactancia_media int
           ,@ini_lactancia_baja int
           ,@fin_lactancia_baja int
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.raza_lechera
        SET gestacion = @gestacion
           ,duracion_celo = @duracion_celo
           ,periodo_celo = @periodo_celo
           ,primer_celo_posparto = @primer_celo_posparto
           ,limite_lactancia = @limite_lactancia
           ,periodo_secado = @periodo_secado
           ,ini_lactancia_maxima = @ini_lactancia_maxima 
           ,fin_lactancia_maxima = @fin_lactancia_maxima
           ,ini_lactancia_media = @ini_lactancia_media 
           ,fin_lactancia_media = @fin_lactancia_media 
           ,ini_lactancia_baja = @ini_lactancia_baja 
           ,fin_lactancia_baja = @fin_lactancia_baja
		WHERE id_raza_lechera = @id_raza_lechera
		
	COMMIT TRANSACTION
	 SELECT 1

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_raza_lechera_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consulta las raza lecheras de una finca determinada
-- =============================================
CREATE PROCEDURE [dbo].[sp_raza_lechera_consultar_todas]
	-- Add the parameters for the stored procedure here	
		   @id_finca int
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT rl.id_raza_lechera IdRazaLechera
		  ,rl.gestacion Gestacion
		  ,rl.duracion_celo DuracionCelo
		  ,rl.periodo_celo PeriodoCelo
		  ,rl.primer_celo_posparto PrimerCeloPosparto
		  ,rl.limite_lactancia LimiteLactancia
		  ,rl.periodo_secado PeriodoSecado
		  ,rl.ini_lactancia_maxima IniLactanciaMaxima
		  ,rl.fin_lactancia_maxima FinLactanciaMaxima
		  ,rl.ini_lactancia_media IniLactanciaMedia
		  ,rl.fin_lactancia_media FinLactanciaMedia
		  ,rl.ini_lactancia_baja IniLactanciaBaja
		  ,rl.fin_lactancia_baja FinLactanciaBaja
	  FROM agrogan.dbo.raza_lechera rl
	  INNER JOIN agrogan.dbo.raza r ON r.id_raza_lechera = rl.id_raza_lechera
	  INNER JOIN agrogan.dbo.hato h ON h.id_raza = r.id_raza 
	  WHERE  h.id_finca = @id_finca

	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_raza_lechera_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guarda una nueva raza lechera
-- =============================================
CREATE PROCEDURE [dbo].[sp_raza_lechera_guardar]
	-- Add the parameters for the stored procedure here	
			@gestacion int
           ,@duracion_celo int
           ,@periodo_celo int
           ,@primer_celo_posparto int
           ,@limite_lactancia int
           ,@periodo_secado int
           ,@ini_lactancia_maxima int
           ,@fin_lactancia_maxima int
           ,@ini_lactancia_media int
           ,@fin_lactancia_media int
           ,@ini_lactancia_baja int
           ,@fin_lactancia_baja int
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.raza_lechera
           (gestacion
           ,duracion_celo
           ,periodo_celo
           ,primer_celo_posparto
           ,limite_lactancia
           ,periodo_secado
           ,ini_lactancia_maxima
           ,fin_lactancia_maxima
           ,ini_lactancia_media
           ,fin_lactancia_media
           ,ini_lactancia_baja
           ,fin_lactancia_baja)
     VALUES
           (@gestacion 
           ,@duracion_celo 
           ,@periodo_celo 
           ,@primer_celo_posparto 
           ,@limite_lactancia 
           ,@periodo_secado 
           ,@ini_lactancia_maxima 
           ,@fin_lactancia_maxima 
           ,@ini_lactancia_media 
           ,@fin_lactancia_media 
           ,@ini_lactancia_baja 
           ,@fin_lactancia_baja )
		
	COMMIT TRANSACTION
	 SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_rol_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar todos los roles
-- =============================================
CREATE PROCEDURE [dbo].[sp_rol_consultar_todos] 
	-- Add the parameters for the stored procedure here	
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT r.id_rol Idrol,
			   r.nombre Nombre
		FROM agrogan.dbo.rol r
		WHERE r.estado = 1
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_tipo_control_sanitario_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar todos los roles
-- =============================================
CREATE PROCEDURE [dbo].[sp_tipo_control_sanitario_consultar_todos] 
	-- Add the parameters for the stored procedure here	
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT tcs.id_tipo_control_sanitario IdTipoControlSanitario,
			   tcs.nombre Nombre,
			   tcs.descripcion Descripcion
		FROM agrogan.dbo.tipo_control_sanitario tcs
		WHERE tcs.estado = 1
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_tipo_establecimiento_agropecuario_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar todos los tipos de establecimiento agropecuario
-- =============================================
CREATE PROCEDURE [dbo].[sp_tipo_establecimiento_agropecuario_consultar_todas] 
	--Add the parameters for the stored procedure here
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT tea.id_tipo_establecimiento_agropecuario IdTipoEstablecimientoAgropecuario,
			   tea.nombre Nombre
		FROM agrogan.dbo.tipo_establecimiento_agropecuario tea
		WHERE tea.estado = 1
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_tipo_recurso_genetica_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar todas los tipos de recurso genetica
-- =============================================
CREATE PROCEDURE [dbo].[sp_tipo_recurso_genetica_consultar_todas] 
	--Add the parameters for the stored procedure here
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT trg.id_tipo_recurso_genetica IdTipoRecursoGenetica,
			   trg.nombre Nombre,
			   trg.descripcion Descripcion
		FROM agrogan.dbo.tipo_recurso_genetica trg
		WHERE trg.estado = 1
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_unidad_medida_consultar_todas]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consultar todas las unidades de medida
-- =============================================
CREATE PROCEDURE [dbo].[sp_unidad_medida_consultar_todas] 
	-- Add the parameters for the stored procedure here	
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT um.id_unidad_medida IdUnidadMedida,
			   um.nombre Nombre,
			   um.abreviatura Abreviatura,
			   um.descripcion Descripcion
		FROM agrogan.dbo.unidad_medida um
		WHERE um.estado = 1
		
	COMMIT TRANSACTION
	

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_actualizar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Actualiza un usuario
-- =============================================
CREATE PROCEDURE [dbo].[sp_usuario_actualizar] 
	-- Add the parameters for the stored procedure here	
		    @id_usuario int 
		   ,@id_rol int 
           ,@id_finca int 
           ,@correo nvarchar(50) 
           ,@contraseña nvarchar(50) 
           ,@identificacion nvarchar(15) 
           ,@tipo_identificacion nvarchar(10) 
           ,@nombre nvarchar(50) 
           ,@apellido nvarchar(50) 
           ,@telefono int 
           ,@direccion nvarchar(50) 
           ,@idioma nvarchar(50) 
           ,@pais nvarchar(50) 
           ,@id_tipo_establecimiento_agropecuario int 
           ,@id_foto_usuario int 
           ,@id_usuario_modificacion int
AS
BEGIN TRY

	BEGIN TRANSACTION

		UPDATE dbo.usuario SET id_rol = @id_rol
           ,id_finca = @id_finca
           ,correo = @correo
           ,contraseña = @contraseña
           ,identificacion = @identificacion
           ,tipo_identificacion = @tipo_identificacion
           ,nombre = @nombre
           ,apellido = @apellido
           ,telefono = @telefono
           ,direccion = @direccion
           ,idioma = @idioma
           ,pais = @pais
           ,id_tipo_establecimiento_agropecuario = @id_tipo_establecimiento_agropecuario
           ,id_foto_usuario = @id_foto_usuario
           ,id_usuario_modificacion = @id_usuario_modificacion
           ,fecha_modificacion = GETDATE()
		WHERE id_usuario = @id_usuario
		
	COMMIT TRANSACTION
	SELECT 1;

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_consultar_todos]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Consulta todos los usuarios de una finca
-- =============================================
CREATE PROCEDURE [dbo].[sp_usuario_consultar_todos] 
	-- Add the parameters for the stored procedure here	 
           @id_finca int 
AS
BEGIN TRY

	BEGIN TRANSACTION

		SELECT id_usuario IdUsuario
			  ,id_rol IdRol
			  ,id_finca IdFinca
			  ,correo Correo
			  ,contraseña Contraseña
			  ,identificacion Identificacion
			  ,tipo_identificacion TipoIdentificacion
			  ,nombre Nombre
			  ,apellido Apellido
			  ,telefono Telefono
			  ,direccion Direccion
			  ,idioma Idioma
			  ,pais Pais
			  ,id_tipo_establecimiento_agropecuario IdTipoEstablecimientoAgropecuario
			  ,id_foto_usuario IdFotoUsuario
		FROM agrogan.dbo.usuario
		WHERE id_finca = @id_finca
		
	COMMIT TRANSACTION

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[sp_usuario_guardar]    Script Date: 01/10/2021 21:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Alexander Galeano Andrade	
-- Create date: 2021-09-16 
-- Description:	Guarda un nuevo usuario
-- =============================================
CREATE PROCEDURE [dbo].[sp_usuario_guardar] 
	-- Add the parameters for the stored procedure here	
			@id_rol int 
           ,@id_finca int 
           ,@correo nvarchar(50) 
           ,@contraseña nvarchar(50) 
           ,@identificacion nvarchar(15) 
           ,@tipo_identificacion nvarchar(10) 
           ,@nombre nvarchar(50) 
           ,@apellido nvarchar(50) 
           ,@telefono int 
           ,@direccion nvarchar(50) 
           ,@idioma nvarchar(50) 
           ,@pais nvarchar(50) 
           ,@id_tipo_establecimiento_agropecuario int 
           ,@id_foto_usuario int 
           ,@id_usuario_creacion int
AS
BEGIN TRY

	BEGIN TRANSACTION

		INSERT INTO dbo.usuario
           (id_rol
           ,id_finca
           ,correo
           ,contraseña
           ,identificacion
           ,tipo_identificacion
           ,nombre
           ,apellido
           ,telefono
           ,direccion
           ,idioma
           ,pais
           ,id_tipo_establecimiento_agropecuario
           ,id_foto_usuario
           ,id_usuario_creacion
           ,fecha_creacion
           ,id_usuario_modificacion
           ,fecha_modificacion)
     VALUES
           (@id_rol
           ,@id_finca
           ,@correo 
           ,@contraseña
           ,@identificacion
           ,@tipo_identificacion
           ,@nombre
           ,@apellido
           ,@telefono
           ,@direccion
           ,@idioma
           ,@pais
           ,@id_tipo_establecimiento_agropecuario
           ,@id_foto_usuario
           ,@id_usuario_creacion
           ,GETDATE()
		   ,NULL
		   ,NULL)
		
	COMMIT TRANSACTION
	SELECT SCOPE_IDENTITY();

END TRY
BEGIN CATCH
	
	ROLLBACK TRANSACTION

	--Insertar error en tabla auditoria
	INSERT INTO dbo.trazabilidad_falla
	VALUES
	  (SUSER_SNAME(),
	   ERROR_NUMBER(),
	   ERROR_STATE(),
	   ERROR_SEVERITY(),
	   ERROR_LINE(),
	   ERROR_PROCEDURE(),
	   ERROR_MESSAGE(),
	   GETDATE())
    
	SELECT 0

END CATCH
GO
