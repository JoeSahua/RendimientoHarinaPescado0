/****** Object:  Table [grupo03].[cliente]    Script Date: 9/08/2024 20:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [grupo03].[cliente](
	[ID_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Razon_Social] [varchar](400) NULL,
	[RUC] [varchar](11) NULL,
	[Direccion] [varchar](400) NULL,
	[Email] [varchar](400) NULL,
	[Telefono] [varchar](400) NULL,
 CONSTRAINT [pk_pucp_cliente] PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [grupo03].[inventario]    Script Date: 9/08/2024 20:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [grupo03].[inventario](
	[ID_Inventario] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Inventario] [date] NULL,
	[ID_Produccion] [int] NULL,
	[ID_Venta] [int] NULL,
	[Tipo_Operacion] [varchar](400) NULL,
	[StockFinal] [float] NULL,
 CONSTRAINT [pk_pucp_inventario] PRIMARY KEY CLUSTERED 
(
	[ID_Inventario] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [grupo03].[materia_prima]    Script Date: 9/08/2024 20:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [grupo03].[materia_prima](
	[ID_Materia_Prima] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Especie] [varchar](400) NULL,
	[Solidos_Especie] [float] NULL,
	[Humedad_Especie] [float] NULL,
	[Grasa_Especie] [float] NULL,
 CONSTRAINT [pk_pucp_materia_prima] PRIMARY KEY CLUSTERED 
(
	[ID_Materia_Prima] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [grupo03].[planta]    Script Date: 9/08/2024 20:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [grupo03].[planta](
	[ID_Planta] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Planta] [varchar](400) NULL,
	[Ubicacion_Planta] [varchar](400) NULL,
	[Capacidad_Diaria_Tramiento] [float] NULL,
	[Estado_Planta] [int] NULL,
 CONSTRAINT [pk_pucp_planta] PRIMARY KEY CLUSTERED 
(
	[ID_Planta] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [grupo03].[produccion_diaria]    Script Date: 9/08/2024 20:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [grupo03].[produccion_diaria](
	[ID_Produccion] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Produccion] [date] NULL,
	[ID_Planta] [int] NULL,
	[Cantidad_Procesada] [float] NULL,
	[Cantidad_Producida] [float] NULL,
	[ID_Producto] [int] NULL,
 CONSTRAINT [pk_pucp_produccion_diaria] PRIMARY KEY CLUSTERED 
(
	[ID_Produccion] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [grupo03].[producto]    Script Date: 9/08/2024 20:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [grupo03].[producto](
	[ID_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](400) NULL,
	[ID_Materia_Prima] [int] NULL,
	[Proceso] [varchar](400) NULL,
	[Precio_Tn] [float] NULL,
 CONSTRAINT [pk_pucp_producto] PRIMARY KEY CLUSTERED 
(
	[ID_Producto] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [grupo03].[venta]    Script Date: 9/08/2024 20:30:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [grupo03].[venta](
	[ID_Venta] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Venta] [date] NULL,
	[Cantidad_Vendida] [float] NULL,
	[ID_Cliente] [int] NULL,
	[ID_Producto] [int] NULL,
	[Precio_Final] [float] NULL,
 CONSTRAINT [pk_pucp_venta] PRIMARY KEY CLUSTERED 
(
	[ID_Venta] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [grupo03].[cliente] ON 
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (1, N'Pescaditos SRL', N'2065854520', N'Calle Heroes del Mar 120', N'compraspescaditos@gmail.com', N'969558726')
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (2, N'Vida Saludable S.A.', N'2000202033', N'Av Miradores 320', N'Jhupaya@vidasaludable.com', N'973586545')
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (3, N'Summer Dishes S.A.', N'2051322020', N'Av Juan Garcilazo', N'BurgitsSM@gmail.com', N'999614381')
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (4, N'Pacific Atlantic S.A', N'2051322028', N'Av Juan de Arona', N'pac_atl_ocean@pacificat.com', N'934242838')
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (5, N'Nemo S.A.', N'2051322043', N'Calle Fondo de Bikini 123', N'buscando_nemo@nemo.com', N'943271321')
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (6, N'Sal y mar S.A.', N'2022373636', N'Calle Girasol 546', N'salymar@mar.com', N'948329424')
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (7, N'Brisa marina S.R.L.', N'2020138749', N'Av Juan Linares 190', N'brisamarinas@S.com', N'953322532')
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (8, N'Coral S.A.', N'2019881304', N'Calle San Remo 758', N'coral@Coral.com', N'952353523')
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (9, N'Maremoto S.A.', N'2038465818', N'Av San Luis 123', N'maremoto@Maremoto.com', N'967435223')
GO
INSERT [grupo03].[cliente] ([ID_Cliente], [Razon_Social], [RUC], [Direccion], [Email], [Telefono]) VALUES (10, N'Anfibios S.A.', N'2028989653', N'Av San Juan 789', N'anfibios@Anfibios.com', N'987535325')
GO
SET IDENTITY_INSERT [grupo03].[cliente] OFF
GO
SET IDENTITY_INSERT [grupo03].[inventario] ON 
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (1, CAST(N'2024-04-01' AS Date), 367, NULL, N'Entrada', 168.2544)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (2, CAST(N'2024-04-01' AS Date), 368, NULL, N'Entrada', 350.53)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (3, CAST(N'2024-04-01' AS Date), NULL, 553, N'Salida', 245.3079046)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (4, CAST(N'2024-04-01' AS Date), NULL, 554, N'Salida', 175.0336502)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (5, CAST(N'2024-04-01' AS Date), NULL, 555, N'Salida', 0.0841272000000117)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (6, CAST(N'2024-04-02' AS Date), 369, NULL, N'Entrada', 178.3391272)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (7, CAST(N'2024-04-02' AS Date), 370, NULL, N'Entrada', 356.5941272)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (8, CAST(N'2024-04-02' AS Date), NULL, 556, N'Salida', 251.7481013)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (9, CAST(N'2024-04-02' AS Date), NULL, 557, N'Salida', 180.6243563)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (10, CAST(N'2024-04-02' AS Date), NULL, 558, N'Salida', 3.88452380000001)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (11, CAST(N'2024-04-03' AS Date), 371, NULL, N'Entrada', 175.4128238)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (12, CAST(N'2024-04-03' AS Date), 372, NULL, N'Entrada', 340.2145238)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (13, CAST(N'2024-04-03' AS Date), NULL, 559, N'Salida', 240.2942441)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (14, CAST(N'2024-04-03' AS Date), NULL, 560, N'Salida', 174.4139237)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (15, CAST(N'2024-04-03' AS Date), NULL, 561, N'Salida', 9.83083820000002)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (16, CAST(N'2024-04-04' AS Date), 373, NULL, N'Entrada', 185.9899382)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (17, CAST(N'2024-04-04' AS Date), 374, NULL, N'Entrada', 355.2408382)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (18, CAST(N'2024-04-04' AS Date), NULL, 562, N'Salida', 251.576389)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (19, CAST(N'2024-04-04' AS Date), NULL, 563, N'Salida', 184.1454488)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (20, CAST(N'2024-04-04' AS Date), NULL, 564, N'Salida', 15.5335573)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (21, CAST(N'2024-04-05' AS Date), 375, NULL, N'Entrada', 193.1985573)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (22, CAST(N'2024-04-05' AS Date), 376, NULL, N'Entrada', 370.8635573)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (23, CAST(N'2024-04-05' AS Date), NULL, 565, N'Salida', 266.854913)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (24, CAST(N'2024-04-05' AS Date), NULL, 566, N'Salida', 196.9543954)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (25, CAST(N'2024-04-05' AS Date), NULL, 567, N'Salida', 20.5508169)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (26, CAST(N'2024-04-06' AS Date), 377, NULL, N'Entrada', 198.4796169)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (27, CAST(N'2024-04-06' AS Date), 378, NULL, N'Entrada', 369.4308169)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (28, CAST(N'2024-04-06' AS Date), NULL, 568, N'Salida', 265.5203977)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (29, CAST(N'2024-04-06' AS Date), NULL, 569, N'Salida', 197.1329401)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (30, CAST(N'2024-04-06' AS Date), NULL, 570, N'Salida', 26.2515161)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (31, CAST(N'2024-04-07' AS Date), 379, NULL, N'Entrada', 188.5347161)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (32, CAST(N'2024-04-07' AS Date), 380, NULL, N'Entrada', 364.3415161)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (33, CAST(N'2024-04-07' AS Date), NULL, 571, N'Salida', 265.7747575)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (34, CAST(N'2024-04-07' AS Date), NULL, 572, N'Salida', 199.6781625)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (35, CAST(N'2024-04-07' AS Date), NULL, 573, N'Salida', 33.3716915)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (36, CAST(N'2024-04-08' AS Date), 381, NULL, N'Entrada', 200.6674915)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (37, CAST(N'2024-04-08' AS Date), 382, NULL, N'Entrada', 374.7916915)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (38, CAST(N'2024-04-08' AS Date), NULL, 574, N'Salida', 272.5295731)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (39, CAST(N'2024-04-08' AS Date), NULL, 575, N'Salida', 203.8085555)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (40, CAST(N'2024-04-08' AS Date), NULL, 576, N'Salida', 37.5882285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (41, CAST(N'2024-04-09' AS Date), 383, NULL, N'Entrada', 210.3456285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (42, CAST(N'2024-04-09' AS Date), 384, NULL, N'Entrada', 376.3282285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (43, CAST(N'2024-04-09' AS Date), NULL, 577, N'Salida', 277.0333723)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (44, CAST(N'2024-04-09' AS Date), NULL, 578, N'Salida', 209.9425279)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (45, CAST(N'2024-04-09' AS Date), NULL, 579, N'Salida', 42.5372199)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (46, CAST(N'2024-04-10' AS Date), 385, NULL, N'Entrada', 223.6428199)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (47, CAST(N'2024-04-10' AS Date), 386, NULL, N'Entrada', 390.8172199)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (48, CAST(N'2024-04-10' AS Date), NULL, 580, N'Salida', 285.3406219)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (49, CAST(N'2024-04-10' AS Date), NULL, 581, N'Salida', 216.9523611)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (50, CAST(N'2024-04-10' AS Date), NULL, 582, N'Salida', 43.3696091)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (51, CAST(N'2024-04-11' AS Date), 387, NULL, N'Entrada', 214.5903091)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (52, CAST(N'2024-04-11' AS Date), 388, NULL, N'Entrada', 392.7996091)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (53, CAST(N'2024-04-11' AS Date), NULL, 583, N'Salida', 287.2158403)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (54, CAST(N'2024-04-11' AS Date), NULL, 584, N'Salida', 216.7078549)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (55, CAST(N'2024-04-11' AS Date), NULL, 585, N'Salida', 46.2034864)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (56, CAST(N'2024-04-12' AS Date), 389, NULL, N'Entrada', 214.8859864)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (57, CAST(N'2024-04-12' AS Date), 390, NULL, N'Entrada', 390.4534864)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (58, CAST(N'2024-04-12' AS Date), NULL, 586, N'Salida', 287.9014114)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (59, CAST(N'2024-04-12' AS Date), NULL, 587, N'Salida', 219.3818914)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (60, CAST(N'2024-04-12' AS Date), NULL, 588, N'Salida', 51.4739539)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (61, CAST(N'2024-04-13' AS Date), 391, NULL, N'Entrada', 230.9467539)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (62, CAST(N'2024-04-13' AS Date), 392, NULL, N'Entrada', 396.6139539)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (63, CAST(N'2024-04-13' AS Date), NULL, 589, N'Salida', 293.8278105)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (64, CAST(N'2024-04-13' AS Date), NULL, 590, N'Salida', 226.0975369)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (65, CAST(N'2024-04-13' AS Date), NULL, 591, N'Salida', 53.8726768999999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (66, CAST(N'2024-04-14' AS Date), 393, NULL, N'Entrada', 229.8328769)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (67, CAST(N'2024-04-14' AS Date), 394, NULL, N'Entrada', 398.8926769)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (68, CAST(N'2024-04-14' AS Date), NULL, 592, N'Salida', 295.2521191)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (69, CAST(N'2024-04-14' AS Date), NULL, 593, N'Salida', 227.6212987)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (70, CAST(N'2024-04-14' AS Date), NULL, 594, N'Salida', 57.7507016999999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (71, CAST(N'2024-04-15' AS Date), 395, NULL, N'Entrada', 232.0391017)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (72, CAST(N'2024-04-15' AS Date), 396, NULL, N'Entrada', 392.9207017)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (73, CAST(N'2024-04-15' AS Date), NULL, 595, N'Salida', 292.0781038)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (74, CAST(N'2024-04-15' AS Date), NULL, 596, N'Salida', 226.3244532)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (75, CAST(N'2024-04-15' AS Date), NULL, 597, N'Salida', 57.6836676999999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (76, CAST(N'2024-04-16' AS Date), 397, NULL, N'Entrada', 223.3967677)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (77, CAST(N'2024-04-16' AS Date), 398, NULL, N'Entrada', 395.8736677)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (78, CAST(N'2024-04-16' AS Date), NULL, 598, N'Salida', 296.4965362)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (79, CAST(N'2024-04-16' AS Date), NULL, 599, N'Salida', 229.4199316)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (80, CAST(N'2024-04-16' AS Date), NULL, 600, N'Salida', 59.0398095999999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (81, CAST(N'2024-04-17' AS Date), 399, NULL, N'Entrada', 221.9758096)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (82, CAST(N'2024-04-17' AS Date), 400, NULL, N'Entrada', 398.4898096)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (83, CAST(N'2024-04-17' AS Date), NULL, 601, N'Salida', 296.9704981)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (84, CAST(N'2024-04-17' AS Date), NULL, 602, N'Salida', 230.2753621)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (85, CAST(N'2024-04-17' AS Date), NULL, 603, N'Salida', 62.7907320999998)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (86, CAST(N'2024-04-18' AS Date), 401, NULL, N'Entrada', 235.7656321)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (87, CAST(N'2024-04-18' AS Date), 402, NULL, N'Entrada', 415.8007321)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (88, CAST(N'2024-04-18' AS Date), NULL, 604, N'Salida', 312.8630161)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (89, CAST(N'2024-04-18' AS Date), NULL, 605, N'Salida', 244.1884507)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (90, CAST(N'2024-04-18' AS Date), NULL, 606, N'Salida', 67.5951981999998)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (91, CAST(N'2024-04-19' AS Date), 403, NULL, N'Entrada', 232.7151982)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (92, CAST(N'2024-04-19' AS Date), 404, NULL, N'Entrada', 411.5951982)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (93, CAST(N'2024-04-19' AS Date), NULL, 607, N'Salida', 311.1506382)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (94, CAST(N'2024-04-19' AS Date), NULL, 608, N'Salida', 243.2519182)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (95, CAST(N'2024-04-19' AS Date), NULL, 609, N'Salida', 72.6623181999998)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (96, CAST(N'2024-04-20' AS Date), 405, NULL, N'Entrada', 242.6473182)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (97, CAST(N'2024-04-20' AS Date), 406, NULL, N'Entrada', 412.6323182)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (98, CAST(N'2024-04-20' AS Date), NULL, 610, N'Salida', 312.6505409)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (99, CAST(N'2024-04-20' AS Date), NULL, 611, N'Salida', 244.3573673)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (100, CAST(N'2024-04-20' AS Date), NULL, 612, N'Salida', 73.0294857999998)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (101, CAST(N'2024-04-21' AS Date), 407, NULL, N'Entrada', 238.0774858)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (102, CAST(N'2024-04-21' AS Date), 408, NULL, N'Entrada', 416.8794858)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (103, CAST(N'2024-04-21' AS Date), NULL, 613, N'Salida', 313.2912348)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (104, CAST(N'2024-04-21' AS Date), NULL, 614, N'Salida', 245.1814268)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (105, CAST(N'2024-04-21' AS Date), NULL, 615, N'Salida', 77.7952467999998)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (106, CAST(N'2024-04-22' AS Date), 409, NULL, N'Entrada', 258.0139468)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (107, CAST(N'2024-04-22' AS Date), 410, NULL, N'Entrada', 431.1652468)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (108, CAST(N'2024-04-22' AS Date), NULL, 616, N'Salida', 326.34157)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (109, CAST(N'2024-04-22' AS Date), NULL, 617, N'Salida', 256.7700844)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (110, CAST(N'2024-04-22' AS Date), NULL, 618, N'Salida', 79.7670513999998)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (111, CAST(N'2024-04-23' AS Date), 411, NULL, N'Entrada', 258.8862514)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (112, CAST(N'2024-04-23' AS Date), 412, NULL, N'Entrada', 424.2270514)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (113, CAST(N'2024-04-23' AS Date), NULL, 619, N'Salida', 322.8318058)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (114, CAST(N'2024-04-23' AS Date), NULL, 620, N'Salida', 254.9042938)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (115, CAST(N'2024-04-23' AS Date), NULL, 621, N'Salida', 83.0531997999997)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (116, CAST(N'2024-04-24' AS Date), 413, NULL, N'Entrada', 263.8787998)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (117, CAST(N'2024-04-24' AS Date), 414, NULL, N'Entrada', 437.6131998)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (118, CAST(N'2024-04-24' AS Date), NULL, 622, N'Salida', 333.3406494)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (119, CAST(N'2024-04-24' AS Date), NULL, 623, N'Salida', 264.4567326)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (120, CAST(N'2024-04-24' AS Date), NULL, 624, N'Salida', 89.3040925999997)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (121, CAST(N'2024-04-25' AS Date), 415, NULL, N'Entrada', 266.8146926)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (122, CAST(N'2024-04-25' AS Date), 416, NULL, N'Entrada', 437.3640926)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (123, CAST(N'2024-04-25' AS Date), NULL, 625, N'Salida', 335.0971034)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (124, CAST(N'2024-04-25' AS Date), NULL, 626, N'Salida', 266.7729254)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (125, CAST(N'2024-04-25' AS Date), NULL, 627, N'Salida', 95.3707783999997)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (126, CAST(N'2024-04-26' AS Date), 417, NULL, N'Entrada', 264.8519784)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (127, CAST(N'2024-04-26' AS Date), 418, NULL, N'Entrada', 441.2507784)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (128, CAST(N'2024-04-26' AS Date), NULL, 628, N'Salida', 338.3791488)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (129, CAST(N'2024-04-26' AS Date), NULL, 629, N'Salida', 270.6489272)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (130, CAST(N'2024-04-26' AS Date), NULL, 630, N'Salida', 96.3254071999997)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (131, CAST(N'2024-04-27' AS Date), 419, NULL, N'Entrada', 265.9904072)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (132, CAST(N'2024-04-27' AS Date), 420, NULL, N'Entrada', 435.6554072)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (133, CAST(N'2024-04-27' AS Date), NULL, 631, N'Salida', 335.1594344)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (134, CAST(N'2024-04-27' AS Date), NULL, 632, N'Salida', 268.6846874)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (135, CAST(N'2024-04-27' AS Date), NULL, 633, N'Salida', 101.0047679)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (136, CAST(N'2024-04-28' AS Date), 421, NULL, N'Entrada', 272.3197679)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (137, CAST(N'2024-04-28' AS Date), 422, NULL, N'Entrada', 443.6347679)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (138, CAST(N'2024-04-28' AS Date), NULL, 634, N'Salida', 341.1541349)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (139, CAST(N'2024-04-28' AS Date), NULL, 635, N'Salida', 272.0045483)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (140, CAST(N'2024-04-28' AS Date), NULL, 636, N'Salida', 101.4947288)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (141, CAST(N'2024-04-29' AS Date), 423, NULL, N'Entrada', 264.0995288)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (142, CAST(N'2024-04-29' AS Date), 424, NULL, N'Entrada', 440.2547288)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (143, CAST(N'2024-04-29' AS Date), NULL, 637, N'Salida', 341.563778)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (144, CAST(N'2024-04-29' AS Date), NULL, 638, N'Salida', 273.303638)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (145, CAST(N'2024-04-29' AS Date), NULL, 639, N'Salida', 102.246776)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (146, CAST(N'2024-04-30' AS Date), 425, NULL, N'Entrada', 274.096376)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (147, CAST(N'2024-04-30' AS Date), 426, NULL, N'Entrada', 439.206776)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (148, CAST(N'2024-04-30' AS Date), NULL, 640, N'Salida', 340.9593488)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (149, CAST(N'2024-04-30' AS Date), NULL, 641, N'Salida', 275.2117136)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (150, CAST(N'2024-04-30' AS Date), NULL, 642, N'Salida', 108.9893456)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (151, CAST(N'2024-05-01' AS Date), 427, NULL, N'Entrada', 288.1493456)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (152, CAST(N'2024-05-01' AS Date), 428, NULL, N'Entrada', 467.3093456)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (153, CAST(N'2024-05-01' AS Date), NULL, 643, N'Salida', 377.6039336)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (154, CAST(N'2024-05-01' AS Date), NULL, 644, N'Salida', 287.3520836)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (155, CAST(N'2024-05-01' AS Date), NULL, 645, N'Salida', 111.7394516)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (156, CAST(N'2024-05-02' AS Date), 429, NULL, N'Entrada', 280.8972516)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (157, CAST(N'2024-05-02' AS Date), 430, NULL, N'Entrada', 456.9594516)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (158, CAST(N'2024-05-02' AS Date), NULL, 646, N'Salida', 371.1204986)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (159, CAST(N'2024-05-02' AS Date), NULL, 647, N'Salida', 285.9806161)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (160, CAST(N'2024-05-02' AS Date), NULL, 648, N'Salida', 112.2486511)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (161, CAST(N'2024-05-03' AS Date), 431, NULL, N'Entrada', 292.2276511)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (162, CAST(N'2024-05-03' AS Date), 432, NULL, N'Entrada', 465.1486511)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (163, CAST(N'2024-05-03' AS Date), NULL, 649, N'Salida', 378.1852686)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (164, CAST(N'2024-05-03' AS Date), NULL, 650, N'Salida', 291.2218861)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (165, CAST(N'2024-05-03' AS Date), NULL, 651, N'Salida', 117.9479861)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (166, CAST(N'2024-05-04' AS Date), 433, NULL, N'Entrada', 281.0999861)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (167, CAST(N'2024-05-04' AS Date), 434, NULL, N'Entrada', 457.8479861)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (168, CAST(N'2024-05-04' AS Date), NULL, 652, N'Salida', 374.7169436)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (169, CAST(N'2024-05-04' AS Date), NULL, 653, N'Salida', 290.8551161)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (170, CAST(N'2024-05-04' AS Date), NULL, 654, N'Salida', 125.0858861)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (171, CAST(N'2024-05-05' AS Date), 435, NULL, N'Entrada', 293.0138861)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (172, CAST(N'2024-05-05' AS Date), 436, NULL, N'Entrada', 474.9358861)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (173, CAST(N'2024-05-05' AS Date), NULL, 655, N'Salida', 388.4704586)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (174, CAST(N'2024-05-05' AS Date), NULL, 656, N'Salida', 302.64350735)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (175, CAST(N'2024-05-05' AS Date), NULL, 657, N'Salida', 129.01295235)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (176, CAST(N'2024-05-06' AS Date), 437, NULL, N'Entrada', 288.39215235)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (177, CAST(N'2024-05-06' AS Date), 438, NULL, N'Entrada', 461.05295235)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (178, CAST(N'2024-05-06' AS Date), NULL, 658, N'Salida', 377.63620335)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (179, CAST(N'2024-05-06' AS Date), NULL, 659, N'Salida', 295.74683835)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (180, CAST(N'2024-05-06' AS Date), NULL, 660, N'Salida', 133.31287035)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (181, CAST(N'2024-05-07' AS Date), 439, NULL, N'Entrada', 302.91127035)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (182, CAST(N'2024-05-07' AS Date), 440, NULL, N'Entrada', 486.64287035)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (183, CAST(N'2024-05-07' AS Date), NULL, 661, N'Salida', 400.94267885)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (184, CAST(N'2024-05-07' AS Date), NULL, 662, N'Salida', 314.1206646)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (185, CAST(N'2024-05-07' AS Date), NULL, 663, N'Salida', 141.6956246)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (186, CAST(N'2024-05-08' AS Date), 441, NULL, N'Entrada', 315.2256246)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (187, CAST(N'2024-05-08' AS Date), 442, NULL, N'Entrada', 488.7556246)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (188, CAST(N'2024-05-08' AS Date), NULL, 664, N'Salida', 404.4113681)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (189, CAST(N'2024-05-08' AS Date), NULL, 665, N'Salida', 317.4294556)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (190, CAST(N'2024-05-08' AS Date), NULL, 666, N'Salida', 146.7974066)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (191, CAST(N'2024-05-09' AS Date), 443, NULL, N'Entrada', 329.8062066)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (192, CAST(N'2024-05-09' AS Date), 444, NULL, N'Entrada', 498.7374066)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (193, CAST(N'2024-05-09' AS Date), NULL, 667, N'Salida', 411.6322566)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (194, CAST(N'2024-05-09' AS Date), NULL, 668, N'Salida', 324.7646661)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (195, CAST(N'2024-05-09' AS Date), NULL, 669, N'Salida', 153.2819011)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (196, CAST(N'2024-05-10' AS Date), 445, NULL, N'Entrada', 315.9717011)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (197, CAST(N'2024-05-10' AS Date), 446, NULL, N'Entrada', 485.3019011)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (198, CAST(N'2024-05-10' AS Date), NULL, 670, N'Salida', 403.7494886)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (199, CAST(N'2024-05-10' AS Date), NULL, 671, N'Salida', 322.6038006)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (200, CAST(N'2024-05-10' AS Date), NULL, 672, N'Salida', 158.1542946)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (201, CAST(N'2024-05-11' AS Date), 447, NULL, N'Entrada', 330.9742946)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (202, CAST(N'2024-05-11' AS Date), 448, NULL, N'Entrada', 503.7942946)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (203, CAST(N'2024-05-11' AS Date), NULL, 673, N'Salida', 418.8964696)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (204, CAST(N'2024-05-11' AS Date), NULL, 674, N'Salida', 333.8776706)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (205, CAST(N'2024-05-11' AS Date), NULL, 675, N'Salida', 165.1880686)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (206, CAST(N'2024-05-12' AS Date), 449, NULL, N'Entrada', 346.2780686)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (207, CAST(N'2024-05-12' AS Date), 450, NULL, N'Entrada', 513.4380686)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (208, CAST(N'2024-05-12' AS Date), NULL, 676, N'Salida', 425.7661311)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (209, CAST(N'2024-05-12' AS Date), NULL, 677, N'Salida', 337.8852436)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (210, CAST(N'2024-05-12' AS Date), NULL, 678, N'Salida', 165.5363186)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (211, CAST(N'2024-05-13' AS Date), 451, NULL, N'Entrada', 331.0931186)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (212, CAST(N'2024-05-13' AS Date), 452, NULL, N'Entrada', 510.4463186)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (213, CAST(N'2024-05-13' AS Date), NULL, 679, N'Salida', 425.9778596)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (214, CAST(N'2024-05-13' AS Date), NULL, 680, N'Salida', 339.24161735)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (215, CAST(N'2024-05-13' AS Date), NULL, 681, N'Salida', 165.07931285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (216, CAST(N'2024-05-14' AS Date), 453, NULL, N'Entrada', 346.10171285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (217, CAST(N'2024-05-14' AS Date), 454, NULL, N'Entrada', 513.19931285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (218, CAST(N'2024-05-14' AS Date), NULL, 682, N'Salida', 427.00480085)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (219, CAST(N'2024-05-14' AS Date), NULL, 683, N'Salida', 340.83639785)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (220, CAST(N'2024-05-14' AS Date), NULL, 684, N'Salida', 168.09925385)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (221, CAST(N'2024-05-15' AS Date), 455, NULL, N'Entrada', 330.12805385)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (222, CAST(N'2024-05-15' AS Date), 456, NULL, N'Entrada', 505.65925385)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (223, CAST(N'2024-05-15' AS Date), NULL, 685, N'Salida', 423.04144385)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (224, CAST(N'2024-05-15' AS Date), NULL, 686, N'Salida', 338.41515185)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (225, CAST(N'2024-05-15' AS Date), NULL, 687, N'Salida', 168.21739985)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (226, CAST(N'2024-05-16' AS Date), 457, NULL, N'Entrada', 349.32299985)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (227, CAST(N'2024-05-16' AS Date), 458, NULL, N'Entrada', 516.49739985)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (228, CAST(N'2024-05-16' AS Date), NULL, 688, N'Salida', 431.88277385)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (229, CAST(N'2024-05-16' AS Date), NULL, 689, N'Salida', 347.04176585)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (230, CAST(N'2024-05-16' AS Date), NULL, 690, N'Salida', 173.26745985)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (231, CAST(N'2024-05-17' AS Date), 459, NULL, N'Entrada', 344.07745985)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (232, CAST(N'2024-05-17' AS Date), 460, NULL, N'Entrada', 514.88745985)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (233, CAST(N'2024-05-17' AS Date), NULL, 691, N'Salida', 431.50655835)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (234, CAST(N'2024-05-17' AS Date), NULL, 692, N'Salida', 346.46879985)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (235, CAST(N'2024-05-17' AS Date), NULL, 693, N'Salida', 178.13554485)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (236, CAST(N'2024-05-18' AS Date), 461, NULL, N'Entrada', 337.28914485)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (237, CAST(N'2024-05-18' AS Date), 462, NULL, N'Entrada', 509.70554485)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (238, CAST(N'2024-05-18' AS Date), NULL, 694, N'Salida', 428.4460271)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (239, CAST(N'2024-05-18' AS Date), NULL, 695, N'Salida', 346.78862535)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (240, CAST(N'2024-05-18' AS Date), NULL, 696, N'Salida', 185.13167185)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (241, CAST(N'2024-05-19' AS Date), 463, NULL, N'Entrada', 347.11727185)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (242, CAST(N'2024-05-19' AS Date), 464, NULL, N'Entrada', 522.60167185)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (243, CAST(N'2024-05-19' AS Date), NULL, 697, N'Salida', 438.0232531)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (244, CAST(N'2024-05-19' AS Date), NULL, 698, N'Salida', 353.91729235)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (245, CAST(N'2024-05-19' AS Date), NULL, 699, N'Salida', 188.27014285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (246, CAST(N'2024-05-20' AS Date), 465, NULL, N'Entrada', 368.63214285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (247, CAST(N'2024-05-20' AS Date), 466, NULL, N'Entrada', 535.12014285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (248, CAST(N'2024-05-20' AS Date), NULL, 700, N'Salida', 449.93378285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (249, CAST(N'2024-05-20' AS Date), NULL, 701, N'Salida', 365.09427285)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (250, CAST(N'2024-05-20' AS Date), NULL, 702, N'Salida', 194.63484035)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (251, CAST(N'2024-05-21' AS Date), 467, NULL, N'Entrada', 370.42984035)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (252, CAST(N'2024-05-21' AS Date), 468, NULL, N'Entrada', 546.22484035)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (253, CAST(N'2024-05-21' AS Date), NULL, 703, N'Salida', 459.3205821)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (254, CAST(N'2024-05-21' AS Date), NULL, 704, N'Salida', 372.48664185)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (255, CAST(N'2024-05-21' AS Date), NULL, 705, N'Salida', 195.67203085)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (256, CAST(N'2024-05-22' AS Date), 469, NULL, N'Entrada', 357.01923085)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (257, CAST(N'2024-05-22' AS Date), 470, NULL, N'Entrada', 531.81203085)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (258, CAST(N'2024-05-22' AS Date), NULL, 706, N'Salida', 448.02073235)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (259, CAST(N'2024-05-22' AS Date), NULL, 707, N'Salida', 365.44794135)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (260, CAST(N'2024-05-22' AS Date), NULL, 708, N'Salida', 199.32755335)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (261, CAST(N'2024-05-23' AS Date), 471, NULL, N'Entrada', 368.44125335)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (262, CAST(N'2024-05-23' AS Date), 472, NULL, N'Entrada', 544.45755335)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (263, CAST(N'2024-05-23' AS Date), NULL, 709, N'Salida', 460.55645035)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (264, CAST(N'2024-05-23' AS Date), NULL, 710, N'Salida', 376.5431801)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (265, CAST(N'2024-05-23' AS Date), NULL, 711, N'Salida', 209.0515911)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (266, CAST(N'2024-05-24' AS Date), 473, NULL, N'Entrada', 388.7704911)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (267, CAST(N'2024-05-24' AS Date), 474, NULL, N'Entrada', 561.4415911)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (268, CAST(N'2024-05-24' AS Date), NULL, 712, N'Salida', 473.6083836)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (269, CAST(N'2024-05-24' AS Date), NULL, 713, N'Salida', 384.7180061)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (270, CAST(N'2024-05-24' AS Date), NULL, 714, N'Salida', 208.2410941)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (271, CAST(N'2024-05-25' AS Date), 475, NULL, N'Entrada', 383.8340941)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (272, CAST(N'2024-05-25' AS Date), 476, NULL, N'Entrada', 552.5410941)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (273, CAST(N'2024-05-25' AS Date), NULL, 715, N'Salida', 469.0139141)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (274, CAST(N'2024-05-25' AS Date), NULL, 716, N'Salida', 385.3231916)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (275, CAST(N'2024-05-25' AS Date), NULL, 717, N'Salida', 214.2921666)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (276, CAST(N'2024-05-26' AS Date), 477, NULL, N'Entrada', 398.2993666)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (277, CAST(N'2024-05-26' AS Date), 478, NULL, N'Entrada', 568.1521666)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (278, CAST(N'2024-05-26' AS Date), NULL, 718, N'Salida', 480.3418076)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (279, CAST(N'2024-05-26' AS Date), NULL, 719, N'Salida', 392.7614576)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (280, CAST(N'2024-05-26' AS Date), NULL, 720, N'Salida', 214.3629386)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (281, CAST(N'2024-05-27' AS Date), 479, NULL, N'Entrada', 385.6566386)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (282, CAST(N'2024-05-27' AS Date), 480, NULL, N'Entrada', 550.2329386)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (283, CAST(N'2024-05-27' AS Date), NULL, 721, N'Salida', 468.6165286)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (284, CAST(N'2024-05-27' AS Date), NULL, 722, N'Salida', 384.2627781)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (285, CAST(N'2024-05-27' AS Date), NULL, 723, N'Salida', 216.1094626)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (286, CAST(N'2024-05-28' AS Date), 481, NULL, N'Entrada', 384.9878626)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (287, CAST(N'2024-05-28' AS Date), 482, NULL, N'Entrada', 567.9394626)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (288, CAST(N'2024-05-28' AS Date), NULL, 724, N'Salida', 479.8236391)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (289, CAST(N'2024-05-28' AS Date), NULL, 725, N'Salida', 391.4967176)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (290, CAST(N'2024-05-28' AS Date), NULL, 726, N'Salida', 218.8361451)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (291, CAST(N'2024-05-29' AS Date), 483, NULL, N'Entrada', 389.3240451)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (292, CAST(N'2024-05-29' AS Date), 484, NULL, N'Entrada', 553.1261451)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (293, CAST(N'2024-05-29' AS Date), NULL, 727, N'Salida', 471.06630735)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (294, CAST(N'2024-05-29' AS Date), NULL, 728, N'Salida', 387.69438135)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (295, CAST(N'2024-05-29' AS Date), NULL, 729, N'Salida', 224.84500785)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (296, CAST(N'2024-05-30' AS Date), 485, NULL, N'Entrada', 395.14450785)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (297, CAST(N'2024-05-30' AS Date), 486, NULL, N'Entrada', 572.39500785)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (298, CAST(N'2024-05-30' AS Date), NULL, 730, N'Salida', 486.94984035)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (299, CAST(N'2024-05-30' AS Date), NULL, 731, N'Salida', 400.2100491)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (300, CAST(N'2024-05-30' AS Date), NULL, 732, N'Salida', 228.4508391)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (301, CAST(N'2024-05-31' AS Date), 487, NULL, N'Entrada', 397.0958391)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (302, CAST(N'2024-05-31' AS Date), 488, NULL, N'Entrada', 565.7408391)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (303, CAST(N'2024-05-31' AS Date), NULL, 733, N'Salida', 482.52296385)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (304, CAST(N'2024-05-31' AS Date), NULL, 734, N'Salida', 400.37598435)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (305, CAST(N'2024-05-31' AS Date), NULL, 735, N'Salida', 234.54735585)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (306, CAST(N'2024-06-01' AS Date), 489, NULL, N'Entrada', 399.88815585)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (307, CAST(N'2024-06-01' AS Date), 490, NULL, N'Entrada', 579.007355849999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (308, CAST(N'2024-06-01' AS Date), NULL, 736, N'Salida', 511.16251425)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (309, CAST(N'2024-06-01' AS Date), NULL, 737, N'Salida', 370.48470579)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (310, CAST(N'2024-06-01' AS Date), NULL, 738, N'Salida', 239.55752655)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (311, CAST(N'2024-06-02' AS Date), 491, NULL, N'Entrada', 407.46252655)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (312, CAST(N'2024-06-02' AS Date), 492, NULL, N'Entrada', 575.36752655)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (313, CAST(N'2024-06-02' AS Date), NULL, 739, N'Salida', 509.66294195)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (314, CAST(N'2024-06-02' AS Date), NULL, 740, N'Salida', 375.2163713)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (315, CAST(N'2024-06-02' AS Date), NULL, 741, N'Salida', 245.12794283)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (316, CAST(N'2024-06-03' AS Date), 493, NULL, N'Entrada', 424.38234283)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (317, CAST(N'2024-06-03' AS Date), 494, NULL, N'Entrada', 589.84794283)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (318, CAST(N'2024-06-03' AS Date), NULL, 742, N'Salida', 520.70400523)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (319, CAST(N'2024-06-03' AS Date), NULL, 743, N'Salida', 379.94827955)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (320, CAST(N'2024-06-03' AS Date), NULL, 744, N'Salida', 247.57786787)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (321, CAST(N'2024-06-04' AS Date), 495, NULL, N'Entrada', 416.08666787)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (322, CAST(N'2024-06-04' AS Date), 496, NULL, N'Entrada', 598.63786787)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (323, CAST(N'2024-06-04' AS Date), NULL, 745, N'Salida', 528.99458507)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (324, CAST(N'2024-06-04' AS Date), NULL, 746, N'Salida', 383.80775405)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (325, CAST(N'2024-06-04' AS Date), NULL, 747, N'Salida', 250.60470719)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (326, CAST(N'2024-06-05' AS Date), 497, NULL, N'Entrada', 437.51870719)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (327, CAST(N'2024-06-05' AS Date), 498, NULL, N'Entrada', 610.05470719)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (328, CAST(N'2024-06-05' AS Date), NULL, 748, N'Salida', 538.41632219)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (329, CAST(N'2024-06-05' AS Date), NULL, 749, N'Salida', 390.30494969)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (330, CAST(N'2024-06-05' AS Date), NULL, 750, N'Salida', 252.46054754)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (331, CAST(N'2024-06-06' AS Date), 499, NULL, N'Entrada', 417.41734754)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (332, CAST(N'2024-06-06' AS Date), 500, NULL, N'Entrada', 596.12054754)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (333, CAST(N'2024-06-06' AS Date), NULL, 751, N'Salida', 527.78719314)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (334, CAST(N'2024-06-06' AS Date), NULL, 752, N'Salida', 388.47876992)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (335, CAST(N'2024-06-06' AS Date), NULL, 753, N'Salida', 254.30393978)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (336, CAST(N'2024-06-07' AS Date), 501, NULL, N'Entrada', 423.13833978)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (337, CAST(N'2024-06-07' AS Date), 502, NULL, N'Entrada', 598.86393978)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (338, CAST(N'2024-06-07' AS Date), NULL, 754, N'Salida', 530.39297658)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (339, CAST(N'2024-06-07' AS Date), NULL, 755, N'Salida', 391.22829362)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (340, CAST(N'2024-06-07' AS Date), NULL, 756, N'Salida', 260.11528874)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (341, CAST(N'2024-06-08' AS Date), 503, NULL, N'Entrada', 432.76678874)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (342, CAST(N'2024-06-08' AS Date), 504, NULL, N'Entrada', 612.46528874)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (343, CAST(N'2024-06-08' AS Date), NULL, 757, N'Salida', 541.62884474)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (344, CAST(N'2024-06-08' AS Date), NULL, 758, N'Salida', 398.32105274)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (345, CAST(N'2024-06-08' AS Date), NULL, 759, N'Salida', 263.13070004)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (346, CAST(N'2024-06-09' AS Date), 505, NULL, N'Entrada', 439.90180004)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (347, CAST(N'2024-06-09' AS Date), 506, NULL, N'Entrada', 609.74070004)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (348, CAST(N'2024-06-09' AS Date), NULL, 760, N'Salida', 542.33891944)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (349, CAST(N'2024-06-09' AS Date), NULL, 761, N'Salida', 404.17948022)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (350, CAST(N'2024-06-09' AS Date), NULL, 762, N'Salida', 269.47470287)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (351, CAST(N'2024-06-10' AS Date), 507, NULL, N'Entrada', 432.95340287)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (352, CAST(N'2024-06-10' AS Date), 508, NULL, N'Entrada', 603.10470287)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (353, CAST(N'2024-06-10' AS Date), NULL, 763, N'Salida', 537.559753069999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (354, CAST(N'2024-06-10' AS Date), NULL, 764, N'Salida', 404.095408759999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (355, CAST(N'2024-06-10' AS Date), NULL, 765, N'Salida', 276.660092179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (356, CAST(N'2024-06-11' AS Date), 509, NULL, N'Entrada', 457.939592179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (357, CAST(N'2024-06-11' AS Date), 510, NULL, N'Entrada', 632.110092179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (358, CAST(N'2024-06-11' AS Date), NULL, 766, N'Salida', 562.26416718)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (359, CAST(N'2024-06-11' AS Date), NULL, 767, N'Salida', 416.267345079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (360, CAST(N'2024-06-11' AS Date), NULL, 768, N'Salida', 279.873715629999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (361, CAST(N'2024-06-12' AS Date), 511, NULL, N'Entrada', 452.284315629999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (362, CAST(N'2024-06-12' AS Date), 512, NULL, N'Entrada', 617.933715629999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (363, CAST(N'2024-06-12' AS Date), NULL, 769, N'Salida', 552.167523229999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (364, CAST(N'2024-06-12' AS Date), NULL, 770, N'Salida', 415.032131989999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (365, CAST(N'2024-06-12' AS Date), NULL, 771, N'Salida', 282.424040269999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (366, CAST(N'2024-06-13' AS Date), 513, NULL, N'Entrada', 447.491240269999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (367, CAST(N'2024-06-13' AS Date), 514, NULL, N'Entrada', 626.31404027)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (368, CAST(N'2024-06-13' AS Date), NULL, 772, N'Salida', 558.88408907)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (369, CAST(N'2024-06-13' AS Date), NULL, 773, N'Salida', 417.8468906)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (370, CAST(N'2024-06-13' AS Date), NULL, 774, N'Salida', 282.91167629)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (371, CAST(N'2024-06-14' AS Date), 515, NULL, N'Entrada', 453.85307629)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (372, CAST(N'2024-06-14' AS Date), 516, NULL, N'Entrada', 631.77167629)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (373, CAST(N'2024-06-14' AS Date), NULL, 775, N'Salida', 563.611409489999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (374, CAST(N'2024-06-14' AS Date), NULL, 776, N'Salida', 423.539584309999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (375, CAST(N'2024-06-14' AS Date), NULL, 777, N'Salida', 289.456987609999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (376, CAST(N'2024-06-15' AS Date), 517, NULL, N'Entrada', 455.400387609999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (377, CAST(N'2024-06-15' AS Date), 518, NULL, N'Entrada', 628.116987609999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (378, CAST(N'2024-06-15' AS Date), NULL, 778, N'Salida', 561.583844009999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (379, CAST(N'2024-06-15' AS Date), NULL, 779, N'Salida', 421.525243789999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (380, CAST(N'2024-06-15' AS Date), NULL, 780, N'Salida', 289.579921189999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (381, CAST(N'2024-06-16' AS Date), 519, NULL, N'Entrada', 453.634321189999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (382, CAST(N'2024-06-16' AS Date), 520, NULL, N'Entrada', 631.359921189999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (383, CAST(N'2024-06-16' AS Date), NULL, 781, N'Salida', 563.516591189999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (384, CAST(N'2024-06-16' AS Date), NULL, 782, N'Salida', 427.086217909999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (385, CAST(N'2024-06-16' AS Date), NULL, 783, N'Salida', 292.952264449999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (386, CAST(N'2024-06-17' AS Date), 521, NULL, N'Entrada', 462.013064449999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (387, CAST(N'2024-06-17' AS Date), 522, NULL, N'Entrada', 645.162264449999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (388, CAST(N'2024-06-17' AS Date), NULL, 784, N'Salida', 574.029932849999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (389, CAST(N'2024-06-17' AS Date), NULL, 785, N'Salida', 432.930732539999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (390, CAST(N'2024-06-17' AS Date), NULL, 786, N'Salida', 298.989143849999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (391, CAST(N'2024-06-18' AS Date), 523, NULL, N'Entrada', 472.539143849999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (392, CAST(N'2024-06-18' AS Date), 524, NULL, N'Entrada', 646.089143849999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (393, CAST(N'2024-06-18' AS Date), NULL, 787, N'Salida', 577.196735849999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (394, CAST(N'2024-06-18' AS Date), NULL, 788, N'Salida', 433.647630149999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (395, CAST(N'2024-06-18' AS Date), NULL, 789, N'Salida', 301.879445549999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (396, CAST(N'2024-06-19' AS Date), 525, NULL, N'Entrada', 464.887445549999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (397, CAST(N'2024-06-19' AS Date), 526, NULL, N'Entrada', 641.479445549999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (398, CAST(N'2024-06-19' AS Date), NULL, 790, N'Salida', 572.920997549999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (399, CAST(N'2024-06-19' AS Date), NULL, 791, N'Salida', 433.364754749999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (400, CAST(N'2024-06-19' AS Date), NULL, 792, N'Salida', 304.417276349999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (401, CAST(N'2024-06-20' AS Date), 527, NULL, N'Entrada', 478.102276349999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (402, CAST(N'2024-06-20' AS Date), 528, NULL, N'Entrada', 651.787276349999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (403, CAST(N'2024-06-20' AS Date), NULL, 793, N'Salida', 581.764431749999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (404, CAST(N'2024-06-20' AS Date), NULL, 794, N'Salida', 438.972435329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (405, CAST(N'2024-06-20' AS Date), NULL, 795, N'Salida', 307.047561989999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (406, CAST(N'2024-06-21' AS Date), 529, NULL, N'Entrada', 487.383561989999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (407, CAST(N'2024-06-21' AS Date), 530, NULL, N'Entrada', 660.647561989999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (408, CAST(N'2024-06-21' AS Date), NULL, 796, N'Salida', 591.511689989999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (409, CAST(N'2024-06-21' AS Date), NULL, 797, N'Salida', 450.029611589999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (410, CAST(N'2024-06-21' AS Date), NULL, 798, N'Salida', 312.801341189999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (411, CAST(N'2024-06-22' AS Date), 531, NULL, N'Entrada', 489.326341189999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (412, CAST(N'2024-06-22' AS Date), 532, NULL, N'Entrada', 665.851341189999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (413, CAST(N'2024-06-22' AS Date), NULL, 799, N'Salida', 596.131027189999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (414, CAST(N'2024-06-22' AS Date), NULL, 800, N'Salida', 452.060854539999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (415, CAST(N'2024-06-22' AS Date), NULL, 801, N'Salida', 315.720711639999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (416, CAST(N'2024-06-23' AS Date), 533, NULL, N'Entrada', 491.350711639999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (417, CAST(N'2024-06-23' AS Date), 534, NULL, N'Entrada', 666.980711639999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (418, CAST(N'2024-06-23' AS Date), NULL, 802, N'Salida', 597.852743639999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (419, CAST(N'2024-06-23' AS Date), NULL, 803, N'Salida', 456.961303859999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (420, CAST(N'2024-06-23' AS Date), NULL, 804, N'Salida', 321.750792059999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (421, CAST(N'2024-06-24' AS Date), 535, NULL, N'Entrada', 502.912992059999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (422, CAST(N'2024-06-24' AS Date), 536, NULL, N'Entrada', 676.970792059999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (423, CAST(N'2024-06-24' AS Date), NULL, 805, N'Salida', 608.015485659999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (424, CAST(N'2024-06-24' AS Date), NULL, 806, N'Salida', 464.457940519999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (425, CAST(N'2024-06-24' AS Date), NULL, 807, N'Salida', 325.118632879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (426, CAST(N'2024-06-25' AS Date), 537, NULL, N'Entrada', 487.205032879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (427, CAST(N'2024-06-25' AS Date), 538, NULL, N'Entrada', 662.798632879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (428, CAST(N'2024-06-25' AS Date), NULL, 808, N'Salida', 596.458020079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (429, CAST(N'2024-06-25' AS Date), NULL, 809, N'Salida', 460.432074079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (430, CAST(N'2024-06-25' AS Date), NULL, 810, N'Salida', 328.460314159999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (431, CAST(N'2024-06-26' AS Date), 539, NULL, N'Entrada', 494.967214159999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (432, CAST(N'2024-06-26' AS Date), 540, NULL, N'Entrada', 668.270314159999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (433, CAST(N'2024-06-26' AS Date), NULL, 811, N'Salida', 601.443279559999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (434, CAST(N'2024-06-26' AS Date), NULL, 812, N'Salida', 461.981857459999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (435, CAST(N'2024-06-26' AS Date), NULL, 813, N'Salida', 330.383638759999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (436, CAST(N'2024-06-27' AS Date), 541, NULL, N'Entrada', 495.071638759999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (437, CAST(N'2024-06-27' AS Date), 542, NULL, N'Entrada', 673.483638759999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (438, CAST(N'2024-06-27' AS Date), NULL, 814, N'Salida', 604.664640759999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (439, CAST(N'2024-06-27' AS Date), NULL, 815, N'Salida', 466.131839959999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (440, CAST(N'2024-06-27' AS Date), NULL, 816, N'Salida', 336.176539159999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (441, CAST(N'2024-06-28' AS Date), 543, NULL, N'Entrada', 503.413539159999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (442, CAST(N'2024-06-28' AS Date), 544, NULL, N'Entrada', 677.476539159999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (443, CAST(N'2024-06-28' AS Date), NULL, 817, N'Salida', 608.888891159999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (444, CAST(N'2024-06-28' AS Date), NULL, 818, N'Salida', 471.306765559999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (445, CAST(N'2024-06-28' AS Date), NULL, 819, N'Salida', 341.953382959999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (446, CAST(N'2024-06-29' AS Date), 545, NULL, N'Entrada', 511.037682959999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (447, CAST(N'2024-06-29' AS Date), 546, NULL, N'Entrada', 687.023382959999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (448, CAST(N'2024-06-29' AS Date), NULL, 820, N'Salida', 619.168818159999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (449, CAST(N'2024-06-29' AS Date), NULL, 821, N'Salida', 478.510694619999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (450, CAST(N'2024-06-29' AS Date), NULL, 822, N'Salida', 344.875435719999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (451, CAST(N'2024-06-30' AS Date), 547, NULL, N'Entrada', 512.001835719999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (452, CAST(N'2024-06-30' AS Date), 548, NULL, N'Entrada', 693.055435719999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (453, CAST(N'2024-06-30' AS Date), NULL, 823, N'Salida', 624.645029319999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (454, CAST(N'2024-06-30' AS Date), NULL, 824, N'Salida', 483.361593459999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (455, CAST(N'2024-06-30' AS Date), NULL, 825, N'Salida', 350.640251979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (456, CAST(N'2024-10-01' AS Date), 549, NULL, N'Entrada', 527.265651979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (457, CAST(N'2024-10-01' AS Date), 550, NULL, N'Entrada', 711.100251979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (458, CAST(N'2024-10-01' AS Date), NULL, 826, N'Salida', 602.399934379999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (459, CAST(N'2024-10-01' AS Date), NULL, 827, N'Salida', 530.617929979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (460, CAST(N'2024-10-01' AS Date), NULL, 828, N'Salida', 353.307655979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (461, CAST(N'2024-10-02' AS Date), 551, NULL, N'Entrada', 536.810755979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (462, CAST(N'2024-10-02' AS Date), 552, NULL, N'Entrada', 713.117655979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (463, CAST(N'2024-10-02' AS Date), NULL, 829, N'Salida', 608.348180179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (464, CAST(N'2024-10-02' AS Date), NULL, 830, N'Salida', 536.450945979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (465, CAST(N'2024-10-02' AS Date), NULL, 831, N'Salida', 355.736373479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (466, CAST(N'2024-10-03' AS Date), 553, NULL, N'Entrada', 546.196773479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (467, CAST(N'2024-10-03' AS Date), 554, NULL, N'Entrada', 722.006373479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (468, CAST(N'2024-10-03' AS Date), NULL, 832, N'Salida', 611.806718579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (469, CAST(N'2024-10-03' AS Date), NULL, 833, N'Salida', 539.204679179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (470, CAST(N'2024-10-03' AS Date), NULL, 834, N'Salida', 357.608013179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (471, CAST(N'2024-10-04' AS Date), 555, NULL, N'Entrada', 528.204813179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (472, CAST(N'2024-10-04' AS Date), 556, NULL, N'Entrada', 713.018013179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (473, CAST(N'2024-10-04' AS Date), NULL, 835, N'Salida', 605.531366879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (474, CAST(N'2024-10-04' AS Date), NULL, 836, N'Salida', 534.897183479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (475, CAST(N'2024-10-04' AS Date), NULL, 837, N'Salida', 356.765691479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (476, CAST(N'2024-10-05' AS Date), 557, NULL, N'Entrada', 548.276491479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (477, CAST(N'2024-10-05' AS Date), 558, NULL, N'Entrada', 725.055691479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (478, CAST(N'2024-10-05' AS Date), NULL, 838, N'Salida', 615.761951079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (479, CAST(N'2024-10-05' AS Date), NULL, 839, N'Salida', 544.129546079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (480, CAST(N'2024-10-05' AS Date), NULL, 840, N'Salida', 365.048533579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (481, CAST(N'2024-10-06' AS Date), 559, NULL, N'Entrada', 539.831533579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (482, CAST(N'2024-10-06' AS Date), 560, NULL, N'Entrada', 721.74853358)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (483, CAST(N'2024-10-06' AS Date), NULL, 841, N'Salida', 615.32708858)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (484, CAST(N'2024-10-06' AS Date), NULL, 842, N'Salida', 543.73026458)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (485, CAST(N'2024-10-06' AS Date), NULL, 843, N'Salida', 363.77511458)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (486, CAST(N'2024-10-07' AS Date), 561, NULL, N'Entrada', 546.34191458)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (487, CAST(N'2024-10-07' AS Date), 562, NULL, N'Entrada', 714.86511458)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (488, CAST(N'2024-10-07' AS Date), NULL, 844, N'Salida', 610.25433818)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (489, CAST(N'2024-10-07' AS Date), NULL, 845, N'Salida', 540.72447458)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (490, CAST(N'2024-10-07' AS Date), NULL, 846, N'Salida', 367.37378708)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (491, CAST(N'2024-10-08' AS Date), 563, NULL, N'Entrada', 546.51128708)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (492, CAST(N'2024-10-08' AS Date), 564, NULL, N'Entrada', 718.62378708)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (493, CAST(N'2024-10-08' AS Date), NULL, 847, N'Salida', 614.10232458)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (494, CAST(N'2024-10-08' AS Date), NULL, 848, N'Salida', 544.25977458)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (495, CAST(N'2024-10-08' AS Date), NULL, 849, N'Salida', 371.26914958)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (496, CAST(N'2024-10-09' AS Date), 565, NULL, N'Entrada', 552.54864958)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (497, CAST(N'2024-10-09' AS Date), 566, NULL, N'Entrada', 726.71914958)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (498, CAST(N'2024-10-09' AS Date), NULL, 850, N'Salida', 621.68367458)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (499, CAST(N'2024-10-09' AS Date), NULL, 851, N'Salida', 551.731114579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (500, CAST(N'2024-10-09' AS Date), NULL, 852, N'Salida', 378.804689579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (501, CAST(N'2024-10-10' AS Date), 567, NULL, N'Entrada', 553.719989579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (502, CAST(N'2024-10-10' AS Date), 568, NULL, N'Entrada', 735.77468958)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (503, CAST(N'2024-10-10' AS Date), NULL, 853, N'Salida', 628.23390738)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (504, CAST(N'2024-10-10' AS Date), NULL, 854, N'Salida', 557.06836818)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (505, CAST(N'2024-10-10' AS Date), NULL, 855, N'Salida', 377.03054868)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (506, CAST(N'2024-10-11' AS Date), 569, NULL, N'Entrada', 545.28494868)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (507, CAST(N'2024-10-11' AS Date), 570, NULL, N'Entrada', 727.56054868)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (508, CAST(N'2024-10-11' AS Date), NULL, 856, N'Salida', 623.81067928)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (509, CAST(N'2024-10-11' AS Date), NULL, 857, N'Salida', 554.93153428)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (510, CAST(N'2024-10-11' AS Date), NULL, 858, N'Salida', 378.75515628)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (511, CAST(N'2024-10-12' AS Date), 571, NULL, N'Entrada', 558.02015628)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (512, CAST(N'2024-10-12' AS Date), 572, NULL, N'Entrada', 737.28515628)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (513, CAST(N'2024-10-12' AS Date), NULL, 859, N'Salida', 630.27470718)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (514, CAST(N'2024-10-12' AS Date), NULL, 860, N'Salida', 559.27142598)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (515, CAST(N'2024-10-12' AS Date), NULL, 861, N'Salida', 380.95653048)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (516, CAST(N'2024-10-13' AS Date), 573, NULL, N'Entrada', 567.74053048)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (517, CAST(N'2024-10-13' AS Date), 574, NULL, N'Entrada', 740.156530479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (518, CAST(N'2024-10-13' AS Date), NULL, 862, N'Salida', 632.202562479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (519, CAST(N'2024-10-13' AS Date), NULL, 863, N'Salida', 561.325218479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (520, CAST(N'2024-10-13' AS Date), NULL, 864, N'Salida', 382.641178479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (521, CAST(N'2024-10-14' AS Date), 575, NULL, N'Entrada', 560.653278479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (522, CAST(N'2024-10-14' AS Date), 576, NULL, N'Entrada', 745.93117848)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (523, CAST(N'2024-10-14' AS Date), NULL, 865, N'Salida', 639.48357558)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (524, CAST(N'2024-10-14' AS Date), NULL, 866, N'Salida', 568.15521698)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (525, CAST(N'2024-10-14' AS Date), NULL, 867, N'Salida', 389.525523979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (526, CAST(N'2024-10-15' AS Date), 577, NULL, N'Entrada', 576.79242398)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (527, CAST(N'2024-10-15' AS Date), 578, NULL, N'Entrada', 756.715523979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (528, CAST(N'2024-10-15' AS Date), NULL, 868, N'Salida', 645.91961338)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (529, CAST(N'2024-10-15' AS Date), NULL, 869, N'Salida', 571.79863998)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (530, CAST(N'2024-10-15' AS Date), NULL, 870, N'Salida', 393.61969248)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (531, CAST(N'2024-10-16' AS Date), 579, NULL, N'Entrada', 586.955692479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (532, CAST(N'2024-10-16' AS Date), 580, NULL, N'Entrada', 765.419692479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (533, CAST(N'2024-10-16' AS Date), NULL, 871, N'Salida', 653.745844479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (534, CAST(N'2024-10-16' AS Date), NULL, 872, N'Salida', 579.259432479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (535, CAST(N'2024-10-16' AS Date), NULL, 873, N'Salida', 396.333832479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (536, CAST(N'2024-10-17' AS Date), 581, NULL, N'Entrada', 578.824532479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (537, CAST(N'2024-10-17' AS Date), 582, NULL, N'Entrada', 768.763832479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (538, CAST(N'2024-10-17' AS Date), NULL, 874, N'Salida', 657.325327879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (539, CAST(N'2024-10-17' AS Date), NULL, 875, N'Salida', 582.340271679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (540, CAST(N'2024-10-17' AS Date), NULL, 876, N'Salida', 398.378473179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (541, CAST(N'2024-10-18' AS Date), 583, NULL, N'Entrada', 574.758473179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (542, CAST(N'2024-10-18' AS Date), 584, NULL, N'Entrada', 751.138473179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (543, CAST(N'2024-10-18' AS Date), NULL, 877, N'Salida', 647.141297579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (544, CAST(N'2024-10-18' AS Date), NULL, 878, N'Salida', 578.649415979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (545, CAST(N'2024-10-18' AS Date), NULL, 879, N'Salida', 406.978761979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (546, CAST(N'2024-10-19' AS Date), 585, NULL, N'Entrada', 589.512861979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (547, CAST(N'2024-10-19' AS Date), 586, NULL, N'Entrada', 764.888761979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (548, CAST(N'2024-10-19' AS Date), NULL, 880, N'Salida', 660.414832979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (549, CAST(N'2024-10-19' AS Date), NULL, 881, N'Salida', 590.429111579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (550, CAST(N'2024-10-19' AS Date), NULL, 882, N'Salida', 411.778335079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (551, CAST(N'2024-10-20' AS Date), 587, NULL, N'Entrada', 579.072735079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (552, CAST(N'2024-10-20' AS Date), 588, NULL, N'Entrada', 760.308335079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (553, CAST(N'2024-10-20' AS Date), NULL, 883, N'Salida', 655.686599679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (554, CAST(N'2024-10-20' AS Date), NULL, 884, N'Salida', 587.012248479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (555, CAST(N'2024-10-20' AS Date), NULL, 885, N'Salida', 412.956366479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (556, CAST(N'2024-10-21' AS Date), 589, NULL, N'Entrada', 588.425366479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (557, CAST(N'2024-10-21' AS Date), 590, NULL, N'Entrada', 771.056366479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (558, CAST(N'2024-10-21' AS Date), NULL, 886, N'Salida', 662.638010479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (559, CAST(N'2024-10-21' AS Date), NULL, 887, N'Salida', 592.966074479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (560, CAST(N'2024-10-21' AS Date), NULL, 888, N'Salida', 414.614369479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (561, CAST(N'2024-10-22' AS Date), 591, NULL, N'Entrada', 587.001569479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (562, CAST(N'2024-10-22' AS Date), 592, NULL, N'Entrada', 773.754369479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (563, CAST(N'2024-10-22' AS Date), NULL, 889, N'Salida', 667.833209279999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (564, CAST(N'2024-10-22' AS Date), NULL, 890, N'Salida', 596.565467679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (565, CAST(N'2024-10-22' AS Date), NULL, 891, N'Salida', 422.167083679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (566, CAST(N'2024-10-23' AS Date), 593, NULL, N'Entrada', 610.912983679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (567, CAST(N'2024-10-23' AS Date), 594, NULL, N'Entrada', 792.257083679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (568, CAST(N'2024-10-23' AS Date), NULL, 892, N'Salida', 684.272223479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (569, CAST(N'2024-10-23' AS Date), NULL, 893, N'Salida', 611.460716879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (570, CAST(N'2024-10-23' AS Date), NULL, 894, N'Salida', 430.227643879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (571, CAST(N'2024-10-24' AS Date), 595, NULL, N'Entrada', 602.682043879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (572, CAST(N'2024-10-24' AS Date), 596, NULL, N'Entrada', 789.507643879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (573, CAST(N'2024-10-24' AS Date), NULL, 895, N'Salida', 681.669751879999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (574, CAST(N'2024-10-24' AS Date), NULL, 896, N'Salida', 610.230516679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (575, CAST(N'2024-10-24' AS Date), NULL, 897, N'Salida', 430.842012679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (576, CAST(N'2024-10-25' AS Date), 597, NULL, N'Entrada', 619.404312679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (577, CAST(N'2024-10-25' AS Date), 598, NULL, N'Entrada', 800.572012679999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (578, CAST(N'2024-10-25' AS Date), NULL, 898, N'Salida', 689.897034479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (579, CAST(N'2024-10-25' AS Date), NULL, 899, N'Salida', 616.010191279999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (580, CAST(N'2024-10-25' AS Date), NULL, 900, N'Salida', 433.881193279999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (581, CAST(N'2024-10-26' AS Date), 599, NULL, N'Entrada', 617.696193279999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (582, CAST(N'2024-10-26' AS Date), 600, NULL, N'Entrada', 801.511193279999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (583, CAST(N'2024-10-26' AS Date), NULL, 901, N'Salida', 690.317823479999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (584, CAST(N'2024-10-26' AS Date), NULL, 902, N'Salida', 617.975592079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (585, CAST(N'2024-10-26' AS Date), NULL, 903, N'Salida', 435.410534079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (586, CAST(N'2024-10-27' AS Date), 601, NULL, N'Entrada', 611.008934079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (587, CAST(N'2024-10-27' AS Date), 602, NULL, N'Entrada', 801.240534079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (588, CAST(N'2024-10-27' AS Date), NULL, 904, N'Salida', 693.697488979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (589, CAST(N'2024-10-27' AS Date), NULL, 905, N'Salida', 620.853419379999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (590, CAST(N'2024-10-27' AS Date), NULL, 906, N'Salida', 441.047974379999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (591, CAST(N'2024-10-28' AS Date), 603, NULL, N'Entrada', 627.873574379999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (592, CAST(N'2024-10-28' AS Date), 604, NULL, N'Entrada', 800.327974379999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (593, CAST(N'2024-10-28' AS Date), NULL, 907, N'Salida', 692.123616779999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (594, CAST(N'2024-10-28' AS Date), NULL, 908, N'Salida', 620.713123979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (595, CAST(N'2024-10-28' AS Date), NULL, 909, N'Salida', 445.115023979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (596, CAST(N'2024-10-29' AS Date), 605, NULL, N'Entrada', 628.513823979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (597, CAST(N'2024-10-29' AS Date), 606, NULL, N'Entrada', 797.805023979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (598, CAST(N'2024-10-29' AS Date), NULL, 910, N'Salida', 692.167315179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (599, CAST(N'2024-10-29' AS Date), NULL, 911, N'Salida', 622.228888179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (600, CAST(N'2024-10-29' AS Date), NULL, 912, N'Salida', 444.578935179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (601, CAST(N'2024-10-30' AS Date), 607, NULL, N'Entrada', 630.368935179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (602, CAST(N'2024-10-30' AS Date), 608, NULL, N'Entrada', 816.158935179999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (603, CAST(N'2024-10-30' AS Date), NULL, 913, N'Salida', 707.884238979999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (604, CAST(N'2024-10-30' AS Date), NULL, 914, N'Salida', 635.396412579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (605, CAST(N'2024-10-30' AS Date), NULL, 915, N'Salida', 453.099264579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (606, CAST(N'2024-10-31' AS Date), 609, NULL, N'Entrada', 633.282264579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (607, CAST(N'2024-10-31' AS Date), 610, NULL, N'Entrada', 806.399264579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (608, CAST(N'2024-10-31' AS Date), NULL, 916, N'Salida', 700.525853579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (609, CAST(N'2024-10-31' AS Date), NULL, 917, N'Salida', 629.576147579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (610, CAST(N'2024-10-31' AS Date), NULL, 918, N'Salida', 452.908482579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (611, CAST(N'2024-11-01' AS Date), 611, NULL, N'Entrada', 633.774882579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (612, CAST(N'2024-11-01' AS Date), 612, NULL, N'Entrada', 807.548482579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (613, CAST(N'2024-11-01' AS Date), NULL, 919, N'Salida', 718.232398579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (614, CAST(N'2024-11-01' AS Date), NULL, 920, N'Salida', 628.694664579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (615, CAST(N'2024-11-01' AS Date), NULL, 921, N'Salida', 453.413844579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (616, CAST(N'2024-11-02' AS Date), 613, NULL, N'Entrada', 642.969444579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (617, CAST(N'2024-11-02' AS Date), 614, NULL, N'Entrada', 817.943844579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (618, CAST(N'2024-11-02' AS Date), NULL, 922, N'Salida', 727.212327579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (619, CAST(N'2024-11-02' AS Date), NULL, 923, N'Salida', 635.451013329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (620, CAST(N'2024-11-02' AS Date), NULL, 924, N'Salida', 455.683043829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (621, CAST(N'2024-11-03' AS Date), 615, NULL, N'Entrada', 639.268043829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (622, CAST(N'2024-11-03' AS Date), 616, NULL, N'Entrada', 822.853043829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (623, CAST(N'2024-11-03' AS Date), NULL, 925, N'Salida', 732.520044579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (624, CAST(N'2024-11-03' AS Date), NULL, 926, N'Salida', 641.856592329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (625, CAST(N'2024-11-03' AS Date), NULL, 927, N'Salida', 459.483253329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (626, CAST(N'2024-11-04' AS Date), 617, NULL, N'Entrada', 630.699053329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (627, CAST(N'2024-11-04' AS Date), 618, NULL, N'Entrada', 808.903253329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (628, CAST(N'2024-11-04' AS Date), NULL, 928, N'Salida', 723.269146829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (629, CAST(N'2024-11-04' AS Date), NULL, 929, N'Salida', 638.001931329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (630, CAST(N'2024-11-04' AS Date), NULL, 930, N'Salida', 468.131398329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (631, CAST(N'2024-11-05' AS Date), 619, NULL, N'Entrada', 641.910598329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (632, CAST(N'2024-11-05' AS Date), 620, NULL, N'Entrada', 830.171398329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (633, CAST(N'2024-11-05' AS Date), NULL, 931, N'Salida', 742.150423329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (634, CAST(N'2024-11-05' AS Date), NULL, 932, N'Salida', 653.106685329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (635, CAST(N'2024-11-05' AS Date), NULL, 933, N'Salida', 476.521675329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (636, CAST(N'2024-11-06' AS Date), 621, NULL, N'Entrada', 651.711375329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (637, CAST(N'2024-11-06' AS Date), 622, NULL, N'Entrada', 834.051675329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (638, CAST(N'2024-11-06' AS Date), NULL, 934, N'Salida', 745.706012329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (639, CAST(N'2024-11-06' AS Date), NULL, 935, N'Salida', 657.851953079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (640, CAST(N'2024-11-06' AS Date), NULL, 936, N'Salida', 480.642208579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (641, CAST(N'2024-11-07' AS Date), 623, NULL, N'Entrada', 669.880608579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (642, CAST(N'2024-11-07' AS Date), 624, NULL, N'Entrada', 844.562208579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (643, CAST(N'2024-11-07' AS Date), NULL, 937, N'Salida', 754.264558579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (644, CAST(N'2024-11-07' AS Date), NULL, 938, N'Salida', 664.776630579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (645, CAST(N'2024-11-07' AS Date), NULL, 939, N'Salida', 484.144938579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (646, CAST(N'2024-11-08' AS Date), 625, NULL, N'Entrada', 656.757738579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (647, CAST(N'2024-11-08' AS Date), 626, NULL, N'Entrada', 843.754938579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (648, CAST(N'2024-11-08' AS Date), NULL, 940, N'Salida', 754.562668329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (649, CAST(N'2024-11-08' AS Date), NULL, 941, N'Salida', 665.064729579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (650, CAST(N'2024-11-08' AS Date), NULL, 942, N'Salida', 484.504548579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (651, CAST(N'2024-11-09' AS Date), 627, NULL, N'Entrada', 658.466148579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (652, CAST(N'2024-11-09' AS Date), 628, NULL, N'Entrada', 846.924548579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (653, CAST(N'2024-11-09' AS Date), NULL, 943, N'Salida', 758.548431579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (654, CAST(N'2024-11-09' AS Date), NULL, 944, N'Salida', 669.963923079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (655, CAST(N'2024-11-09' AS Date), NULL, 945, N'Salida', 493.972771079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (656, CAST(N'2024-11-10' AS Date), 629, NULL, N'Entrada', 671.757771079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (657, CAST(N'2024-11-10' AS Date), 630, NULL, N'Entrada', 849.542771079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (658, CAST(N'2024-11-10' AS Date), NULL, 946, N'Salida', 761.761427329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (659, CAST(N'2024-11-10' AS Date), NULL, 947, N'Salida', 675.029015079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (660, CAST(N'2024-11-10' AS Date), NULL, 948, N'Salida', 496.212862079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (661, CAST(N'2024-11-11' AS Date), 631, NULL, N'Entrada', 678.930562079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (662, CAST(N'2024-11-11' AS Date), 632, NULL, N'Entrada', 854.482862079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (663, CAST(N'2024-11-11' AS Date), NULL, 949, N'Salida', 767.396381829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (664, CAST(N'2024-11-11' AS Date), NULL, 950, N'Salida', 680.417382579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (665, CAST(N'2024-11-11' AS Date), NULL, 951, N'Salida', 501.945182079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (666, CAST(N'2024-11-12' AS Date), 633, NULL, N'Entrada', 669.993182079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (667, CAST(N'2024-11-12' AS Date), 634, NULL, N'Entrada', 852.045182079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (668, CAST(N'2024-11-12' AS Date), NULL, 952, N'Salida', 765.658007079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (669, CAST(N'2024-11-12' AS Date), NULL, 953, N'Salida', 680.688737079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (670, CAST(N'2024-11-12' AS Date), NULL, 954, N'Salida', 507.581792079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (671, CAST(N'2024-11-13' AS Date), 635, NULL, N'Entrada', 689.181792079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (672, CAST(N'2024-11-13' AS Date), 636, NULL, N'Entrada', 870.781792079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (673, CAST(N'2024-11-13' AS Date), NULL, 955, N'Salida', 781.280232079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (674, CAST(N'2024-11-13' AS Date), NULL, 956, N'Salida', 692.196352079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (675, CAST(N'2024-11-13' AS Date), NULL, 957, N'Salida', 511.776752079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (676, CAST(N'2024-11-14' AS Date), 637, NULL, N'Entrada', 687.048752079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (677, CAST(N'2024-11-14' AS Date), 638, NULL, N'Entrada', 876.926752079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (678, CAST(N'2024-11-14' AS Date), NULL, 958, N'Salida', 788.186173329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (679, CAST(N'2024-11-14' AS Date), NULL, 959, N'Salida', 698.980028329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (680, CAST(N'2024-11-14' AS Date), NULL, 960, N'Salida', 516.861465829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (681, CAST(N'2024-11-15' AS Date), 639, NULL, N'Entrada', 710.124665829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (682, CAST(N'2024-11-15' AS Date), 640, NULL, N'Entrada', 888.521465829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (683, CAST(N'2024-11-15' AS Date), NULL, 961, N'Salida', 797.325393329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (684, CAST(N'2024-11-15' AS Date), NULL, 962, N'Salida', 705.228045329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (685, CAST(N'2024-11-15' AS Date), NULL, 963, N'Salida', 522.910232329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (686, CAST(N'2024-11-16' AS Date), 641, NULL, N'Entrada', 694.420032329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (687, CAST(N'2024-11-16' AS Date), 642, NULL, N'Entrada', 872.930232329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (688, CAST(N'2024-11-16' AS Date), NULL, 964, N'Salida', 786.790310329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (689, CAST(N'2024-11-16' AS Date), NULL, 965, N'Salida', 700.589134829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (690, CAST(N'2024-11-16' AS Date), NULL, 966, N'Salida', 529.849378829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (691, CAST(N'2024-11-17' AS Date), 643, NULL, N'Entrada', 703.769978829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (692, CAST(N'2024-11-17' AS Date), 644, NULL, N'Entrada', 884.789378829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (693, CAST(N'2024-11-17' AS Date), NULL, 967, N'Salida', 795.814794329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (694, CAST(N'2024-11-17' AS Date), NULL, 968, N'Salida', 707.949397329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (695, CAST(N'2024-11-17' AS Date), NULL, 969, N'Salida', 532.733266329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (696, CAST(N'2024-11-18' AS Date), 645, NULL, N'Entrada', 715.292866329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (697, CAST(N'2024-11-18' AS Date), 646, NULL, N'Entrada', 890.693266329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (698, CAST(N'2024-11-18' AS Date), NULL, 970, N'Salida', 802.196605329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (699, CAST(N'2024-11-18' AS Date), NULL, 971, N'Salida', 714.120547329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (700, CAST(N'2024-11-18' AS Date), NULL, 972, N'Salida', 534.693097329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (701, CAST(N'2024-11-19' AS Date), 647, NULL, N'Entrada', 716.786697329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (702, CAST(N'2024-11-19' AS Date), 648, NULL, N'Entrada', 884.873097329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (703, CAST(N'2024-11-19' AS Date), NULL, 973, N'Salida', 798.737571829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (704, CAST(N'2024-11-19' AS Date), NULL, 974, N'Salida', 711.682823829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (705, CAST(N'2024-11-19' AS Date), NULL, 975, N'Salida', 540.847510829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (706, CAST(N'2024-11-20' AS Date), 649, NULL, N'Entrada', 722.093610829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (707, CAST(N'2024-11-20' AS Date), 650, NULL, N'Entrada', 910.737510829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (708, CAST(N'2024-11-20' AS Date), NULL, 976, N'Salida', 817.830390079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (709, CAST(N'2024-11-20' AS Date), NULL, 977, N'Salida', 726.005197579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (710, CAST(N'2024-11-20' AS Date), NULL, 978, N'Salida', 541.855461079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (711, CAST(N'2024-11-21' AS Date), 651, NULL, N'Entrada', 716.878561079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (712, CAST(N'2024-11-21' AS Date), 652, NULL, N'Entrada', 899.045461079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (713, CAST(N'2024-11-21' AS Date), NULL, 979, N'Salida', 809.801539579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (714, CAST(N'2024-11-21' AS Date), NULL, 980, N'Salida', 721.245208829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (715, CAST(N'2024-11-21' AS Date), NULL, 981, N'Salida', 541.739374329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (716, CAST(N'2024-11-22' AS Date), 653, NULL, N'Entrada', 725.694374329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (717, CAST(N'2024-11-22' AS Date), 654, NULL, N'Entrada', 909.649374329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (718, CAST(N'2024-11-22' AS Date), NULL, 982, N'Salida', 817.129207079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (719, CAST(N'2024-11-22' AS Date), NULL, 983, N'Salida', 725.611594579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (720, CAST(N'2024-11-22' AS Date), NULL, 984, N'Salida', 544.103196079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (721, CAST(N'2024-11-23' AS Date), 655, NULL, N'Entrada', 717.778796079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (722, CAST(N'2024-11-23' AS Date), 656, NULL, N'Entrada', 898.543196079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (723, CAST(N'2024-11-23' AS Date), NULL, 985, N'Salida', 810.704103079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (724, CAST(N'2024-11-23' AS Date), NULL, 986, N'Salida', 722.430821079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (725, CAST(N'2024-11-23' AS Date), NULL, 987, N'Salida', 545.884257079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (726, CAST(N'2024-11-24' AS Date), 657, NULL, N'Entrada', 726.199857079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (727, CAST(N'2024-11-24' AS Date), 658, NULL, N'Entrada', 899.444257079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (728, CAST(N'2024-11-24' AS Date), NULL, 988, N'Salida', 810.736053079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (729, CAST(N'2024-11-24' AS Date), NULL, 989, N'Salida', 723.592352079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (730, CAST(N'2024-11-24' AS Date), NULL, 990, N'Salida', 551.992006079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (731, CAST(N'2024-11-25' AS Date), 659, NULL, N'Entrada', 722.905606079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (732, CAST(N'2024-11-25' AS Date), 660, NULL, N'Entrada', 908.062006079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (733, CAST(N'2024-11-25' AS Date), NULL, 991, N'Salida', 821.038498079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (734, CAST(N'2024-11-25' AS Date), NULL, 992, N'Salida', 733.169323829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (735, CAST(N'2024-11-25' AS Date), NULL, 993, N'Salida', 556.131319829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (736, CAST(N'2024-11-26' AS Date), 661, NULL, N'Entrada', 740.886319829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (737, CAST(N'2024-11-26' AS Date), 662, NULL, N'Entrada', 925.641319829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (738, CAST(N'2024-11-26' AS Date), NULL, 994, N'Salida', 833.910462329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (739, CAST(N'2024-11-26' AS Date), NULL, 995, N'Salida', 742.216555829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (740, CAST(N'2024-11-26' AS Date), NULL, 996, N'Salida', 562.745548829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (741, CAST(N'2024-11-27' AS Date), 663, NULL, N'Entrada', 740.061848829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (742, CAST(N'2024-11-27' AS Date), 664, NULL, N'Entrada', 924.615548829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (743, CAST(N'2024-11-27' AS Date), NULL, 997, N'Salida', 835.550295079999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (744, CAST(N'2024-11-27' AS Date), NULL, 998, N'Salida', 745.924142829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (745, CAST(N'2024-11-27' AS Date), NULL, 999, N'Salida', 566.490903329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (746, CAST(N'2024-11-28' AS Date), 665, NULL, N'Entrada', 735.364503329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (747, CAST(N'2024-11-28' AS Date), 666, NULL, N'Entrada', 918.310903329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (748, CAST(N'2024-11-28' AS Date), NULL, 1000, N'Salida', 830.408676329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (749, CAST(N'2024-11-28' AS Date), NULL, 1001, N'Salida', 741.626899329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (750, CAST(N'2024-11-28' AS Date), NULL, 1002, N'Salida', 566.701995329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (751, CAST(N'2024-11-29' AS Date), 667, NULL, N'Entrada', 750.051995329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (752, CAST(N'2024-11-29' AS Date), 668, NULL, N'Entrada', 933.401995329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (753, CAST(N'2024-11-29' AS Date), NULL, 1003, N'Salida', 842.231207829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (754, CAST(N'2024-11-29' AS Date), NULL, 1004, N'Salida', 750.638715329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (755, CAST(N'2024-11-29' AS Date), NULL, 1005, N'Salida', 570.534010329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (756, CAST(N'2024-11-30' AS Date), 669, NULL, N'Entrada', 752.632810329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (757, CAST(N'2024-11-30' AS Date), 670, NULL, N'Entrada', 920.724010329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (758, CAST(N'2024-11-30' AS Date), NULL, 1006, N'Salida', 832.353563829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (759, CAST(N'2024-11-30' AS Date), NULL, 1007, N'Salida', 747.309922329999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (760, CAST(N'2024-11-30' AS Date), NULL, 1008, N'Salida', 576.854939829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (761, CAST(N'2024-12-01' AS Date), 671, NULL, N'Entrada', 744.571739829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (762, CAST(N'2024-12-01' AS Date), 672, NULL, N'Entrada', 926.264939829999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (763, CAST(N'2024-12-01' AS Date), NULL, 1009, N'Salida', 857.074771629999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (764, CAST(N'2024-12-01' AS Date), NULL, 1010, N'Salida', 714.848129949999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (765, CAST(N'2024-12-01' AS Date), NULL, 1011, N'Salida', 580.118079819999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (766, CAST(N'2024-12-02' AS Date), 673, NULL, N'Entrada', 763.148079819999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (767, CAST(N'2024-12-02' AS Date), 674, NULL, N'Entrada', 946.178079819999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (768, CAST(N'2024-12-02' AS Date), NULL, 1012, N'Salida', 872.526807819999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (769, CAST(N'2024-12-02' AS Date), NULL, 1013, N'Salida', 723.252664659999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (770, CAST(N'2024-12-02' AS Date), NULL, 1014, N'Salida', 582.787755399999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (771, CAST(N'2024-12-03' AS Date), 675, NULL, N'Entrada', 758.342955399999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (772, CAST(N'2024-12-03' AS Date), 676, NULL, N'Entrada', 948.527755399999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (773, CAST(N'2024-12-03' AS Date), NULL, 1015, N'Salida', 877.215770199999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (774, CAST(N'2024-12-03' AS Date), NULL, 1016, N'Salida', 730.366405579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (775, CAST(N'2024-12-03' AS Date), NULL, 1017, N'Salida', 587.299889779999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (776, CAST(N'2024-12-04' AS Date), 677, NULL, N'Entrada', 765.272789779999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (777, CAST(N'2024-12-04' AS Date), 678, NULL, N'Entrada', 950.509889779999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (778, CAST(N'2024-12-04' AS Date), NULL, 1018, N'Salida', 877.388452579999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (779, CAST(N'2024-12-04' AS Date), NULL, 1019, N'Salida', 728.963775709999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (780, CAST(N'2024-12-04' AS Date), NULL, 1020, N'Salida', 591.50477195)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (781, CAST(N'2024-12-05' AS Date), 679, NULL, N'Entrada', 758.343171949999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (782, CAST(N'2024-12-05' AS Date), 680, NULL, N'Entrada', 939.08477195)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (783, CAST(N'2024-12-05' AS Date), NULL, 1021, N'Salida', 869.95806155)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (784, CAST(N'2024-12-05' AS Date), NULL, 1022, N'Salida', 730.68518861)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (785, CAST(N'2024-12-05' AS Date), NULL, 1023, N'Salida', 597.20299847)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (786, CAST(N'2024-12-06' AS Date), 681, NULL, N'Entrada', 782.088198469999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (787, CAST(N'2024-12-06' AS Date), 682, NULL, N'Entrada', 959.72299847)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (788, CAST(N'2024-12-06' AS Date), NULL, 1024, N'Salida', 886.82022647)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (789, CAST(N'2024-12-06' AS Date), NULL, 1025, N'Salida', 738.76669595)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (790, CAST(N'2024-12-06' AS Date), NULL, 1026, N'Salida', 598.71289427)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (791, CAST(N'2024-12-07' AS Date), 683, NULL, N'Entrada', 765.85369427)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (792, CAST(N'2024-12-07' AS Date), 684, NULL, N'Entrada', 946.92289427)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (793, CAST(N'2024-12-07' AS Date), NULL, 1027, N'Salida', 877.80320927)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (794, CAST(N'2024-12-07' AS Date), NULL, 1028, N'Salida', 737.24998382)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (795, CAST(N'2024-12-07' AS Date), NULL, 1029, N'Salida', 600.68759318)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (796, CAST(N'2024-12-08' AS Date), 685, NULL, N'Entrada', 784.01729318)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (797, CAST(N'2024-12-08' AS Date), 686, NULL, N'Entrada', 960.15759318)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (798, CAST(N'2024-12-08' AS Date), NULL, 1030, N'Salida', 888.83874518)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (799, CAST(N'2024-12-08' AS Date), NULL, 1031, N'Salida', 741.63290442)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (800, CAST(N'2024-12-08' AS Date), NULL, 1032, N'Salida', 604.38366372)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (801, CAST(N'2024-12-09' AS Date), 687, NULL, N'Entrada', 783.693663719999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (802, CAST(N'2024-12-09' AS Date), 688, NULL, N'Entrada', 963.003663719999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (803, CAST(N'2024-12-09' AS Date), NULL, 1033, N'Salida', 892.527661319999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (804, CAST(N'2024-12-09' AS Date), NULL, 1034, N'Salida', 746.846175959999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (805, CAST(N'2024-12-09' AS Date), NULL, 1035, N'Salida', 608.410966319999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (806, CAST(N'2024-12-10' AS Date), 689, NULL, N'Entrada', 799.360166319999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (807, CAST(N'2024-12-10' AS Date), 690, NULL, N'Entrada', 975.620966319999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (808, CAST(N'2024-12-10' AS Date), NULL, 1036, N'Salida', 903.082302919999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (809, CAST(N'2024-12-10' AS Date), NULL, 1037, N'Salida', 752.315424379999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (810, CAST(N'2024-12-10' AS Date), NULL, 1038, N'Salida', 612.827033779999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (811, CAST(N'2024-12-11' AS Date), 691, NULL, N'Entrada', 799.447033779999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (812, CAST(N'2024-12-11' AS Date), 692, NULL, N'Entrada', 986.067033779999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (813, CAST(N'2024-12-11' AS Date), NULL, 1039, N'Salida', 911.284667379999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (814, CAST(N'2024-12-11' AS Date), NULL, 1040, N'Salida', 759.587614459999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (815, CAST(N'2024-12-11' AS Date), NULL, 1041, N'Salida', 617.706773539999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (816, CAST(N'2024-12-12' AS Date), 693, NULL, N'Entrada', 807.423573539999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (817, CAST(N'2024-12-12' AS Date), 694, NULL, N'Entrada', 982.546773539999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (818, CAST(N'2024-12-12' AS Date), NULL, 1042, N'Salida', 911.081914339999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (819, CAST(N'2024-12-12' AS Date), NULL, 1043, N'Salida', 763.322444019999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (820, CAST(N'2024-12-12' AS Date), NULL, 1044, N'Salida', 624.037112379999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (821, CAST(N'2024-12-13' AS Date), 695, NULL, N'Entrada', 807.89211238)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (822, CAST(N'2024-12-13' AS Date), 696, NULL, N'Entrada', 991.74711238)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (823, CAST(N'2024-12-13' AS Date), NULL, 1045, N'Salida', 919.38178438)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (824, CAST(N'2024-12-13' AS Date), NULL, 1046, N'Salida', 772.60077742)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (825, CAST(N'2024-12-13' AS Date), NULL, 1047, N'Salida', 628.53420568)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (826, CAST(N'2024-12-14' AS Date), 697, NULL, N'Entrada', 812.12250568)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (827, CAST(N'2024-12-14' AS Date), 698, NULL, N'Entrada', 1003.20420568)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (828, CAST(N'2024-12-14' AS Date), NULL, 1048, N'Salida', 927.87305548)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (829, CAST(N'2024-12-14' AS Date), NULL, 1049, N'Salida', 775.45655014)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (830, CAST(N'2024-12-14' AS Date), NULL, 1050, N'Salida', 632.47685809)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (831, CAST(N'2024-12-15' AS Date), 699, NULL, N'Entrada', 808.53605809)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (832, CAST(N'2024-12-15' AS Date), 700, NULL, N'Entrada', 999.26685809)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (833, CAST(N'2024-12-15' AS Date), NULL, 1051, N'Salida', 925.90152229)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (834, CAST(N'2024-12-15' AS Date), NULL, 1052, N'Salida', 777.6079585)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (835, CAST(N'2024-12-15' AS Date), NULL, 1053, N'Salida', 637.2777724)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (836, CAST(N'2024-12-16' AS Date), 701, NULL, N'Entrada', 812.2518724)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (837, CAST(N'2024-12-16' AS Date), 702, NULL, N'Entrada', 994.3677724)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (838, CAST(N'2024-12-16' AS Date), NULL, 1054, N'Salida', 924.5495356)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (839, CAST(N'2024-12-16' AS Date), NULL, 1055, N'Salida', 780.06056599)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (840, CAST(N'2024-12-16' AS Date), NULL, 1056, N'Salida', 639.77883076)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (841, CAST(N'2024-12-17' AS Date), 703, NULL, N'Entrada', 817.90683076)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (842, CAST(N'2024-12-17' AS Date), 704, NULL, N'Entrada', 1010.87883076)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (843, CAST(N'2024-12-17' AS Date), NULL, 1057, N'Salida', 935.98342876)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (844, CAST(N'2024-12-17' AS Date), NULL, 1058, N'Salida', 786.86023366)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (845, CAST(N'2024-12-17' AS Date), NULL, 1059, N'Salida', 642.62331226)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (846, CAST(N'2024-12-18' AS Date), 705, NULL, N'Entrada', 813.24891226)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (847, CAST(N'2024-12-18' AS Date), 706, NULL, N'Entrada', 998.09331226)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (848, CAST(N'2024-12-18' AS Date), NULL, 1060, N'Salida', 928.52783326)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (849, CAST(N'2024-12-18' AS Date), NULL, 1061, N'Salida', 782.43535078)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (850, CAST(N'2024-12-18' AS Date), NULL, 1062, N'Salida', 642.55435108)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (851, CAST(N'2024-12-19' AS Date), 707, NULL, N'Entrada', 833.81555108)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (852, CAST(N'2024-12-19' AS Date), 708, NULL, N'Entrada', 1010.36435108)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (853, CAST(N'2024-12-19' AS Date), NULL, 1063, N'Salida', 937.37613468)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (854, CAST(N'2024-12-19' AS Date), NULL, 1064, N'Salida', 786.96612014)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (855, CAST(N'2024-12-19' AS Date), NULL, 1065, N'Salida', 642.80299064)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (856, CAST(N'2024-12-20' AS Date), 709, NULL, N'Entrada', 819.30589064)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (857, CAST(N'2024-12-20' AS Date), 710, NULL, N'Entrada', 1003.01299064)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (858, CAST(N'2024-12-20' AS Date), NULL, 1066, N'Salida', 930.29379584)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (859, CAST(N'2024-12-20' AS Date), NULL, 1067, N'Salida', 784.04025101)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (860, CAST(N'2024-12-20' AS Date), NULL, 1068, N'Salida', 644.68220621)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (861, CAST(N'2024-12-21' AS Date), 711, NULL, N'Entrada', 815.50460621)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (862, CAST(N'2024-12-21' AS Date), 712, NULL, N'Entrada', 1000.56220621)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (863, CAST(N'2024-12-21' AS Date), NULL, 1069, N'Salida', 929.20826621)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (864, CAST(N'2024-12-21' AS Date), NULL, 1070, N'Salida', 782.62627653)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (865, CAST(N'2024-12-21' AS Date), NULL, 1071, N'Salida', 645.33204309)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (866, CAST(N'2024-12-22' AS Date), 713, NULL, N'Entrada', 822.97174309)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (867, CAST(N'2024-12-22' AS Date), 714, NULL, N'Entrada', 1007.86204309)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (868, CAST(N'2024-12-22' AS Date), NULL, 1072, N'Salida', 935.02976609)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (869, CAST(N'2024-12-22' AS Date), NULL, 1073, N'Salida', 789.79626026)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (870, CAST(N'2024-12-22' AS Date), NULL, 1074, N'Salida', 649.32857381)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (871, CAST(N'2024-12-23' AS Date), 715, NULL, N'Entrada', 831.46357381)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (872, CAST(N'2024-12-23' AS Date), 716, NULL, N'Entrada', 1013.59857381)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (873, CAST(N'2024-12-23' AS Date), NULL, 1075, N'Salida', 941.87381081)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (874, CAST(N'2024-12-23' AS Date), NULL, 1076, N'Salida', 793.21012403)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (875, CAST(N'2024-12-23' AS Date), NULL, 1077, N'Salida', 654.1139888)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (876, CAST(N'2024-12-24' AS Date), 717, NULL, N'Entrada', 843.0026888)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (877, CAST(N'2024-12-24' AS Date), 718, NULL, N'Entrada', 1024.4839888)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (878, CAST(N'2024-12-24' AS Date), NULL, 1078, N'Salida', 951.550728399999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (879, CAST(N'2024-12-24' AS Date), NULL, 1079, N'Salida', 800.868286489999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (880, CAST(N'2024-12-24' AS Date), NULL, 1080, N'Salida', 655.57176512)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (881, CAST(N'2024-12-25' AS Date), 719, NULL, N'Entrada', 844.91936512)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (882, CAST(N'2024-12-25' AS Date), 720, NULL, N'Entrada', 1019.70176512)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (883, CAST(N'2024-12-25' AS Date), NULL, 1081, N'Salida', 948.86391492)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (884, CAST(N'2024-12-25' AS Date), NULL, 1082, N'Salida', 801.85480241)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (885, CAST(N'2024-12-25' AS Date), NULL, 1083, N'Salida', 661.56243188)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (886, CAST(N'2024-12-26' AS Date), 721, NULL, N'Entrada', 838.53743188)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (887, CAST(N'2024-12-26' AS Date), 722, NULL, N'Entrada', 1015.51243188)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (888, CAST(N'2024-12-26' AS Date), NULL, 1084, N'Salida', 946.27273288)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (889, CAST(N'2024-12-26' AS Date), NULL, 1085, N'Salida', 802.79308323)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (890, CAST(N'2024-12-26' AS Date), NULL, 1086, N'Salida', 668.24500788)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (891, CAST(N'2024-12-27' AS Date), 723, NULL, N'Entrada', 857.99820788)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (892, CAST(N'2024-12-27' AS Date), 724, NULL, N'Entrada', 1033.15500788)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (893, CAST(N'2024-12-27' AS Date), NULL, 1087, N'Salida', 961.82969928)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (894, CAST(N'2024-12-27' AS Date), NULL, 1088, N'Salida', 813.892266)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (895, CAST(N'2024-12-27' AS Date), NULL, 1089, N'Salida', 675.26332191)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (896, CAST(N'2024-12-28' AS Date), 725, NULL, N'Entrada', 849.98752191)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (897, CAST(N'2024-12-28' AS Date), 726, NULL, N'Entrada', 1031.84332191)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (898, CAST(N'2024-12-28' AS Date), NULL, 1090, N'Salida', 961.932247109999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (899, CAST(N'2024-12-28' AS Date), NULL, 1091, N'Salida', 816.23151963)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (900, CAST(N'2024-12-28' AS Date), NULL, 1092, N'Salida', 680.26649589)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (901, CAST(N'2024-12-29' AS Date), 727, NULL, N'Entrada', 864.87119589)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (902, CAST(N'2024-12-29' AS Date), 728, NULL, N'Entrada', 1042.23649589)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (903, CAST(N'2024-12-29' AS Date), NULL, 1093, N'Salida', 969.80629889)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (904, CAST(N'2024-12-29' AS Date), NULL, 1094, N'Salida', 821.517325049999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (905, CAST(N'2024-12-29' AS Date), NULL, 1095, N'Salida', 681.421904129999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (906, CAST(N'2024-12-30' AS Date), 729, NULL, N'Entrada', 867.689204129999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (907, CAST(N'2024-12-30' AS Date), 730, NULL, N'Entrada', 1046.65190413)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (908, CAST(N'2024-12-30' AS Date), NULL, 1096, N'Salida', 975.329789729999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (909, CAST(N'2024-12-30' AS Date), NULL, 1097, N'Salida', 828.370733709999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (910, CAST(N'2024-12-30' AS Date), NULL, 1098, N'Salida', 684.549368619999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (911, CAST(N'2024-12-31' AS Date), 731, NULL, N'Entrada', 866.305068619999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (912, CAST(N'2024-12-31' AS Date), 732, NULL, N'Entrada', 1055.47936862)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (913, CAST(N'2024-12-31' AS Date), NULL, 1099, N'Salida', 982.042647219999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (914, CAST(N'2024-12-31' AS Date), NULL, 1100, N'Salida', 832.698810619999)
GO
INSERT [grupo03].[inventario] ([ID_Inventario], [Fecha_Inventario], [ID_Produccion], [ID_Venta], [Tipo_Operacion], [StockFinal]) VALUES (915, CAST(N'2024-12-31' AS Date), NULL, 1101, N'Salida', 690.784701919999)
GO
SET IDENTITY_INSERT [grupo03].[inventario] OFF
GO
SET IDENTITY_INSERT [grupo03].[materia_prima] ON 
GO
INSERT [grupo03].[materia_prima] ([ID_Materia_Prima], [Tipo_Especie], [Solidos_Especie], [Humedad_Especie], [Grasa_Especie]) VALUES (1, N'Anchoveta', 0.27, 0.68, 0.05)
GO
SET IDENTITY_INSERT [grupo03].[materia_prima] OFF
GO
SET IDENTITY_INSERT [grupo03].[planta] ON 
GO
INSERT [grupo03].[planta] ([ID_Planta], [Nombre_Planta], [Ubicacion_Planta], [Capacidad_Diaria_Tramiento], [Estado_Planta]) VALUES (1, N'Oeste', N'Sector Oeste - Sede Callao', 820, 1)
GO
INSERT [grupo03].[planta] ([ID_Planta], [Nombre_Planta], [Ubicacion_Planta], [Capacidad_Diaria_Tramiento], [Estado_Planta]) VALUES (2, N'Norte', N'Sector Norte - Sede Callao', 820, 1)
GO
SET IDENTITY_INSERT [grupo03].[planta] OFF
GO
SET IDENTITY_INSERT [grupo03].[produccion_diaria] ON 
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (1, CAST(N'2023-04-01' AS Date), 1, 707.415695, 160.008767976, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (2, CAST(N'2023-04-02' AS Date), 1, 746.76954, 167.95725507, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (3, CAST(N'2023-04-03' AS Date), 1, 728.54626, 167.5364979496, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (4, CAST(N'2023-04-04' AS Date), 1, 737.46296, 168.3922922864, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (5, CAST(N'2023-04-05' AS Date), 1, 730.8445, 162.5491716096, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (6, CAST(N'2023-04-06' AS Date), 1, 721.20675, 169.96751597925, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (7, CAST(N'2023-04-07' AS Date), 1, 724.70294, 164.6703468096, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (8, CAST(N'2023-04-08' AS Date), 1, 731.3423, 159.414056557, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (9, CAST(N'2023-04-09' AS Date), 1, 682.6092, 152.839821888, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (10, CAST(N'2023-04-10' AS Date), 1, 719.21175, 161.80725261855, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (11, CAST(N'2023-04-11' AS Date), 1, 696.81816, 161.069517684, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (12, CAST(N'2023-04-12' AS Date), 1, 717.02675, 168.20716187715, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (13, CAST(N'2023-04-13' AS Date), 1, 727.743225, 164.484238325, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (14, CAST(N'2023-04-14' AS Date), 1, 741.9139, 160.57884578575, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (15, CAST(N'2023-04-15' AS Date), 1, 691.144, 164.279399648, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (16, CAST(N'2023-04-16' AS Date), 1, 674.4924, 168.389838045, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (17, CAST(N'2023-04-17' AS Date), 1, 707.19425, 155.028294708, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (18, CAST(N'2023-04-18' AS Date), 1, 716.27416, 173.5447506208, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (19, CAST(N'2023-04-19' AS Date), 1, 729.56979, 165.147420405, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (20, CAST(N'2023-04-20' AS Date), 1, 688.39071, 154.1410760736, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (21, CAST(N'2023-04-21' AS Date), 1, 704.95225, 165.6262752903, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (22, CAST(N'2023-04-22' AS Date), 1, 715.30592, 160.9455837696, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (23, CAST(N'2023-04-23' AS Date), 1, 702.97017, 167.2142231682, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (24, CAST(N'2023-04-24' AS Date), 1, 720.26815, 169.490855175, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (25, CAST(N'2023-04-25' AS Date), 1, 688.5144, 158.49601488, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (26, CAST(N'2023-04-26' AS Date), 1, 745.45588, 161.2471243355, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (27, CAST(N'2023-04-27' AS Date), 1, 716.48829, 162.495329535, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (28, CAST(N'2023-04-28' AS Date), 1, 677.85768, 167.7539591208, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (29, CAST(N'2023-04-29' AS Date), 1, 680.789095, 163.1426314872, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (30, CAST(N'2023-04-30' AS Date), 1, 721.65496, 153.8657193792, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (31, CAST(N'2023-05-01' AS Date), 1, 720.98502, 162.9861679008, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (32, CAST(N'2023-05-02' AS Date), 1, 716.63725, 163.65128241, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (33, CAST(N'2023-05-03' AS Date), 1, 723.11625, 165.448998, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (34, CAST(N'2023-05-04' AS Date), 1, 688.535015, 168.3291059814, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (35, CAST(N'2023-05-05' AS Date), 1, 745.73746, 168.5283481191, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (36, CAST(N'2023-05-06' AS Date), 1, 675.80359, 158.3311268, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (37, CAST(N'2023-05-07' AS Date), 1, 742.07958, 169.528080051, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (38, CAST(N'2023-05-08' AS Date), 1, 702.872415, 165.5121093975, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (39, CAST(N'2023-05-09' AS Date), 1, 709.12408, 158.7141255168, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (40, CAST(N'2023-05-10' AS Date), 1, 689.5005, 157.323329085, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (41, CAST(N'2023-05-11' AS Date), 1, 688.02648, 169.50349366245, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (42, CAST(N'2023-05-12' AS Date), 1, 689.1528, 172.788984368, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (43, CAST(N'2023-05-13' AS Date), 1, 722.91276, 169.5817257264, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (44, CAST(N'2023-05-14' AS Date), 1, 730.621155, 164.074589965, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (45, CAST(N'2023-05-15' AS Date), 1, 712.05996, 165.5910795136, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (46, CAST(N'2023-05-16' AS Date), 1, 734.61828, 157.6611824832, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (47, CAST(N'2023-05-17' AS Date), 1, 692.826925, 165.03943295025, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (48, CAST(N'2023-05-18' AS Date), 1, 718.15744, 151.6615930368, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (49, CAST(N'2023-05-19' AS Date), 1, 700.56325, 164.77373741385, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (50, CAST(N'2023-05-20' AS Date), 1, 720.1475, 171.570244872, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (51, CAST(N'2023-05-21' AS Date), 1, 696.23904, 167.16264201, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (52, CAST(N'2023-05-22' AS Date), 1, 712.171395, 160.25252802, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (53, CAST(N'2023-05-23' AS Date), 1, 717.7915, 171.8524924636, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (54, CAST(N'2023-05-24' AS Date), 1, 728.07525, 169.75933582545, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (55, CAST(N'2023-05-25' AS Date), 1, 698.22207, 170.9492717556, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (56, CAST(N'2023-05-26' AS Date), 1, 712.34534, 170.9419473696, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (57, CAST(N'2023-05-27' AS Date), 1, 720.41996, 151.7004934848, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (58, CAST(N'2023-05-28' AS Date), 1, 696.20712, 174.5124370444, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (59, CAST(N'2023-05-29' AS Date), 1, 724.2534, 167.534296488, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (60, CAST(N'2023-05-30' AS Date), 1, 740.88144, 169.772981976, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (61, CAST(N'2023-05-31' AS Date), 1, 699.99325, 160.83044912, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (62, CAST(N'2023-06-01' AS Date), 1, 691.1744, 165.955064064, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (63, CAST(N'2023-06-02' AS Date), 1, 692.2935, 159.206736195, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (64, CAST(N'2023-06-03' AS Date), 1, 735.7883, 163.5501743375, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (65, CAST(N'2023-06-04' AS Date), 1, 700.69872, 166.415946, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (66, CAST(N'2023-06-05' AS Date), 1, 706.686, 172.9216474125, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (67, CAST(N'2023-06-06' AS Date), 1, 744.20606, 172.5218488292, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (68, CAST(N'2023-06-07' AS Date), 1, 713.773, 157.0734573984, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (69, CAST(N'2023-06-08' AS Date), 1, 704.57016, 161.6213490024, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (70, CAST(N'2023-06-09' AS Date), 1, 687.5112, 166.7029891365, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (71, CAST(N'2023-06-10' AS Date), 1, 666.54888, 156.38444844645, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (72, CAST(N'2023-06-11' AS Date), 1, 760.34504, 160.795429536, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (73, CAST(N'2023-06-12' AS Date), 1, 672.14856, 157.36888207425, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (74, CAST(N'2023-06-13' AS Date), 1, 692.72917, 167.1719480238, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (75, CAST(N'2023-06-14' AS Date), 1, 702.70018, 170.0396763728, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (76, CAST(N'2023-06-15' AS Date), 1, 719.022225, 156.838203168, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (77, CAST(N'2023-06-16' AS Date), 1, 697.2259, 160.264345374, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (78, CAST(N'2023-06-17' AS Date), 1, 693.52584, 166.2366990025, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (79, CAST(N'2023-06-18' AS Date), 1, 716.338, 170.7446064688, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (80, CAST(N'2023-06-19' AS Date), 1, 691.253535, 168.098752497, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (81, CAST(N'2023-06-20' AS Date), 1, 748.57302, 172.882938969, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (82, CAST(N'2023-06-21' AS Date), 1, 719.127675, 175.960855863, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (83, CAST(N'2023-06-22' AS Date), 1, 713.39737, 163.6034188621, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (84, CAST(N'2023-06-23' AS Date), 1, 699.21672, 161.484101484, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (85, CAST(N'2023-06-24' AS Date), 1, 713.146, 170.13203934, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (86, CAST(N'2023-06-25' AS Date), 1, 672.49056, 157.0988384952, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (87, CAST(N'2023-06-26' AS Date), 1, 696.787, 159.46667282, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (88, CAST(N'2023-06-27' AS Date), 1, 680.74416, 162.04547442, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (89, CAST(N'2023-06-28' AS Date), 1, 695.67113, 167.4257511201, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (90, CAST(N'2023-06-29' AS Date), 1, 703.78014, 169.391980125, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (91, CAST(N'2023-06-30' AS Date), 1, 702.509325, 164.057432775, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (92, CAST(N'2023-10-01' AS Date), 1, 706.96625, 160.1954415985, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (93, CAST(N'2023-10-02' AS Date), 1, 749.15594, 160.2755743512, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (94, CAST(N'2023-10-03' AS Date), 1, 673.2612, 162.0525682125, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (95, CAST(N'2023-10-04' AS Date), 1, 714.98007, 163.8519826419, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (96, CAST(N'2023-10-05' AS Date), 1, 690.750795, 160.1436643128, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (97, CAST(N'2023-10-06' AS Date), 1, 726.13554, 160.7063627325, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (98, CAST(N'2023-10-07' AS Date), 1, 676.28771, 155.0524832717, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (99, CAST(N'2023-10-08' AS Date), 1, 713.731485, 158.954999077, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (100, CAST(N'2023-10-09' AS Date), 1, 722.171475, 161.45488545, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (101, CAST(N'2023-10-10' AS Date), 1, 717.74248, 159.18700042, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (102, CAST(N'2023-10-11' AS Date), 1, 743.11432, 167.3087593896, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (103, CAST(N'2023-10-12' AS Date), 1, 685.38624, 168.8093458128, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (104, CAST(N'2023-10-13' AS Date), 1, 733.8237, 169.938892446, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (105, CAST(N'2023-10-14' AS Date), 1, 722.095, 173.949219444, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (106, CAST(N'2023-10-15' AS Date), 1, 745.747245, 161.4042696096, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (107, CAST(N'2023-10-16' AS Date), 1, 748.50405, 160.65538692, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (108, CAST(N'2023-10-17' AS Date), 1, 699.19525, 157.4889755348, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (109, CAST(N'2023-10-18' AS Date), 1, 678.2772, 154.742160408, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (110, CAST(N'2023-10-19' AS Date), 1, 665.13528, 160.7340975075, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (111, CAST(N'2023-10-20' AS Date), 1, 723.266445, 166.02581244975, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (112, CAST(N'2023-10-21' AS Date), 1, 719.10459, 168.6884007276, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (113, CAST(N'2023-10-22' AS Date), 1, 734.55425, 164.4455414126, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (114, CAST(N'2023-10-23' AS Date), 1, 709.07525, 163.0873075, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (115, CAST(N'2023-10-24' AS Date), 1, 702.582, 168.268389, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (116, CAST(N'2023-10-25' AS Date), 1, 740.495265, 169.4105067267, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (117, CAST(N'2023-10-26' AS Date), 1, 728.6595, 165.0610505565, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (118, CAST(N'2023-10-27' AS Date), 1, 740.6048, 169.776244352, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (119, CAST(N'2023-10-28' AS Date), 1, 695.97475, 160.85368422, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (120, CAST(N'2023-10-29' AS Date), 1, 700.91304, 174.6289793508, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (121, CAST(N'2023-10-30' AS Date), 1, 732.70574, 161.2023080475, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (122, CAST(N'2023-10-31' AS Date), 1, 706.04475, 155.6032255272, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (123, CAST(N'2023-11-01' AS Date), 1, 731.997135, 173.0113981362, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (124, CAST(N'2023-11-02' AS Date), 1, 711.940355, 170.48167329015, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (125, CAST(N'2023-11-03' AS Date), 1, 690.75925, 159.606832305, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (126, CAST(N'2023-11-04' AS Date), 1, 701.35954, 158.3435100576, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (127, CAST(N'2023-11-05' AS Date), 1, 711.46925, 162.713017475, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (128, CAST(N'2023-11-06' AS Date), 1, 735.64542, 162.2734268022, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (129, CAST(N'2023-11-07' AS Date), 1, 731.570775, 159.678662052, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (130, CAST(N'2023-11-08' AS Date), 1, 719.663, 161.0553978264, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (131, CAST(N'2023-11-09' AS Date), 1, 731.45592, 161.98232013, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (132, CAST(N'2023-11-10' AS Date), 1, 713.2315, 158.0498180592, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (133, CAST(N'2023-11-11' AS Date), 1, 703.53276, 160.4828578836, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (134, CAST(N'2023-11-12' AS Date), 1, 744.07762, 167.08048319325, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (135, CAST(N'2023-11-13' AS Date), 1, 707.27139, 165.11178429, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (136, CAST(N'2023-11-14' AS Date), 1, 718.14547, 164.0746955309, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (137, CAST(N'2023-11-15' AS Date), 1, 725.933, 154.24847748, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (138, CAST(N'2023-11-16' AS Date), 1, 717.98055, 168.04405163, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (139, CAST(N'2023-11-17' AS Date), 1, 708.605, 168.812953244, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (140, CAST(N'2023-11-18' AS Date), 1, 705.524055, 152.2537511256, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (141, CAST(N'2023-11-19' AS Date), 1, 711.512095, 168.3597343975, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (142, CAST(N'2023-11-20' AS Date), 1, 703.18525, 158.3050013174, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (143, CAST(N'2023-11-21' AS Date), 1, 726.5505, 172.544118942, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (144, CAST(N'2023-11-22' AS Date), 1, 698.6965, 155.3587999968, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (145, CAST(N'2023-11-23' AS Date), 1, 671.99352, 161.236445205, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (146, CAST(N'2023-11-24' AS Date), 1, 695.899225, 165.93063726975, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (147, CAST(N'2023-11-25' AS Date), 1, 700.88112, 167.415676695, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (148, CAST(N'2023-11-26' AS Date), 1, 687.97632, 165.6876304, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (149, CAST(N'2023-11-27' AS Date), 1, 727.42982, 168.5382149958, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (150, CAST(N'2023-11-28' AS Date), 1, 757.4996, 168.1794785, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (151, CAST(N'2023-11-29' AS Date), 1, 662.38104, 156.51553389815, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (152, CAST(N'2023-11-30' AS Date), 1, 703.99788, 156.3002289296, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (153, CAST(N'2023-12-01' AS Date), 1, 758.37892, 159.60959424, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (154, CAST(N'2023-12-02' AS Date), 1, 695.97456, 174.1600939156, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (155, CAST(N'2023-12-03' AS Date), 1, 750.67252, 160.0595495952, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (156, CAST(N'2023-12-04' AS Date), 1, 721.20048, 165.4578141216, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (157, CAST(N'2023-12-05' AS Date), 1, 752.2138, 168.5828297565, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (158, CAST(N'2023-12-06' AS Date), 1, 694.754, 158.90413488, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (159, CAST(N'2023-12-07' AS Date), 1, 701.30368, 167.5769437056, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (160, CAST(N'2023-12-08' AS Date), 1, 706.51025, 158.3888590942, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (161, CAST(N'2023-12-09' AS Date), 1, 709.78509, 159.5226055824, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (162, CAST(N'2023-12-10' AS Date), 1, 732.811, 174.6863136824, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (163, CAST(N'2023-12-11' AS Date), 1, 691.3188, 157.848821604, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (164, CAST(N'2023-12-12' AS Date), 1, 737.433225, 158.286137688, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (165, CAST(N'2023-12-13' AS Date), 1, 735.4425, 172.954895256, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (166, CAST(N'2023-12-14' AS Date), 1, 722.77425, 159.3734567832, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (167, CAST(N'2023-12-15' AS Date), 1, 675.12168, 159.1469962278, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (168, CAST(N'2023-12-16' AS Date), 1, 714.211995, 167.4098340525, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (169, CAST(N'2023-12-17' AS Date), 1, 693.562415, 164.6876693319, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (170, CAST(N'2023-12-18' AS Date), 1, 729.93725, 167.4987007575, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (171, CAST(N'2023-12-19' AS Date), 1, 683.5212, 169.540598448, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (172, CAST(N'2023-12-20' AS Date), 1, 720.572625, 154.90446426, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (173, CAST(N'2023-12-21' AS Date), 1, 690.52536, 162.7922167767, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (174, CAST(N'2023-12-22' AS Date), 1, 697.75296, 169.9351168344, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (175, CAST(N'2023-12-23' AS Date), 1, 703.17024, 169.25893652, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (176, CAST(N'2023-12-24' AS Date), 1, 729.00777, 170.1938680988, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (177, CAST(N'2023-12-25' AS Date), 1, 719.59878, 159.7915653264, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (178, CAST(N'2023-12-26' AS Date), 1, 727.34375, 169.32169734375, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (179, CAST(N'2023-12-27' AS Date), 1, 680.16504, 164.89283575035, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (180, CAST(N'2023-12-28' AS Date), 1, 726.34302, 163.6408098, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (181, CAST(N'2023-12-29' AS Date), 1, 712.424475, 159.78081654, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (182, CAST(N'2023-12-30' AS Date), 1, 759.031, 170.0287827, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (183, CAST(N'2023-12-31' AS Date), 1, 718.61325, 168.85787309055, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (184, CAST(N'2023-04-01' AS Date), 2, 736.289805, 172.8023086348, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (185, CAST(N'2023-04-02' AS Date), 2, 717.48446, 169.49472177, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (186, CAST(N'2023-04-03' AS Date), 2, 672.50424, 153.8286198576, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (187, CAST(N'2023-04-04' AS Date), 2, 680.73504, 156.0448932192, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (188, CAST(N'2023-04-05' AS Date), 2, 730.8445, 175.2816521508, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (189, CAST(N'2023-04-06' AS Date), 2, 721.20675, 162.72256145145, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (190, CAST(N'2023-04-07' AS Date), 2, 668.95656, 158.3902383707, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (191, CAST(N'2023-04-08' AS Date), 2, 675.0852, 164.85200848575, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (192, CAST(N'2023-04-09' AS Date), 2, 710.4708, 165.699621984, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (193, CAST(N'2023-04-10' AS Date), 2, 719.21175, 167.9494648059, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (194, CAST(N'2023-04-11' AS Date), 2, 754.88634, 172.567017324, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (195, CAST(N'2023-04-12' AS Date), 2, 717.02675, 162.320515665, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (196, CAST(N'2023-04-13' AS Date), 2, 699.204275, 163.3783540125, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (197, CAST(N'2023-04-14' AS Date), 2, 684.8436, 166.165314777, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (198, CAST(N'2023-04-15' AS Date), 2, 691.144, 151.8283022592, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (199, CAST(N'2023-04-16' AS Date), 2, 730.7001, 155.281640328, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (200, CAST(N'2023-04-17' AS Date), 2, 707.19425, 170.3891195734, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (201, CAST(N'2023-04-18' AS Date), 2, 745.50984, 161.240622336, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (202, CAST(N'2023-04-19' AS Date), 2, 700.95921, 164.346324165, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (203, CAST(N'2023-04-20' AS Date), 2, 716.48829, 169.2946629192, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (204, CAST(N'2023-04-21' AS Date), 2, 704.95225, 157.61815872075, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (205, CAST(N'2023-04-22' AS Date), 2, 744.50208, 174.5626727936, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (206, CAST(N'2023-04-23' AS Date), 2, 731.66283, 161.9783865714, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (207, CAST(N'2023-04-24' AS Date), 2, 749.66685, 169.9538847, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (208, CAST(N'2023-04-25' AS Date), 2, 745.8906, 171.860653146, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (209, CAST(N'2023-04-26' AS Date), 2, 688.11312, 167.4557683176, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (210, CAST(N'2023-04-27' AS Date), 2, 688.39071, 160.388011035, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (211, CAST(N'2023-04-28' AS Date), 2, 734.34582, 155.0870586072, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (212, CAST(N'2023-04-29' AS Date), 2, 708.576405, 156.4725655948, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (213, CAST(N'2023-04-30' AS Date), 2, 666.14304, 164.7105280704, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (214, CAST(N'2023-05-01' AS Date), 2, 750.41298, 177.50945472, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (215, CAST(N'2023-05-02' AS Date), 2, 716.63725, 166.20251102, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (216, CAST(N'2023-05-03' AS Date), 2, 723.11625, 164.89942965, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (217, CAST(N'2023-05-04' AS Date), 2, 716.638485, 154.11942948, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (218, CAST(N'2023-05-05' AS Date), 2, 688.37304, 162.09507182715, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (219, CAST(N'2023-05-06' AS Date), 2, 703.38741, 157.441548605, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (220, CAST(N'2023-05-07' AS Date), 2, 712.97842, 164.1775407734, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (221, CAST(N'2023-05-08' AS Date), 2, 731.561085, 165.36149388, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (222, CAST(N'2023-05-09' AS Date), 2, 738.06792, 171.9327772448, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (223, CAST(N'2023-05-10' AS Date), 2, 689.5005, 157.24748403, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (224, CAST(N'2023-05-11' AS Date), 2, 745.36202, 161.62014359015, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (225, CAST(N'2023-05-12' AS Date), 2, 746.5822, 159.807642792, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (226, CAST(N'2023-05-13' AS Date), 2, 694.56324, 155.4551599104, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (227, CAST(N'2023-05-14' AS Date), 2, 701.969345, 164.2966414925, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (228, CAST(N'2023-05-15' AS Date), 2, 684.13604, 153.5837939136, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (229, CAST(N'2023-05-16' AS Date), 2, 705.80972, 173.0916233904, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (230, CAST(N'2023-05-17' AS Date), 2, 721.105575, 158.87214217175, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (231, CAST(N'2023-05-18' AS Date), 2, 662.91456, 165.6142872384, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (232, CAST(N'2023-05-19' AS Date), 2, 700.56325, 158.60037405485, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (233, CAST(N'2023-05-20' AS Date), 2, 720.1475, 157.76415312, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (234, CAST(N'2023-05-21' AS Date), 2, 754.25896, 168.20700057, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (235, CAST(N'2023-05-22' AS Date), 2, 684.243105, 160.322348745, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (236, CAST(N'2023-05-23' AS Date), 2, 717.7915, 159.5495461536, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (237, CAST(N'2023-05-24' AS Date), 2, 728.07525, 164.02967483805, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (238, CAST(N'2023-05-25' AS Date), 2, 726.72093, 157.6351743408, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (239, CAST(N'2023-05-26' AS Date), 2, 741.42066, 164.3095761244, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (240, CAST(N'2023-05-27' AS Date), 2, 665.00304, 165.15627583, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (241, CAST(N'2023-05-28' AS Date), 2, 754.22438, 158.9371234248, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (242, CAST(N'2023-05-29' AS Date), 2, 668.5416, 154.787436648, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (243, CAST(N'2023-05-30' AS Date), 2, 683.89056, 157.568385024, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (244, CAST(N'2023-05-31' AS Date), 2, 699.99325, 162.3634343375, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (245, CAST(N'2023-06-01' AS Date), 2, 719.3856, 159.225846528, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (246, CAST(N'2023-06-02' AS Date), 2, 692.2935, 159.885183825, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (247, CAST(N'2023-06-03' AS Date), 2, 679.1892, 162.7436371625, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (248, CAST(N'2023-06-04' AS Date), 2, 759.09028, 166.700604855, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (249, CAST(N'2023-06-05' AS Date), 2, 765.5765, 164.83465672625, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (250, CAST(N'2023-06-06' AS Date), 2, 686.95944, 158.7288482064, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (251, CAST(N'2023-06-07' AS Date), 2, 713.773, 170.5192276632, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (252, CAST(N'2023-06-08' AS Date), 2, 763.28434, 175.364577115, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (253, CAST(N'2023-06-09' AS Date), 2, 744.8038, 162.54483546, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (254, CAST(N'2023-06-10' AS Date), 2, 722.09462, 163.91478441825, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (255, CAST(N'2023-06-11' AS Date), 2, 701.85696, 173.35866912, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (256, CAST(N'2023-06-12' AS Date), 2, 728.16094, 163.23505863165, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (257, CAST(N'2023-06-13' AS Date), 2, 721.00383, 160.3806574384, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (258, CAST(N'2023-06-14' AS Date), 2, 731.38182, 159.596117616, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (259, CAST(N'2023-06-15' AS Date), 2, 690.825275, 169.534161875, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (260, CAST(N'2023-06-16' AS Date), 2, 725.6841, 168.184547016, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (261, CAST(N'2023-06-17' AS Date), 2, 751.31966, 165.3986886125, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (262, CAST(N'2023-06-18' AS Date), 2, 716.338, 158.786346432, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (263, CAST(N'2023-06-19' AS Date), 2, 719.467965, 155.1274504488, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (264, CAST(N'2023-06-20' AS Date), 2, 690.99048, 158.8172519232, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (265, CAST(N'2023-06-21' AS Date), 2, 748.479825, 161.07285834, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (266, CAST(N'2023-06-22' AS Date), 2, 742.51563, 171.2835055284, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (267, CAST(N'2023-06-23' AS Date), 2, 757.48478, 175.2516787008, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (268, CAST(N'2023-06-24' AS Date), 2, 742.254, 164.83656644, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (269, CAST(N'2023-06-25' AS Date), 2, 728.53144, 163.661085441, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (270, CAST(N'2023-06-26' AS Date), 2, 696.787, 160.55366054, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (271, CAST(N'2023-06-27' AS Date), 2, 737.47284, 164.48480766, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (272, CAST(N'2023-06-28' AS Date), 2, 724.06587, 159.0443337406, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (273, CAST(N'2023-06-29' AS Date), 2, 732.50586, 162.678779361, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (274, CAST(N'2023-06-30' AS Date), 2, 731.183175, 163.52696655, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (275, CAST(N'2023-10-01' AS Date), 2, 706.96625, 165.133176675, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (276, CAST(N'2023-10-02' AS Date), 2, 691.52856, 171.6915583292, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (277, CAST(N'2023-10-03' AS Date), 2, 729.3663, 160.5096779625, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (278, CAST(N'2023-10-04' AS Date), 2, 744.16293, 171.5444386236, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (279, CAST(N'2023-10-05' AS Date), 2, 718.944705, 166.31347860765, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (280, CAST(N'2023-10-06' AS Date), 2, 670.27896, 159.80567538, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (281, CAST(N'2023-10-07' AS Date), 2, 703.89129, 161.8668410484, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (282, CAST(N'2023-10-08' AS Date), 2, 685.742015, 164.19392812425, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (283, CAST(N'2023-10-09' AS Date), 2, 693.851025, 163.5718390875, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (284, CAST(N'2023-10-10' AS Date), 2, 662.53152, 159.35953467, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (285, CAST(N'2023-10-11' AS Date), 2, 685.95168, 160.1174134644, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (286, CAST(N'2023-10-12' AS Date), 2, 742.50176, 159.8524899664, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (287, CAST(N'2023-10-13' AS Date), 2, 705.0463, 163.528438822, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (288, CAST(N'2023-10-14' AS Date), 2, 722.095, 158.994920832, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (289, CAST(N'2023-10-15' AS Date), 2, 716.502255, 173.516374668, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (290, CAST(N'2023-10-16' AS Date), 2, 719.15095, 175.562065224, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (291, CAST(N'2023-10-17' AS Date), 2, 699.19525, 164.23802760495, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (292, CAST(N'2023-10-18' AS Date), 2, 734.8003, 170.385493564, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (293, CAST(N'2023-10-19' AS Date), 2, 720.56322, 159.452326395, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (294, CAST(N'2023-10-20' AS Date), 2, 694.903055, 159.89024392495, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (295, CAST(N'2023-10-21' AS Date), 2, 690.90441, 155.3739677424, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (296, CAST(N'2023-10-22' AS Date), 2, 734.55425, 172.8958535046, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (297, CAST(N'2023-10-23' AS Date), 2, 709.07525, 162.06623914, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (298, CAST(N'2023-10-24' AS Date), 2, 761.1305, 168.7880069375, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (299, CAST(N'2023-10-25' AS Date), 2, 711.456235, 163.10134187375, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (300, CAST(N'2023-10-26' AS Date), 2, 728.6595, 171.9989091198, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (301, CAST(N'2023-10-27' AS Date), 2, 683.6352, 157.837694976, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (302, CAST(N'2023-10-28' AS Date), 2, 695.97475, 160.282984925, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (303, CAST(N'2023-10-29' AS Date), 2, 759.32246, 160.4950678992, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (304, CAST(N'2023-10-30' AS Date), 2, 676.34376, 162.4422716075, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (305, CAST(N'2023-10-31' AS Date), 2, 706.04475, 167.8505601786, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (306, CAST(N'2023-11-01' AS Date), 2, 703.291365, 157.2088717512, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (307, CAST(N'2023-11-02' AS Date), 2, 740.999145, 163.62525178965, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (308, CAST(N'2023-11-03' AS Date), 2, 690.75925, 157.7901354775, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (309, CAST(N'2023-11-04' AS Date), 2, 729.98646, 171.4643725704, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (310, CAST(N'2023-11-05' AS Date), 2, 711.46925, 162.684558705, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (311, CAST(N'2023-11-06' AS Date), 2, 706.79658, 168.46280118, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (312, CAST(N'2023-11-07' AS Date), 2, 702.881725, 171.217397962, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (313, CAST(N'2023-11-08' AS Date), 2, 719.663, 168.6934691106, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (314, CAST(N'2023-11-09' AS Date), 2, 675.19008, 161.72912385, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (315, CAST(N'2023-11-10' AS Date), 2, 713.2315, 169.8187083944, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (316, CAST(N'2023-11-11' AS Date), 2, 675.94324, 156.2848365204, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (317, CAST(N'2023-11-12' AS Date), 2, 686.84088, 162.3442860501, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (318, CAST(N'2023-11-13' AS Date), 2, 736.13961, 165.87679212, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (319, CAST(N'2023-11-14' AS Date), 2, 747.45753, 172.9168249902, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (320, CAST(N'2023-11-15' AS Date), 2, 670.092, 166.1660637, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (321, CAST(N'2023-11-16' AS Date), 2, 689.82445, 156.273112464, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (322, CAST(N'2023-11-17' AS Date), 2, 708.605, 156.228695328, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (323, CAST(N'2023-11-18' AS Date), 2, 677.856445, 165.5458243218, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (324, CAST(N'2023-11-19' AS Date), 2, 740.553405, 168.076581625, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (325, CAST(N'2023-11-20' AS Date), 2, 703.18525, 164.0635259667, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (326, CAST(N'2023-11-21' AS Date), 2, 726.5505, 161.0779895712, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (327, CAST(N'2023-11-22' AS Date), 2, 698.6965, 165.67491408, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (328, CAST(N'2023-11-23' AS Date), 2, 727.99298, 160.6274510775, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (329, CAST(N'2023-11-24' AS Date), 2, 724.303275, 159.06168585825, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (330, CAST(N'2023-11-25' AS Date), 2, 759.28788, 168.13846035, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (331, CAST(N'2023-11-26' AS Date), 2, 745.30768, 164.9709884, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (332, CAST(N'2023-11-27' AS Date), 2, 671.47368, 154.0494916656, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (333, CAST(N'2023-11-28' AS Date), 2, 699.2304, 168.43440625, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (334, CAST(N'2023-11-29' AS Date), 2, 717.57946, 160.7292432849, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (335, CAST(N'2023-11-30' AS Date), 2, 676.39012, 161.7294329724, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (336, CAST(N'2023-12-01' AS Date), 2, 700.04208, 174.6091625408, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (337, CAST(N'2023-12-02' AS Date), 2, 753.97244, 161.1111508944, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (338, CAST(N'2023-12-03' AS Date), 2, 692.92848, 173.2852445168, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (339, CAST(N'2023-12-04' AS Date), 2, 665.72352, 152.716975488, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (340, CAST(N'2023-12-05' AS Date), 2, 694.3512, 163.2050797125, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (341, CAST(N'2023-12-06' AS Date), 2, 694.754, 159.19593156, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (342, CAST(N'2023-12-07' AS Date), 2, 729.92832, 162.2255672576, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (343, CAST(N'2023-12-08' AS Date), 2, 706.51025, 164.6086927311, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (344, CAST(N'2023-12-09' AS Date), 2, 738.75591, 172.8990125928, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (345, CAST(N'2023-12-10' AS Date), 2, 732.811, 162.789566784, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (346, CAST(N'2023-12-11' AS Date), 2, 748.9287, 172.882701108, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (347, CAST(N'2023-12-12' AS Date), 2, 708.514275, 172.672158555, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (348, CAST(N'2023-12-13' AS Date), 2, 735.4425, 166.2228016995, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (349, CAST(N'2023-12-14' AS Date), 2, 722.77425, 173.564117298, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (350, CAST(N'2023-12-15' AS Date), 2, 731.38182, 164.88960936795, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (351, CAST(N'2023-12-16' AS Date), 2, 743.363505, 166.994425035, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (352, CAST(N'2023-12-17' AS Date), 2, 721.871085, 160.8232527902, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (353, CAST(N'2023-12-18' AS Date), 2, 729.93725, 168.08994993, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (354, CAST(N'2023-12-19' AS Date), 2, 740.4813, 157.080006972, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (355, CAST(N'2023-12-20' AS Date), 2, 692.314875, 169.89237486, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (356, CAST(N'2023-12-21' AS Date), 2, 748.06914, 168.453661572, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (357, CAST(N'2023-12-22' AS Date), 2, 755.89904, 163.7767201364, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (358, CAST(N'2023-12-23' AS Date), 2, 761.76776, 168.27010337, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (359, CAST(N'2023-12-24' AS Date), 2, 700.41923, 157.3696208256, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (360, CAST(N'2023-12-25' AS Date), 2, 691.37922, 166.0977903996, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (361, CAST(N'2023-12-26' AS Date), 2, 727.34375, 164.93406890625, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (362, CAST(N'2023-12-27' AS Date), 2, 736.84546, 160.81496293345, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (363, CAST(N'2023-12-28' AS Date), 2, 697.85898, 162.40887507, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (364, CAST(N'2023-12-29' AS Date), 2, 741.503025, 175.311088524, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (365, CAST(N'2023-12-30' AS Date), 2, 700.644, 164.433848425, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (366, CAST(N'2023-12-31' AS Date), 2, 718.61325, 161.6373908772, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (367, CAST(N'2024-04-01' AS Date), 1, 790.2388, 168.2544, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (368, CAST(N'2024-04-01' AS Date), 2, 729.4512, 182.2756, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (369, CAST(N'2024-04-02' AS Date), 1, 801.4864, 178.255, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (370, CAST(N'2024-04-02' AS Date), 2, 739.8336, 178.255, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (371, CAST(N'2024-04-03' AS Date), 1, 766.8908, 171.5283, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (372, CAST(N'2024-04-03' AS Date), 2, 707.8992, 164.8017, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (373, CAST(N'2024-04-04' AS Date), 1, 731.4916, 176.1591, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (374, CAST(N'2024-04-04' AS Date), 2, 761.3484, 169.2509, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (375, CAST(N'2024-04-05' AS Date), 1, 753.9238, 177.665, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (376, CAST(N'2024-04-05' AS Date), 2, 784.6962, 177.665, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (377, CAST(N'2024-04-06' AS Date), 1, 728.7984, 177.9288, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (378, CAST(N'2024-04-06' AS Date), 2, 789.5316, 170.9512, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (379, CAST(N'2024-04-07' AS Date), 1, 733.505, 162.2832, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (380, CAST(N'2024-04-07' AS Date), 2, 733.505, 175.8068, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (381, CAST(N'2024-04-08' AS Date), 1, 725.4205, 167.2958, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (382, CAST(N'2024-04-08' AS Date), 2, 755.0295, 174.1242, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (383, CAST(N'2024-04-09' AS Date), 1, 747.864, 172.7574, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (384, CAST(N'2024-04-09' AS Date), 2, 718.536, 165.9826, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (385, CAST(N'2024-04-10' AS Date), 1, 787.3476, 181.1056, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (386, CAST(N'2024-04-10' AS Date), 2, 726.7824, 167.1744, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (387, CAST(N'2024-04-11' AS Date), 1, 748.7739, 171.2207, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (388, CAST(N'2024-04-11' AS Date), 2, 779.3361, 178.2093, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (389, CAST(N'2024-04-12' AS Date), 1, 784.9556, 168.6825, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (390, CAST(N'2024-04-12' AS Date), 2, 724.5744, 175.5675, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (391, CAST(N'2024-04-13' AS Date), 1, 781.066, 179.4728, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (392, CAST(N'2024-04-13' AS Date), 2, 720.984, 165.6672, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (393, CAST(N'2024-04-14' AS Date), 1, 765.9435, 175.9602, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (394, CAST(N'2024-04-14' AS Date), 2, 735.9065, 169.0598, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (395, CAST(N'2024-04-15' AS Date), 1, 756.6208, 174.2884, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (396, CAST(N'2024-04-15' AS Date), 2, 698.4192, 160.8816, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (397, CAST(N'2024-04-16' AS Date), 1, 724.7835, 165.7131, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (398, CAST(N'2024-04-16' AS Date), 2, 754.3665, 172.4769, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (399, CAST(N'2024-04-17' AS Date), 1, 714.6384, 162.936, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (400, CAST(N'2024-04-17' AS Date), 2, 774.1916, 176.514, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (401, CAST(N'2024-04-18' AS Date), 1, 784.7472, 172.9749, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (402, CAST(N'2024-04-18' AS Date), 2, 753.9728, 180.0351, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (403, CAST(N'2024-04-19' AS Date), 1, 722.7936, 165.12, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (404, CAST(N'2024-04-19' AS Date), 2, 783.0264, 178.88, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (405, CAST(N'2024-04-20' AS Date), 1, 768.9864, 169.985, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (406, CAST(N'2024-04-20' AS Date), 2, 709.8336, 169.985, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (407, CAST(N'2024-04-21' AS Date), 1, 712.3728, 165.048, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (408, CAST(N'2024-04-21' AS Date), 2, 771.7372, 178.802, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (409, CAST(N'2024-04-22' AS Date), 1, 799.0528, 180.2187, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (410, CAST(N'2024-04-22' AS Date), 2, 737.5872, 173.1513, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (411, CAST(N'2024-04-23' AS Date), 1, 739.9686, 179.1192, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (412, CAST(N'2024-04-23' AS Date), 2, 770.1714, 165.3408, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (413, CAST(N'2024-04-24' AS Date), 1, 773.65, 180.8256, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (414, CAST(N'2024-04-24' AS Date), 2, 773.65, 173.7344, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (415, CAST(N'2024-04-25' AS Date), 1, 724.752, 177.5106, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (416, CAST(N'2024-04-25' AS Date), 2, 785.148, 170.5494, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (417, CAST(N'2024-04-26' AS Date), 1, 739.4198, 169.4812, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (418, CAST(N'2024-04-26' AS Date), 2, 769.6002, 176.3988, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (419, CAST(N'2024-04-27' AS Date), 1, 768.9864, 169.665, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (420, CAST(N'2024-04-27' AS Date), 2, 709.8336, 169.665, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (421, CAST(N'2024-04-28' AS Date), 1, 758.1303, 171.315, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (422, CAST(N'2024-04-28' AS Date), 2, 728.3997, 171.315, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (423, CAST(N'2024-04-29' AS Date), 1, 716.6201, 162.6048, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (424, CAST(N'2024-04-29' AS Date), 2, 745.8699, 176.1552, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (425, CAST(N'2024-04-30' AS Date), 1, 730.42, 171.8496, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (426, CAST(N'2024-04-30' AS Date), 2, 730.42, 165.1104, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (427, CAST(N'2024-05-01' AS Date), 1, 743.4432, 179.16, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (428, CAST(N'2024-05-01' AS Date), 2, 805.3968, 179.16, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (429, CAST(N'2024-05-02' AS Date), 1, 724.1808, 169.1578, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (430, CAST(N'2024-05-02' AS Date), 2, 784.5292, 176.0622, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (431, CAST(N'2024-05-03' AS Date), 1, 776.3985, 179.979, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (432, CAST(N'2024-05-03' AS Date), 2, 745.9515, 172.921, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (433, CAST(N'2024-05-04' AS Date), 1, 754.3563, 163.152, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (434, CAST(N'2024-05-04' AS Date), 2, 724.7737, 176.748, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (435, CAST(N'2024-05-05' AS Date), 1, 754.795, 167.928, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (436, CAST(N'2024-05-05' AS Date), 2, 754.795, 181.922, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (437, CAST(N'2024-05-06' AS Date), 1, 725.89, 159.3792, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (438, CAST(N'2024-05-06' AS Date), 2, 725.89, 172.6608, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (439, CAST(N'2024-05-07' AS Date), 1, 781.1364, 169.5984, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (440, CAST(N'2024-05-07' AS Date), 2, 750.5036, 183.7316, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (441, CAST(N'2024-05-08' AS Date), 1, 754.965, 173.53, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (442, CAST(N'2024-05-08' AS Date), 2, 754.965, 173.53, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (443, CAST(N'2024-05-09' AS Date), 1, 731.2128, 183.0088, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (444, CAST(N'2024-05-09' AS Date), 2, 792.1472, 168.9312, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (445, CAST(N'2024-05-10' AS Date), 1, 696.7584, 162.6898, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (446, CAST(N'2024-05-10' AS Date), 2, 754.8216, 169.3302, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (447, CAST(N'2024-05-11' AS Date), 1, 754.415, 172.82, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (448, CAST(N'2024-05-11' AS Date), 2, 754.415, 172.82, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (449, CAST(N'2024-05-12' AS Date), 1, 755.65, 181.09, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (450, CAST(N'2024-05-12' AS Date), 2, 755.65, 167.16, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (451, CAST(N'2024-05-13' AS Date), 1, 716.1984, 165.5568, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (452, CAST(N'2024-05-13' AS Date), 2, 775.8816, 179.3532, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (453, CAST(N'2024-05-14' AS Date), 1, 738.9151, 181.0224, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (454, CAST(N'2024-05-14' AS Date), 2, 769.0749, 167.0976, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (455, CAST(N'2024-05-15' AS Date), 1, 764.2336, 162.0288, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (456, CAST(N'2024-05-15' AS Date), 2, 705.4464, 175.5312, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (457, CAST(N'2024-05-16' AS Date), 1, 773.2824, 181.1056, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (458, CAST(N'2024-05-16' AS Date), 2, 742.9576, 167.1744, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (459, CAST(N'2024-05-17' AS Date), 1, 759.0585, 170.81, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (460, CAST(N'2024-05-17' AS Date), 2, 729.2915, 170.81, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (461, CAST(N'2024-05-18' AS Date), 1, 697.8048, 159.1536, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (462, CAST(N'2024-05-18' AS Date), 2, 755.9552, 172.4164, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (463, CAST(N'2024-05-19' AS Date), 1, 737.435, 161.9856, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (464, CAST(N'2024-05-19' AS Date), 2, 737.435, 175.4844, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (465, CAST(N'2024-05-20' AS Date), 1, 758.05, 180.362, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (466, CAST(N'2024-05-20' AS Date), 2, 758.05, 166.488, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (467, CAST(N'2024-05-21' AS Date), 1, 778.6884, 175.795, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (468, CAST(N'2024-05-21' AS Date), 2, 748.1516, 175.795, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (469, CAST(N'2024-05-22' AS Date), 1, 705.5568, 161.3472, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (470, CAST(N'2024-05-22' AS Date), 2, 764.3532, 174.7928, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (471, CAST(N'2024-05-23' AS Date), 1, 725.3472, 169.1137, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (472, CAST(N'2024-05-23' AS Date), 2, 785.7928, 176.0163, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (473, CAST(N'2024-05-24' AS Date), 1, 735.7392, 179.7189, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (474, CAST(N'2024-05-24' AS Date), 2, 797.0508, 172.6711, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (475, CAST(N'2024-05-25' AS Date), 1, 779.9688, 175.593, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (476, CAST(N'2024-05-25' AS Date), 2, 719.9712, 168.707, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (477, CAST(N'2024-05-26' AS Date), 1, 780.4428, 184.0072, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (478, CAST(N'2024-05-26' AS Date), 2, 749.8372, 169.8528, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (479, CAST(N'2024-05-27' AS Date), 1, 743.7534, 171.2937, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (480, CAST(N'2024-05-27' AS Date), 2, 714.5866, 164.5763, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (481, CAST(N'2024-05-28' AS Date), 1, 778.6527, 168.8784, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (482, CAST(N'2024-05-28' AS Date), 2, 748.1173, 182.9516, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (483, CAST(N'2024-05-29' AS Date), 1, 733.05, 170.4879, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (484, CAST(N'2024-05-29' AS Date), 2, 733.05, 163.8021, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (485, CAST(N'2024-05-30' AS Date), 1, 779.8752, 170.2995, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (486, CAST(N'2024-05-30' AS Date), 2, 719.8848, 177.2505, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (487, CAST(N'2024-05-31' AS Date), 1, 766.3084, 168.645, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (488, CAST(N'2024-05-31' AS Date), 2, 707.3616, 168.645, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (489, CAST(N'2024-06-01' AS Date), 1, 772.096, 165.3408, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (490, CAST(N'2024-06-01' AS Date), 2, 712.704, 179.1192, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (491, CAST(N'2024-06-02' AS Date), 1, 757.8792, 167.905, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (492, CAST(N'2024-06-02' AS Date), 2, 699.5808, 167.905, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (493, CAST(N'2024-06-03' AS Date), 1, 714.936, 179.2544, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (494, CAST(N'2024-06-03' AS Date), 2, 774.514, 165.4656, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (495, CAST(N'2024-06-04' AS Date), 1, 737.5776, 168.5088, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (496, CAST(N'2024-06-04' AS Date), 2, 799.0424, 182.5512, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (497, CAST(N'2024-06-05' AS Date), 1, 774.875, 186.914, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (498, CAST(N'2024-06-05' AS Date), 2, 774.875, 172.536, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (499, CAST(N'2024-06-06' AS Date), 1, 768.3099, 164.9568, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (500, CAST(N'2024-06-06' AS Date), 2, 738.1801, 178.7032, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (501, CAST(N'2024-06-07' AS Date), 1, 751.34, 168.8344, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (502, CAST(N'2024-06-07' AS Date), 2, 751.34, 175.7256, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (503, CAST(N'2024-06-08' AS Date), 1, 741.6528, 172.6515, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (504, CAST(N'2024-06-08' AS Date), 2, 803.4572, 179.6985, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (505, CAST(N'2024-06-09' AS Date), 1, 768.927, 176.7711, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (506, CAST(N'2024-06-09' AS Date), 2, 738.773, 169.8389, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (507, CAST(N'2024-06-10' AS Date), 1, 716.2477, 163.4787, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (508, CAST(N'2024-06-10' AS Date), 2, 745.4823, 170.1513, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (509, CAST(N'2024-06-11' AS Date), 1, 769.58, 181.2795, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (510, CAST(N'2024-06-11' AS Date), 2, 769.58, 174.1705, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (511, CAST(N'2024-06-12' AS Date), 1, 722.2649, 172.4106, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (512, CAST(N'2024-06-12' AS Date), 2, 751.7451, 165.6494, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (513, CAST(N'2024-06-13' AS Date), 1, 758.9514, 165.0672, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (514, CAST(N'2024-06-13' AS Date), 2, 729.1886, 178.8228, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (515, CAST(N'2024-06-14' AS Date), 1, 784.9712, 170.9414, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (516, CAST(N'2024-06-14' AS Date), 2, 724.5888, 177.9186, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (517, CAST(N'2024-06-15' AS Date), 1, 712.344, 165.9434, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (518, CAST(N'2024-06-15' AS Date), 2, 771.706, 172.7166, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (519, CAST(N'2024-06-16' AS Date), 1, 763.878, 164.0544, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (520, CAST(N'2024-06-16' AS Date), 2, 733.922, 177.7256, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (521, CAST(N'2024-06-17' AS Date), 1, 730.0272, 169.0608, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (522, CAST(N'2024-06-17' AS Date), 2, 790.8628, 183.1492, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (523, CAST(N'2024-06-18' AS Date), 1, 738.9592, 173.55, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (524, CAST(N'2024-06-18' AS Date), 2, 769.1208, 173.55, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (525, CAST(N'2024-06-19' AS Date), 1, 712.7856, 163.008, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (526, CAST(N'2024-06-19' AS Date), 2, 772.1844, 176.592, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (527, CAST(N'2024-06-20' AS Date), 1, 787.9716, 173.685, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (528, CAST(N'2024-06-20' AS Date), 2, 727.3584, 173.685, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (529, CAST(N'2024-06-21' AS Date), 1, 803.322, 180.336, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (530, CAST(N'2024-06-21' AS Date), 2, 741.528, 173.264, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (531, CAST(N'2024-06-22' AS Date), 1, 735.6192, 176.525, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (532, CAST(N'2024-06-22' AS Date), 2, 796.9208, 176.525, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (533, CAST(N'2024-06-23' AS Date), 1, 782.0187, 175.63, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (534, CAST(N'2024-06-23' AS Date), 2, 751.3513, 175.63, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (535, CAST(N'2024-06-24' AS Date), 1, 781.32, 181.1622, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (536, CAST(N'2024-06-24' AS Date), 2, 750.68, 174.0578, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (537, CAST(N'2024-06-25' AS Date), 1, 707.8848, 162.0864, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (538, CAST(N'2024-06-25' AS Date), 2, 766.8752, 175.5936, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (539, CAST(N'2024-06-26' AS Date), 1, 748.1292, 166.5069, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (540, CAST(N'2024-06-26' AS Date), 2, 718.7908, 173.3031, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (541, CAST(N'2024-06-27' AS Date), 1, 731.5014, 164.688, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (542, CAST(N'2024-06-27' AS Date), 2, 761.3586, 178.412, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (543, CAST(N'2024-06-28' AS Date), 1, 732.2854, 167.237, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (544, CAST(N'2024-06-28' AS Date), 2, 762.1746, 174.063, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (545, CAST(N'2024-06-29' AS Date), 1, 725.7024, 169.0843, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (546, CAST(N'2024-06-29' AS Date), 2, 786.1776, 175.9857, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (547, CAST(N'2024-06-30' AS Date), 1, 739.4835, 167.1264, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (548, CAST(N'2024-06-30' AS Date), 2, 769.6665, 181.0536, 1)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (549, CAST(N'2024-10-01' AS Date), 1, 773.942, 176.6254, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (550, CAST(N'2024-10-01' AS Date), 2, 714.408, 183.8346, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (551, CAST(N'2024-10-02' AS Date), 1, 727.9248, 183.5031, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (552, CAST(N'2024-10-02' AS Date), 2, 788.5852, 176.3069, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (553, CAST(N'2024-10-03' AS Date), 1, 708.696, 190.4604, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (554, CAST(N'2024-10-03' AS Date), 2, 767.754, 175.8096, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (555, CAST(N'2024-10-04' AS Date), 1, 798.6888, 170.5968, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (556, CAST(N'2024-10-04' AS Date), 2, 737.2512, 184.8132, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (557, CAST(N'2024-10-05' AS Date), 1, 741.945, 191.5108, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (558, CAST(N'2024-10-05' AS Date), 2, 741.945, 176.7792, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (559, CAST(N'2024-10-06' AS Date), 1, 749.6541, 174.783, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (560, CAST(N'2024-10-06' AS Date), 2, 720.2559, 181.917, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (561, CAST(N'2024-10-07' AS Date), 1, 740.9382, 182.5668, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (562, CAST(N'2024-10-07' AS Date), 2, 711.8818, 168.5232, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (563, CAST(N'2024-10-08' AS Date), 1, 721.8337, 179.1375, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (564, CAST(N'2024-10-08' AS Date), 2, 751.2963, 172.1125, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (565, CAST(N'2024-10-09' AS Date), 1, 715.464, 181.2795, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (566, CAST(N'2024-10-09' AS Date), 2, 775.086, 174.1705, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (567, CAST(N'2024-10-10' AS Date), 1, 740.9892, 174.9153, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (568, CAST(N'2024-10-10' AS Date), 2, 711.9308, 182.0547, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (569, CAST(N'2024-10-11' AS Date), 1, 752.14, 168.2544, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (570, CAST(N'2024-10-11' AS Date), 2, 752.14, 182.2756, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (571, CAST(N'2024-10-12' AS Date), 1, 766.5504, 179.265, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (572, CAST(N'2024-10-12' AS Date), 2, 736.4896, 179.265, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (573, CAST(N'2024-10-13' AS Date), 1, 772.446, 186.784, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (574, CAST(N'2024-10-13' AS Date), 2, 742.154, 172.416, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (575, CAST(N'2024-10-14' AS Date), 1, 744.898, 178.0121, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (576, CAST(N'2024-10-14' AS Date), 2, 775.302, 185.2779, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (577, CAST(N'2024-10-15' AS Date), 1, 738.8208, 187.2669, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (578, CAST(N'2024-10-15' AS Date), 2, 800.3892, 179.9231, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (579, CAST(N'2024-10-16' AS Date), 1, 757.001, 193.336, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (580, CAST(N'2024-10-16' AS Date), 2, 787.899, 178.464, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (581, CAST(N'2024-10-17' AS Date), 1, 765.4348, 182.4907, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (582, CAST(N'2024-10-17' AS Date), 2, 706.5552, 189.9393, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (583, CAST(N'2024-10-18' AS Date), 1, 728.8505, 176.38, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (584, CAST(N'2024-10-18' AS Date), 2, 758.5995, 176.38, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (585, CAST(N'2024-10-19' AS Date), 1, 729.315, 182.5341, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (586, CAST(N'2024-10-19' AS Date), 2, 729.315, 175.3759, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (587, CAST(N'2024-10-20' AS Date), 1, 731.4769, 167.2944, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (588, CAST(N'2024-10-20' AS Date), 2, 761.3331, 181.2356, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (589, CAST(N'2024-10-21' AS Date), 1, 742.11, 175.469, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (590, CAST(N'2024-10-21' AS Date), 2, 742.11, 182.631, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (591, CAST(N'2024-10-22' AS Date), 1, 804.1436, 172.3872, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (592, CAST(N'2024-10-22' AS Date), 2, 742.2864, 186.7528, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (593, CAST(N'2024-10-23' AS Date), 1, 761.3229, 188.7459, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (594, CAST(N'2024-10-23' AS Date), 2, 731.4671, 181.3441, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (595, CAST(N'2024-10-24' AS Date), 1, 801.19, 172.4544, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (596, CAST(N'2024-10-24' AS Date), 2, 739.56, 186.8256, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (597, CAST(N'2024-10-25' AS Date), 1, 748.9013, 188.5623, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (598, CAST(N'2024-10-25' AS Date), 2, 779.4687, 181.1677, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (599, CAST(N'2024-10-26' AS Date), 1, 736.3296, 183.815, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (600, CAST(N'2024-10-26' AS Date), 2, 797.6904, 183.815, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (601, CAST(N'2024-10-27' AS Date), 1, 779.584, 175.5984, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (602, CAST(N'2024-10-27' AS Date), 2, 719.616, 190.2316, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (603, CAST(N'2024-10-28' AS Date), 1, 732.605, 186.8256, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (604, CAST(N'2024-10-28' AS Date), 2, 732.605, 172.4544, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (605, CAST(N'2024-10-29' AS Date), 1, 799.2868, 183.3988, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (606, CAST(N'2024-10-29' AS Date), 2, 737.8032, 169.2912, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (607, CAST(N'2024-10-30' AS Date), 1, 741.605, 185.79, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (608, CAST(N'2024-10-30' AS Date), 2, 741.605, 185.79, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (609, CAST(N'2024-10-31' AS Date), 1, 758.0691, 180.183, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (610, CAST(N'2024-10-31' AS Date), 2, 728.3409, 173.117, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (611, CAST(N'2024-11-01' AS Date), 1, 725.1984, 180.8664, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (612, CAST(N'2024-11-01' AS Date), 2, 785.6316, 173.7736, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (613, CAST(N'2024-11-02' AS Date), 1, 779.9991, 189.5556, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (614, CAST(N'2024-11-02' AS Date), 2, 749.4109, 174.9744, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (615, CAST(N'2024-11-03' AS Date), 1, 756.1996, 183.585, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (616, CAST(N'2024-11-03' AS Date), 2, 698.0304, 183.585, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (617, CAST(N'2024-11-04' AS Date), 1, 783.4736, 171.2158, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (618, CAST(N'2024-11-04' AS Date), 2, 723.2064, 178.2042, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (619, CAST(N'2024-11-05' AS Date), 1, 748.915, 173.7792, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (620, CAST(N'2024-11-05' AS Date), 2, 748.915, 188.2608, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (621, CAST(N'2024-11-06' AS Date), 1, 759.18, 175.1897, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (622, CAST(N'2024-11-06' AS Date), 2, 759.18, 182.3403, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (623, CAST(N'2024-11-07' AS Date), 1, 754.975, 189.2384, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (624, CAST(N'2024-11-07' AS Date), 2, 754.975, 174.6816, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (625, CAST(N'2024-11-08' AS Date), 1, 772.6908, 172.6128, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (626, CAST(N'2024-11-08' AS Date), 2, 742.3892, 186.9972, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (627, CAST(N'2024-11-09' AS Date), 1, 725.5332, 173.9616, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (628, CAST(N'2024-11-09' AS Date), 2, 755.1468, 188.4584, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (629, CAST(N'2024-11-10' AS Date), 1, 765.7854, 177.785, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (630, CAST(N'2024-11-10' AS Date), 2, 735.7546, 177.785, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (631, CAST(N'2024-11-11' AS Date), 1, 740.5608, 182.7177, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (632, CAST(N'2024-11-11' AS Date), 2, 711.5192, 175.5523, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (633, CAST(N'2024-11-12' AS Date), 1, 722.9904, 168.048, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (634, CAST(N'2024-11-12' AS Date), 2, 783.2396, 182.052, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (635, CAST(N'2024-11-13' AS Date), 1, 790.0776, 181.6, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (636, CAST(N'2024-11-13' AS Date), 2, 729.3024, 181.6, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (637, CAST(N'2024-11-14' AS Date), 1, 740.5152, 175.272, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (638, CAST(N'2024-11-14' AS Date), 2, 802.2248, 189.878, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (639, CAST(N'2024-11-15' AS Date), 1, 720.055, 193.2632, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (640, CAST(N'2024-11-15' AS Date), 2, 749.445, 178.3968, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (641, CAST(N'2024-11-16' AS Date), 1, 755.769, 171.5098, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (642, CAST(N'2024-11-16' AS Date), 2, 726.131, 178.5102, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (643, CAST(N'2024-11-17' AS Date), 1, 775.736, 173.9206, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (644, CAST(N'2024-11-17' AS Date), 2, 716.064, 181.0194, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (645, CAST(N'2024-11-18' AS Date), 1, 757.2188, 182.5596, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (646, CAST(N'2024-11-18' AS Date), 2, 698.9712, 175.4004, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (647, CAST(N'2024-11-19' AS Date), 1, 748.9601, 182.0936, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (648, CAST(N'2024-11-19' AS Date), 2, 779.5299, 168.0864, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (649, CAST(N'2024-11-20' AS Date), 1, 725.3911, 181.2461, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (650, CAST(N'2024-11-20' AS Date), 2, 754.9989, 188.6439, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (651, CAST(N'2024-11-21' AS Date), 1, 734.1984, 175.0231, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (652, CAST(N'2024-11-21' AS Date), 2, 795.3816, 182.1669, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (653, CAST(N'2024-11-22' AS Date), 1, 750.1794, 183.955, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (654, CAST(N'2024-11-22' AS Date), 2, 720.7606, 183.955, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (655, CAST(N'2024-11-23' AS Date), 1, 736.835, 173.6756, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (656, CAST(N'2024-11-23' AS Date), 2, 736.835, 180.7644, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (657, CAST(N'2024-11-24' AS Date), 1, 762.4245, 180.3156, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (658, CAST(N'2024-11-24' AS Date), 2, 732.5255, 173.2444, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (659, CAST(N'2024-11-25' AS Date), 1, 768.51, 170.9136, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (660, CAST(N'2024-11-25' AS Date), 2, 768.51, 185.1564, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (661, CAST(N'2024-11-26' AS Date), 1, 739.2728, 184.755, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (662, CAST(N'2024-11-26' AS Date), 2, 769.4472, 184.755, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (663, CAST(N'2024-11-27' AS Date), 1, 736.265, 177.3163, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (664, CAST(N'2024-11-27' AS Date), 2, 736.265, 184.5537, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (665, CAST(N'2024-11-28' AS Date), 1, 766.7, 168.8736, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (666, CAST(N'2024-11-28' AS Date), 2, 766.7, 182.9464, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (667, CAST(N'2024-11-29' AS Date), 1, 711.7691, 183.35, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (668, CAST(N'2024-11-29' AS Date), 2, 740.8209, 183.35, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (669, CAST(N'2024-11-30' AS Date), 1, 697.4592, 182.0988, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (670, CAST(N'2024-11-30' AS Date), 2, 755.5808, 168.0912, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (671, CAST(N'2024-12-01' AS Date), 1, 752.2382, 167.7168, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (672, CAST(N'2024-12-01' AS Date), 2, 782.9418, 181.6932, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (673, CAST(N'2024-12-02' AS Date), 1, 778.3926, 183.03, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (674, CAST(N'2024-12-02' AS Date), 2, 747.8674, 183.03, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (675, CAST(N'2024-12-03' AS Date), 1, 729.3984, 175.5552, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (676, CAST(N'2024-12-03' AS Date), 2, 790.1816, 190.1848, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (677, CAST(N'2024-12-04' AS Date), 1, 729.96, 177.9729, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (678, CAST(N'2024-12-04' AS Date), 2, 729.96, 185.2371, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (679, CAST(N'2024-12-05' AS Date), 1, 746.123, 166.8384, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (680, CAST(N'2024-12-05' AS Date), 2, 776.577, 180.7416, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (681, CAST(N'2024-12-06' AS Date), 1, 716.6936, 184.8852, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (682, CAST(N'2024-12-06' AS Date), 2, 745.9464, 177.6348, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (683, CAST(N'2024-12-07' AS Date), 1, 768.3456, 167.1408, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (684, CAST(N'2024-12-07' AS Date), 2, 738.2144, 181.0692, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (685, CAST(N'2024-12-08' AS Date), 1, 773.4428, 183.3297, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (686, CAST(N'2024-12-08' AS Date), 2, 713.9472, 176.1403, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (687, CAST(N'2024-12-09' AS Date), 1, 762.39, 179.31, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (688, CAST(N'2024-12-09' AS Date), 2, 762.39, 179.31, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (689, CAST(N'2024-12-10' AS Date), 1, 802.2352, 190.9492, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (690, CAST(N'2024-12-10' AS Date), 2, 740.5248, 176.2608, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (691, CAST(N'2024-12-11' AS Date), 1, 742.8645, 186.62, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (692, CAST(N'2024-12-11' AS Date), 2, 773.1855, 186.62, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (693, CAST(N'2024-12-12' AS Date), 1, 791.466, 189.7168, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (694, CAST(N'2024-12-12' AS Date), 2, 730.584, 175.1232, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (695, CAST(N'2024-12-13' AS Date), 1, 743.184, 183.855, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (696, CAST(N'2024-12-13' AS Date), 2, 805.116, 183.855, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (697, CAST(N'2024-12-14' AS Date), 1, 776.0313, 183.5883, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (698, CAST(N'2024-12-14' AS Date), 2, 745.5987, 191.0817, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (699, CAST(N'2024-12-15' AS Date), 1, 740.265, 176.0592, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (700, CAST(N'2024-12-15' AS Date), 2, 740.265, 190.7308, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (701, CAST(N'2024-12-16' AS Date), 1, 797.8308, 174.9741, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (702, CAST(N'2024-12-16' AS Date), 2, 736.4592, 182.1159, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (703, CAST(N'2024-12-17' AS Date), 1, 759.8643, 178.128, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (704, CAST(N'2024-12-17' AS Date), 2, 730.0657, 192.972, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (705, CAST(N'2024-12-18' AS Date), 1, 799.0892, 170.6256, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (706, CAST(N'2024-12-18' AS Date), 2, 737.6208, 184.8444, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (707, CAST(N'2024-12-19' AS Date), 1, 734.4855, 191.2612, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (708, CAST(N'2024-12-19' AS Date), 2, 764.4645, 176.5488, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (709, CAST(N'2024-12-20' AS Date), 1, 728.7525, 176.5029, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (710, CAST(N'2024-12-20' AS Date), 2, 758.4975, 183.7071, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (711, CAST(N'2024-12-21' AS Date), 1, 787.4412, 170.8224, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (712, CAST(N'2024-12-21' AS Date), 2, 726.8688, 185.0576, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (713, CAST(N'2024-12-22' AS Date), 1, 765.08, 177.6397, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (714, CAST(N'2024-12-22' AS Date), 2, 765.08, 184.8903, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (715, CAST(N'2024-12-23' AS Date), 1, 786.4404, 182.135, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (716, CAST(N'2024-12-23' AS Date), 2, 755.5996, 182.135, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (717, CAST(N'2024-12-24' AS Date), 1, 767.3766, 188.8887, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (718, CAST(N'2024-12-24' AS Date), 2, 737.2834, 181.4813, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (719, CAST(N'2024-12-25' AS Date), 1, 772.3248, 189.3476, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (720, CAST(N'2024-12-25' AS Date), 2, 712.9152, 174.7824, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (721, CAST(N'2024-12-26' AS Date), 1, 735, 176.975, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (722, CAST(N'2024-12-26' AS Date), 2, 796.25, 176.975, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (723, CAST(N'2024-12-27' AS Date), 1, 730.8791, 189.7532, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (724, CAST(N'2024-12-27' AS Date), 2, 760.7109, 175.1568, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (725, CAST(N'2024-12-28' AS Date), 1, 734.5884, 174.7242, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (726, CAST(N'2024-12-28' AS Date), 2, 764.5716, 181.8558, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (727, CAST(N'2024-12-29' AS Date), 1, 765.225, 184.6047, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (728, CAST(N'2024-12-29' AS Date), 2, 765.225, 177.3653, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (729, CAST(N'2024-12-30' AS Date), 1, 752.885, 186.2673, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (730, CAST(N'2024-12-30' AS Date), 2, 783.615, 178.9627, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (731, CAST(N'2024-12-31' AS Date), 1, 741.3063, 181.7557, 2)
GO
INSERT [grupo03].[produccion_diaria] ([ID_Produccion], [Fecha_Produccion], [ID_Planta], [Cantidad_Procesada], [Cantidad_Producida], [ID_Producto]) VALUES (732, CAST(N'2024-12-31' AS Date), 2, 771.5637, 189.1743, 2)
GO
SET IDENTITY_INSERT [grupo03].[produccion_diaria] OFF
GO
SET IDENTITY_INSERT [grupo03].[producto] ON 
GO
INSERT [grupo03].[producto] ([ID_Producto], [Nombre], [ID_Materia_Prima], [Proceso], [Precio_Tn]) VALUES (1, N'Harina de Pescado', 1, N'Enfriamiento', 1100)
GO
INSERT [grupo03].[producto] ([ID_Producto], [Nombre], [ID_Materia_Prima], [Proceso], [Precio_Tn]) VALUES (2, N'Harina de Pescado P2', 1, N'Enfriamiento Plus', 1100)
GO
SET IDENTITY_INSERT [grupo03].[producto] OFF
GO
SET IDENTITY_INSERT [grupo03].[venta] ON 
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1, CAST(N'2023-04-01' AS Date), 95.4292292208864, 1, 1, 104972.152142975)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (2, CAST(N'2023-04-01' AS Date), 62.9282482696013, 2, 1, 69221.0730965614)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (3, CAST(N'2023-04-01' AS Date), 155.736533871041, 3, 1, 171310.187258145)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (4, CAST(N'2023-04-02' AS Date), 100.935592006867, 1, 1, 111029.151207554)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (5, CAST(N'2023-04-02' AS Date), 66.746213164818, 6, 1, 73420.8344812998)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (6, CAST(N'2023-04-02' AS Date), 168.595492639266, 3, 1, 185455.041903193)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (7, CAST(N'2023-04-03' AS Date), 100.984299504101, 1, 1, 111082.729454511)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (8, CAST(N'2023-04-03' AS Date), 66.7800480827106, 7, 1, 73458.0528909816)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (9, CAST(N'2023-04-03' AS Date), 165.056957779946, 8, 1, 181562.65355794)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (10, CAST(N'2023-04-04' AS Date), 101.944693750187, 4, 1, 112139.163125205)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (11, CAST(N'2023-04-04' AS Date), 65.9895715011944, 6, 1, 72588.5286513139)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (12, CAST(N'2023-04-04' AS Date), 169.840466000063, 10, 1, 186824.512600069)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (13, CAST(N'2023-04-05' AS Date), 95.0034888389468, 1, 1, 104503.837722841)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (14, CAST(N'2023-04-05' AS Date), 63.6347497017262, 2, 1, 69998.2246718988)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (15, CAST(N'2023-04-05' AS Date), 159.850855360881, 10, 1, 175835.940896969)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (16, CAST(N'2023-04-06' AS Date), 100.002087701552, 1, 1, 110002.296471707)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (17, CAST(N'2023-04-06' AS Date), 66.26693512999, 7, 1, 72893.628642989)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (18, CAST(N'2023-04-06' AS Date), 170.188473750023, 3, 1, 187207.321125025)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (19, CAST(N'2023-04-07' AS Date), 99.5827455296375, 5, 1, 109541.020082601)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (20, CAST(N'2023-04-07' AS Date), 65.3675408695388, 2, 1, 71904.2949564927)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (21, CAST(N'2023-04-07' AS Date), 161.212269526598, 9, 1, 177333.496479258)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (22, CAST(N'2023-04-08' AS Date), 95.6866933077737, 1, 1, 105255.362638551)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (23, CAST(N'2023-04-08' AS Date), 63.561572630407, 6, 1, 69917.7298934478)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (24, CAST(N'2023-04-08' AS Date), 155.237408275207, 8, 1, 170761.149102727)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (25, CAST(N'2023-04-09' AS Date), 91.7405746900531, 4, 1, 100914.632159058)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (26, CAST(N'2023-04-09' AS Date), 60.5734782106522, 7, 1, 66630.8260317174)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (27, CAST(N'2023-04-09' AS Date), 149.477345806464, 3, 1, 164425.08038711)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (28, CAST(N'2023-04-10' AS Date), 94.8708283553082, 5, 1, 104357.911190839)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (29, CAST(N'2023-04-10' AS Date), 63.7650021119182, 6, 1, 70141.50232311)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (30, CAST(N'2023-04-10' AS Date), 161.289469410171, 9, 1, 177418.416351188)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (31, CAST(N'2023-04-11' AS Date), 93.9550710554308, 1, 1, 103350.578160974)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (32, CAST(N'2023-04-11' AS Date), 62.7720124318085, 2, 1, 69049.2136749893)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (33, CAST(N'2023-04-11' AS Date), 160.393025709727, 3, 1, 176432.3282807)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (34, CAST(N'2023-04-12' AS Date), 99.0067354808905, 1, 1, 108907.40902898)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (35, CAST(N'2023-04-12' AS Date), 67.8884105336177, 7, 1, 74677.2515869795)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (36, CAST(N'2023-04-12' AS Date), 167.298843203013, 10, 1, 184028.727523315)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (37, CAST(N'2023-04-13' AS Date), 97.8516733795425, 4, 1, 107636.840717497)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (38, CAST(N'2023-04-13' AS Date), 65.444988744751, 6, 1, 71989.4876192261)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (39, CAST(N'2023-04-13' AS Date), 162.411736922105, 8, 1, 178652.910614316)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (40, CAST(N'2023-04-14' AS Date), 96.7712356243244, 1, 1, 106448.359186757)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (41, CAST(N'2023-04-14' AS Date), 63.5506840081684, 2, 1, 69905.7524089853)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (42, CAST(N'2023-04-14' AS Date), 159.647488480193, 3, 1, 175612.237328212)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (43, CAST(N'2023-04-15' AS Date), 96.675141104855, 1, 1, 106342.655215341)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (44, CAST(N'2023-04-15' AS Date), 65.1926369563123, 6, 1, 71711.9006519436)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (45, CAST(N'2023-04-15' AS Date), 160.500973456096, 3, 1, 176551.070801706)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (46, CAST(N'2023-04-16' AS Date), 100.872248582477, 5, 1, 110959.473440724)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (47, CAST(N'2023-04-16' AS Date), 65.9279893913784, 2, 1, 72520.7883305163)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (48, CAST(N'2023-04-16' AS Date), 166.857490518791, 3, 1, 183543.23957067)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (49, CAST(N'2023-04-17' AS Date), 93.3797430344167, 1, 1, 102717.717337858)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (50, CAST(N'2023-04-17' AS Date), 60.2129896645872, 7, 1, 66234.2886310459)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (51, CAST(N'2023-04-17' AS Date), 151.400632611833, 10, 1, 166540.695873016)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (52, CAST(N'2023-04-18' AS Date), 102.68989983734, 4, 1, 112958.889821074)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (53, CAST(N'2023-04-18' AS Date), 69.0291600069294, 2, 1, 75932.0760076223)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (54, CAST(N'2023-04-18' AS Date), 168.650788653293, 8, 1, 185515.867518623)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (55, CAST(N'2023-04-19' AS Date), 96.2049782827287, 1, 1, 105825.476111002)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (56, CAST(N'2023-04-19' AS Date), 64.6122767592522, 6, 1, 71073.5044351774)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (57, CAST(N'2023-04-19' AS Date), 165.428171019689, 10, 1, 181970.988121657)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (58, CAST(N'2023-04-20' AS Date), 91.3840783609945, 1, 1, 100522.486197094)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (59, CAST(N'2023-04-20' AS Date), 61.1200194847039, 7, 1, 67232.0214331743)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (60, CAST(N'2023-04-20' AS Date), 153.046674433477, 9, 1, 168351.341876825)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (61, CAST(N'2023-04-21' AS Date), 97.1696231873132, 4, 1, 106886.585506045)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (62, CAST(N'2023-04-21' AS Date), 66.4492616464683, 6, 1, 73094.1878111152)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (63, CAST(N'2023-04-21' AS Date), 166.669720824629, 3, 1, 183336.692907092)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (64, CAST(N'2023-04-22' AS Date), 95.6209902291948, 1, 1, 105183.089252114)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (65, CAST(N'2023-04-22' AS Date), 64.4490495646986, 2, 1, 70893.9545211685)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (66, CAST(N'2023-04-22' AS Date), 156.76099859159, 8, 1, 172437.098450749)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (67, CAST(N'2023-04-23' AS Date), 97.9407147940781, 5, 1, 107734.786273486)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (68, CAST(N'2023-04-23' AS Date), 66.0228638757321, 6, 1, 72625.1502633053)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (69, CAST(N'2023-04-23' AS Date), 165.391588135667, 10, 1, 181930.746949233)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (70, CAST(N'2023-04-24' AS Date), 102.51823866115, 1, 1, 112770.062527266)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (71, CAST(N'2023-04-24' AS Date), 66.630244986396, 7, 1, 73293.2694850356)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (72, CAST(N'2023-04-24' AS Date), 167.067135945997, 10, 1, 183773.849540597)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (73, CAST(N'2023-04-25' AS Date), 92.3302685081952, 1, 1, 101563.295359015)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (74, CAST(N'2023-04-25' AS Date), 61.8197856437952, 2, 1, 68001.7642081747)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (75, CAST(N'2023-04-25' AS Date), 157.418241978816, 3, 1, 173160.066176698)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (76, CAST(N'2023-04-26' AS Date), 94.1263963596048, 4, 1, 103539.035995565)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (77, CAST(N'2023-04-26' AS Date), 63.4281688286123, 6, 1, 69770.9857114735)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (78, CAST(N'2023-04-26' AS Date), 159.328283555908, 3, 1, 175261.111911498)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (79, CAST(N'2023-04-27' AS Date), 97.6336937978094, 1, 1, 107397.06317759)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (80, CAST(N'2023-04-27' AS Date), 64.8421362976464, 7, 1, 71326.349927411)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (81, CAST(N'2023-04-27' AS Date), 162.77157159521, 8, 1, 179048.72875473)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (82, CAST(N'2023-04-28' AS Date), 98.4682189247272, 5, 1, 108315.0408172)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (83, CAST(N'2023-04-28' AS Date), 66.2359732192567, 2, 1, 72859.5705411823)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (84, CAST(N'2023-04-28' AS Date), 166.982290908844, 9, 1, 183680.519999729)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (85, CAST(N'2023-04-29' AS Date), 97.9638873554338, 1, 1, 107760.276090977)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (86, CAST(N'2023-04-29' AS Date), 65.818263247196, 6, 1, 72400.0895719156)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (87, CAST(N'2023-04-29' AS Date), 161.772233382708, 10, 1, 177949.456720978)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (88, CAST(N'2023-04-30' AS Date), 90.9992637552464, 1, 1, 100099.190130771)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (89, CAST(N'2023-04-30' AS Date), 59.8537648385088, 7, 1, 65839.1413223597)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (90, CAST(N'2023-04-30' AS Date), 149.911370391155, 10, 1, 164902.50743027)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (91, CAST(N'2023-05-01' AS Date), 81.4523374084248, 1, 1, 89597.5711492673)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (92, CAST(N'2023-05-01' AS Date), 80.3847780086745, 6, 1, 88423.255809542)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (93, CAST(N'2023-05-01' AS Date), 158.552944133898, 3, 1, 174408.238547288)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (94, CAST(N'2023-05-02' AS Date), 79.943651457285, 4, 1, 87938.0166030135)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (95, CAST(N'2023-05-02' AS Date), 80.041842226731, 2, 1, 88046.0264494041)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (96, CAST(N'2023-05-02' AS Date), 159.870937786329, 8, 1, 175858.031564962)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (97, CAST(N'2023-05-03' AS Date), 82.6914092004, 1, 1, 90960.55012044)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (98, CAST(N'2023-05-03' AS Date), 80.2758538296, 6, 1, 88303.43921256)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (99, CAST(N'2023-05-03' AS Date), 162.4874609358, 3, 1, 178736.20702938)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (100, CAST(N'2023-05-04' AS Date), 83.7858125022419, 5, 1, 92164.393752466)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (101, CAST(N'2023-05-04' AS Date), 83.4828201114753, 2, 1, 91831.1021226229)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (102, CAST(N'2023-05-04' AS Date), 169.221250243101, 9, 1, 186143.375267412)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (103, CAST(N'2023-05-05' AS Date), 83.2614303882414, 1, 1, 91587.5734270655)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (104, CAST(N'2023-05-05' AS Date), 83.6574720063213, 7, 1, 92023.2192069534)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (105, CAST(N'2023-05-05' AS Date), 167.1127099949, 8, 1, 183823.98099439)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (106, CAST(N'2023-05-06' AS Date), 79.4822256536, 5, 1, 87430.44821896)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (107, CAST(N'2023-05-06' AS Date), 78.81723492104, 2, 1, 86698.958413144)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (108, CAST(N'2023-05-06' AS Date), 155.11700492596, 3, 1, 170628.705418556)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (109, CAST(N'2023-05-07' AS Date), 82.9331367609492, 1, 1, 91226.4504370441)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (110, CAST(N'2023-05-07' AS Date), 84.2385029773419, 6, 1, 92662.3532750761)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (111, CAST(N'2023-05-07' AS Date), 169.578938475015, 3, 1, 186536.832322517)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (112, CAST(N'2023-05-08' AS Date), 82.1850379213286, 1, 1, 90403.5417134615)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (113, CAST(N'2023-05-08' AS Date), 81.8043600697144, 7, 1, 89984.7960766858)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (114, CAST(N'2023-05-08' AS Date), 163.029427756538, 8, 1, 179332.370532191)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (115, CAST(N'2023-05-09' AS Date), 79.1666058077798, 4, 1, 87083.2663885578)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (116, CAST(N'2023-05-09' AS Date), 79.2300914579865, 2, 1, 87153.1006037852)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (117, CAST(N'2023-05-09' AS Date), 155.920756907704, 3, 1, 171512.832598475)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (118, CAST(N'2023-05-10' AS Date), 77.434542575637, 1, 1, 85177.9968332007)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (119, CAST(N'2023-05-10' AS Date), 77.0962974181042, 6, 1, 84805.9271599147)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (120, CAST(N'2023-05-10' AS Date), 157.889693069706, 10, 1, 173678.662376677)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (121, CAST(N'2023-05-11' AS Date), 84.4381653679495, 5, 1, 92881.9819047444)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (122, CAST(N'2023-05-11' AS Date), 85.5653636008048, 2, 1, 94121.8999608852)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (123, CAST(N'2023-05-11' AS Date), 168.672926543504, 9, 1, 185540.219197854)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (124, CAST(N'2023-05-12' AS Date), 87.2066004105296, 1, 1, 95927.2604515826)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (125, CAST(N'2023-05-12' AS Date), 85.9366013754248, 7, 1, 94530.2615129673)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (126, CAST(N'2023-05-12' AS Date), 174.102180649197, 8, 1, 191512.398714116)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (127, CAST(N'2023-05-13' AS Date), 85.1300263146528, 5, 1, 93643.0289461181)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (128, CAST(N'2023-05-13' AS Date), 83.5105208339657, 2, 1, 91861.5729173622)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (129, CAST(N'2023-05-13' AS Date), 168.818607960631, 3, 1, 185700.468756694)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (130, CAST(N'2023-05-14' AS Date), 81.7911830975525, 1, 1, 89970.3014073077)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (131, CAST(N'2023-05-14' AS Date), 79.7566581819865, 2, 1, 87732.3240001852)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (132, CAST(N'2023-05-14' AS Date), 161.925212836459, 10, 1, 178117.734120104)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (133, CAST(N'2023-05-15' AS Date), 80.5766192913178, 4, 1, 88634.2812204495)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (134, CAST(N'2023-05-15' AS Date), 83.1350014698029, 6, 1, 91448.5016167832)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (135, CAST(N'2023-05-15' AS Date), 162.610440082355, 3, 1, 178871.484090591)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (136, CAST(N'2023-05-16' AS Date), 76.512971859097, 1, 1, 84164.2690450067)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (137, CAST(N'2023-05-16' AS Date), 76.7179313963251, 2, 1, 84389.7245359576)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (138, CAST(N'2023-05-16' AS Date), 155.516990401429, 8, 1, 171068.689441571)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (139, CAST(N'2023-05-17' AS Date), 82.4371967586499, 1, 1, 90680.9164345148)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (140, CAST(N'2023-05-17' AS Date), 80.1018887824038, 7, 1, 88112.0776606442)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (141, CAST(N'2023-05-17' AS Date), 166.244220810787, 9, 1, 182868.642891866)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (142, CAST(N'2023-05-18' AS Date), 75.307564022423, 5, 1, 82838.3204246653)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (143, CAST(N'2023-05-18' AS Date), 76.3691951736806, 2, 1, 84006.1146910487)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (144, CAST(N'2023-05-18' AS Date), 151.297605213512, 3, 1, 166427.365734863)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (145, CAST(N'2023-05-19' AS Date), 83.1201118384166, 1, 1, 91432.1230222583)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (146, CAST(N'2023-05-19' AS Date), 80.1541845649673, 6, 1, 88169.603021464)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (147, CAST(N'2023-05-19' AS Date), 163.488502262022, 3, 1, 179837.352488224)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (148, CAST(N'2023-05-20' AS Date), 84.240990232152, 4, 1, 92665.0892553672)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (149, CAST(N'2023-05-20' AS Date), 85.9652711931156, 2, 1, 94561.7983124272)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (150, CAST(N'2023-05-20' AS Date), 168.361881292894, 3, 1, 185198.069422183)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (151, CAST(N'2023-05-21' AS Date), 83.8905718927185, 1, 1, 92279.6290819904)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (152, CAST(N'2023-05-21' AS Date), 81.1491045637545, 6, 1, 89264.0150201299)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (153, CAST(N'2023-05-21' AS Date), 163.65222652779, 8, 1, 180017.449180569)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (154, CAST(N'2023-05-22' AS Date), 80.326579670025, 5, 1, 88359.2376370275)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (155, CAST(N'2023-05-22' AS Date), 80.038125119589, 7, 1, 88041.9376315479)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (156, CAST(N'2023-05-22' AS Date), 159.05063405985, 9, 1, 174955.697465835)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (157, CAST(N'2023-05-23' AS Date), 83.8038679498745, 1, 1, 92184.254744862)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (158, CAST(N'2023-05-23' AS Date), 85.9520241056695, 2, 1, 94547.2265162365)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (159, CAST(N'2023-05-23' AS Date), 171.560343226412, 10, 1, 188716.377549053)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (160, CAST(N'2023-05-24' AS Date), 83.5470571264952, 5, 1, 91901.7628391447)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (161, CAST(N'2023-05-24' AS Date), 85.0409392817592, 7, 1, 93545.0332099351)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (162, CAST(N'2023-05-24' AS Date), 171.151362379219, 3, 1, 188266.498617141)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (163, CAST(N'2023-05-25' AS Date), 85.2865916788688, 1, 1, 93815.2508467557)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (164, CAST(N'2023-05-25' AS Date), 84.0899467765797, 2, 1, 92498.9414542376)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (165, CAST(N'2023-05-25' AS Date), 166.914868942168, 3, 1, 183606.355836385)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (166, CAST(N'2023-05-26' AS Date), 83.4367645111018, 4, 1, 91780.4409622119)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (167, CAST(N'2023-05-26' AS Date), 85.3427672242728, 6, 1, 93877.0439467001)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (168, CAST(N'2023-05-26' AS Date), 172.053070027502, 8, 1, 189258.377030253)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (169, CAST(N'2023-05-27' AS Date), 76.0853825073014, 5, 1, 83693.9207580316)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (170, CAST(N'2023-05-27' AS Date), 74.143616190696, 7, 1, 81557.9778097656)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (171, CAST(N'2023-05-27' AS Date), 152.170765014603, 9, 1, 167387.841516063)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (172, CAST(N'2023-05-28' AS Date), 88.050250110752, 1, 1, 96855.2751218272)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (173, CAST(N'2023-05-28' AS Date), 88.1200550855698, 2, 1, 96932.0605941268)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (174, CAST(N'2023-05-28' AS Date), 173.639874859178, 3, 1, 191003.862345096)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (175, CAST(N'2023-05-29' AS Date), 81.4970585265876, 5, 1, 89646.7643792463)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (176, CAST(N'2023-05-29' AS Date), 82.3095998645544, 7, 1, 90540.5598510098)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (177, CAST(N'2023-05-29' AS Date), 166.043241249257, 3, 1, 182647.565374182)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (178, CAST(N'2023-05-30' AS Date), 83.0953860281532, 1, 1, 91404.9246309685)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (179, CAST(N'2023-05-30' AS Date), 83.7065687632668, 6, 1, 92077.2256395935)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (180, CAST(N'2023-05-30' AS Date), 166.598227213049, 10, 1, 183258.049934354)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (181, CAST(N'2023-05-31' AS Date), 80.09356366176, 4, 1, 88102.920027936)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (182, CAST(N'2023-05-31' AS Date), 81.171127670864, 2, 1, 89288.2404379504)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (183, CAST(N'2023-05-31' AS Date), 158.208912799344, 8, 1, 174029.804079278)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (184, CAST(N'2023-06-01' AS Date), 64.9017064541491, 5, 1, 71391.8770995641)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (185, CAST(N'2023-06-01' AS Date), 135.742944651149, 2, 1, 149317.239116264)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (186, CAST(N'2023-06-01' AS Date), 129.134282089992, 9, 1, 142047.710298991)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (187, CAST(N'2023-06-02' AS Date), 62.154309810528, 5, 1, 68369.7407915808)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (188, CAST(N'2023-06-02' AS Date), 127.129126159487, 6, 1, 139842.038775435)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (189, CAST(N'2023-06-02' AS Date), 122.467552923697, 3, 1, 134714.308216067)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (190, CAST(N'2023-06-03' AS Date), 66.0153923695885, 1, 1, 72616.9316065473)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (191, CAST(N'2023-06-03' AS Date), 133.574698384923, 7, 1, 146932.168223415)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (192, CAST(N'2023-06-03' AS Date), 127.505351415258, 3, 1, 140255.886556784)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (193, CAST(N'2023-06-04' AS Date), 65.12854462656, 4, 1, 71641.399089216)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (194, CAST(N'2023-06-04' AS Date), 132.558288954408, 2, 1, 145814.117849849)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (195, CAST(N'2023-06-04' AS Date), 130.881814714404, 3, 1, 143969.996185844)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (196, CAST(N'2023-06-05' AS Date), 68.9542361222085, 1, 1, 75849.6597344294)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (197, CAST(N'2023-06-05' AS Date), 140.207638468414, 6, 1, 154228.402315255)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (198, CAST(N'2023-06-05' AS Date), 134.150539002849, 8, 1, 147565.592903133)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (199, CAST(N'2023-06-06' AS Date), 67.8010865898756, 1, 1, 74581.1952488632)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (200, CAST(N'2023-06-06' AS Date), 139.699567089445, 2, 1, 153669.523798389)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (201, CAST(N'2023-06-06' AS Date), 134.163340960516, 3, 1, 147579.675056567)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (202, CAST(N'2023-06-07' AS Date), 61.2209507556004, 5, 1, 67343.0458311604)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (203, CAST(N'2023-06-07' AS Date), 128.375194290968, 7, 1, 141212.713720065)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (204, CAST(N'2023-06-07' AS Date), 119.184826298588, 3, 1, 131103.308928446)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (205, CAST(N'2023-06-08' AS Date), 64.9006689054037, 4, 1, 71390.7357959441)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (206, CAST(N'2023-06-08' AS Date), 130.594575391711, 2, 1, 143654.032930882)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (207, CAST(N'2023-06-08' AS Date), 122.320532050882, 9, 1, 134552.585255971)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (208, CAST(N'2023-06-09' AS Date), 65.59429216543, 1, 1, 72153.721381973)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (209, CAST(N'2023-06-09' AS Date), 137.079201154987, 6, 1, 150787.121270486)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (210, CAST(N'2023-06-09' AS Date), 129.677255031349, 10, 1, 142644.980534483)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (211, CAST(N'2023-06-10' AS Date), 61.3402360586355, 1, 1, 67474.2596644991)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (212, CAST(N'2023-06-10' AS Date), 127.850541982911, 2, 1, 140635.596181202)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (213, CAST(N'2023-06-10' AS Date), 118.405859603436, 8, 1, 130246.445563779)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (214, CAST(N'2023-06-11' AS Date), 64.3760581690329, 5, 1, 70813.6639859362)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (215, CAST(N'2023-06-11' AS Date), 128.911946995025, 6, 1, 141803.141694527)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (216, CAST(N'2023-06-11' AS Date), 124.642828340844, 3, 1, 137107.111174928)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (217, CAST(N'2023-06-12' AS Date), 63.0860374459253, 1, 1, 69394.6411905179)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (218, CAST(N'2023-06-12' AS Date), 128.939249314244, 7, 1, 141833.174245669)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (219, CAST(N'2023-06-12' AS Date), 119.421264588629, 3, 1, 131363.391047492)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (220, CAST(N'2023-06-13' AS Date), 65.6584543058277, 4, 1, 72224.2997364105)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (221, CAST(N'2023-06-13' AS Date), 134.764328523802, 2, 1, 148240.761376182)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (222, CAST(N'2023-06-13' AS Date), 130.355001222726, 9, 1, 143390.501344999)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (223, CAST(N'2023-06-14' AS Date), 67.6009737387704, 1, 1, 74361.0711126474)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (224, CAST(N'2023-06-14' AS Date), 140.561938156164, 6, 1, 154618.131971781)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (225, CAST(N'2023-06-14' AS Date), 133.811363004164, 3, 1, 147192.49930458)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (226, CAST(N'2023-06-15' AS Date), 62.8356577172275, 5, 1, 69119.2234889503)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (227, CAST(N'2023-06-15' AS Date), 128.671630261059, 7, 1, 141538.793287165)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (228, CAST(N'2023-06-15' AS Date), 119.838188982231, 3, 1, 131822.007880454)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (229, CAST(N'2023-06-16' AS Date), 63.0736357653914, 4, 1, 69380.9993419306)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (230, CAST(N'2023-06-16' AS Date), 128.26276088972, 2, 1, 141089.036978692)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (231, CAST(N'2023-06-16' AS Date), 125.568717243983, 3, 1, 138125.588968381)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (232, CAST(N'2023-06-17' AS Date), 64.7724673993341, 1, 1, 71249.7141392675)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (233, CAST(N'2023-06-17' AS Date), 135.509840032276, 6, 1, 149060.824035504)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (234, CAST(N'2023-06-17' AS Date), 127.213963805255, 8, 1, 139935.360185781)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (235, CAST(N'2023-06-18' AS Date), 66.5425880330207, 1, 1, 73196.8468363228)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (236, CAST(N'2023-06-18' AS Date), 139.576544514772, 2, 1, 153534.19896625)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (237, CAST(N'2023-06-18' AS Date), 130.383996391705, 3, 1, 143422.396030876)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (238, CAST(N'2023-06-19' AS Date), 65.4845500227313, 4, 1, 72033.0050250044)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (239, CAST(N'2023-06-19' AS Date), 137.00014708755, 6, 1, 150700.161796305)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (240, CAST(N'2023-06-19' AS Date), 131.195697163829, 3, 1, 144315.266880211)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (241, CAST(N'2023-06-20' AS Date), 67.8461805689944, 1, 1, 74630.7986258938)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (242, CAST(N'2023-06-20' AS Date), 140.459781062998, 6, 1, 154505.759169298)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (243, CAST(N'2023-06-20' AS Date), 133.729448248935, 9, 1, 147102.393073828)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (244, CAST(N'2023-06-21' AS Date), 68.8851558532472, 5, 1, 75773.671438572)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (245, CAST(N'2023-06-21' AS Date), 141.488716512591, 2, 1, 155637.588163851)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (246, CAST(N'2023-06-21' AS Date), 133.516282055151, 8, 1, 146867.910260666)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (247, CAST(N'2023-06-22' AS Date), 65.2777641259779, 1, 1, 71805.5405385757)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (248, CAST(N'2023-06-22' AS Date), 130.291145127075, 7, 1, 143320.259639782)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (249, CAST(N'2023-06-22' AS Date), 127.661710979123, 3, 1, 140427.882077035)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (250, CAST(N'2023-06-23' AS Date), 64.7745027872621, 1, 1, 71251.9530659883)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (251, CAST(N'2023-06-23' AS Date), 129.172747618066, 6, 1, 142090.022379873)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (252, CAST(N'2023-06-23' AS Date), 125.050704443586, 3, 1, 137555.774887944)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (253, CAST(N'2023-06-24' AS Date), 67.1477132867112, 4, 1, 73862.4846153823)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (254, CAST(N'2023-06-24' AS Date), 137.471451483822, 2, 1, 151218.596632204)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (255, CAST(N'2023-06-24' AS Date), 130.048930871496, 10, 1, 143053.823958646)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (256, CAST(N'2023-06-25' AS Date), 62.2362758582584, 1, 1, 68459.9034440843)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (257, CAST(N'2023-06-25' AS Date), 127.455544461864, 6, 1, 140201.09890805)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (258, CAST(N'2023-06-25' AS Date), 121.899901137319, 3, 1, 134089.891251051)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (259, CAST(N'2023-06-26' AS Date), 62.6831597520856, 5, 1, 68951.4757272942)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (260, CAST(N'2023-06-26' AS Date), 132.017993360839, 6, 1, 145219.792696923)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (261, CAST(N'2023-06-26' AS Date), 122.393860722806, 3, 1, 134633.246795087)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (262, CAST(N'2023-06-27' AS Date), 65.433962570796, 1, 1, 71977.3588278756)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (263, CAST(N'2023-06-27' AS Date), 130.565224195375, 7, 1, 143621.746614913)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (264, CAST(N'2023-06-27' AS Date), 127.356075619962, 8, 1, 140091.683181958)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (265, CAST(N'2023-06-28' AS Date), 66.1331716924395, 5, 1, 72746.4888616835)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (266, CAST(N'2023-06-28' AS Date), 133.417562849581, 2, 1, 146759.319134539)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (267, CAST(N'2023-06-28' AS Date), 127.418698186948, 9, 1, 140160.568005642)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (268, CAST(N'2023-06-29' AS Date), 66.679459056405, 1, 1, 73347.4049620455)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (269, CAST(N'2023-06-29' AS Date), 139.47091953968, 6, 1, 153418.011493648)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (270, CAST(N'2023-06-29' AS Date), 129.99852001109, 8, 1, 142998.372012199)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (271, CAST(N'2023-06-30' AS Date), 64.822372838058, 1, 1, 71304.6101218638)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (272, CAST(N'2023-06-30' AS Date), 133.545047082909, 2, 1, 146899.5517912)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (273, CAST(N'2023-06-30' AS Date), 128.873347627208, 3, 1, 141760.682389929)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (274, CAST(N'2023-10-01' AS Date), 94.2910369248771, 1, 1, 103720.140617365)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (275, CAST(N'2023-10-01' AS Date), 63.975651556777, 7, 1, 70373.2167124547)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (276, CAST(N'2023-10-01' AS Date), 161.172633792251, 3, 1, 177289.897171476)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (277, CAST(N'2023-10-02' AS Date), 94.3766692009606, 4, 1, 103814.336121057)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (278, CAST(N'2023-10-02' AS Date), 62.7126267321375, 7, 1, 68983.8894053513)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (279, CAST(N'2023-10-02' AS Date), 158.432405246161, 10, 1, 174275.645770777)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (280, CAST(N'2023-10-03' AS Date), 97.3676650847985, 1, 1, 107104.431593278)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (281, CAST(N'2023-10-03' AS Date), 63.5699814583995, 6, 1, 69926.9796042395)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (282, CAST(N'2023-10-03' AS Date), 157.822996182154, 3, 1, 173605.295800369)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (283, CAST(N'2023-10-04' AS Date), 97.8491269940898, 4, 1, 107634.039693499)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (284, CAST(N'2023-10-04' AS Date), 64.7739657779959, 2, 1, 71251.3623557955)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (285, CAST(N'2023-10-04' AS Date), 159.051119550492, 9, 1, 174956.231505542)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (286, CAST(N'2023-10-05' AS Date), 95.4712469167188, 5, 1, 105018.371608391)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (287, CAST(N'2023-10-05' AS Date), 62.6289842394498, 2, 1, 68891.8826633948)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (288, CAST(N'2023-10-05' AS Date), 155.691670444904, 8, 1, 171260.837489395)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (289, CAST(N'2023-10-06' AS Date), 95.1799503919505, 1, 1, 104697.945431146)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (290, CAST(N'2023-10-06' AS Date), 63.2411678624934, 6, 1, 69565.2846487427)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (291, CAST(N'2023-10-06' AS Date), 161.815236635354, 3, 1, 177996.76029889)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (292, CAST(N'2023-10-07' AS Date), 91.92441523246, 1, 1, 101116.856755706)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (293, CAST(N'2023-10-07' AS Date), 60.1975761054048, 7, 1, 66217.3337159453)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (294, CAST(N'2023-10-07' AS Date), 152.277043821137, 3, 1, 167504.74820325)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (295, CAST(N'2023-10-08' AS Date), 94.2571353526795, 4, 1, 103682.848887947)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (296, CAST(N'2023-10-08' AS Date), 63.6137906306154, 2, 1, 69975.169693677)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (297, CAST(N'2023-10-08' AS Date), 156.904479588907, 3, 1, 172594.927547797)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (298, CAST(N'2023-10-09' AS Date), 97.250735701953, 1, 1, 106975.809272148)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (299, CAST(N'2023-10-09' AS Date), 64.22675343201, 6, 1, 70649.428775211)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (300, CAST(N'2023-10-09' AS Date), 157.757568573195, 9, 1, 173533.325430514)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (301, CAST(N'2023-10-10' AS Date), 93.2390098860024, 1, 1, 102562.910874603)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (302, CAST(N'2023-10-10' AS Date), 64.2096684894112, 2, 1, 70630.6353383523)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (303, CAST(N'2023-10-10' AS Date), 158.009016616892, 3, 1, 173809.918278581)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (304, CAST(N'2023-10-11' AS Date), 98.8995538503803, 5, 1, 108789.509235418)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (305, CAST(N'2023-10-11' AS Date), 65.2303391108173, 6, 1, 71753.373021899)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (306, CAST(N'2023-10-11' AS Date), 167.342221141478, 8, 1, 184076.443255626)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (307, CAST(N'2023-10-12' AS Date), 99.7967090576111, 1, 1, 109776.379963372)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (308, CAST(N'2023-10-12' AS Date), 65.7816258763319, 7, 1, 72359.7884639651)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (309, CAST(N'2023-10-12' AS Date), 165.281230485312, 3, 1, 181809.353533844)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (310, CAST(N'2023-10-13' AS Date), 102.31001080819, 1, 1, 112541.011889009)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (311, CAST(N'2023-10-13' AS Date), 66.0790389387026, 2, 1, 72686.9428325729)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (312, CAST(N'2023-10-13' AS Date), 170.754599129741, 3, 1, 187830.059042715)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (313, CAST(N'2023-10-14' AS Date), 101.541117358241, 4, 1, 111695.229094065)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (314, CAST(N'2023-10-14' AS Date), 67.5131710506053, 6, 1, 74264.4881556658)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (315, CAST(N'2023-10-14' AS Date), 171.583510059562, 3, 1, 188741.861065518)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (316, CAST(N'2023-10-15' AS Date), 97.2396162689996, 4, 1, 106963.5778959)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (317, CAST(N'2023-10-15' AS Date), 63.2511051746101, 2, 1, 69576.2156920711)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (318, CAST(N'2023-10-15' AS Date), 157.336882015438, 3, 1, 173070.570216982)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (319, CAST(N'2023-10-16' AS Date), 95.0244482554416, 1, 1, 104526.893080986)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (320, CAST(N'2023-10-16' AS Date), 63.4460254024464, 6, 1, 69790.627942691)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (321, CAST(N'2023-10-16' AS Date), 158.00457303582, 9, 1, 173805.030339402)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (322, CAST(N'2023-10-17' AS Date), 93.8697289777622, 1, 1, 103256.701875538)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (323, CAST(N'2023-10-17' AS Date), 63.3294668420538, 7, 1, 69662.4135262592)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (324, CAST(N'2023-10-17' AS Date), 157.583468920121, 8, 1, 173341.815812133)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (325, CAST(N'2023-10-18' AS Date), 92.2696554080822, 5, 1, 101496.62094889)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (326, CAST(N'2023-10-18' AS Date), 61.3150336400659, 2, 1, 67446.5370040725)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (327, CAST(N'2023-10-18' AS Date), 154.35530500698, 3, 1, 169790.835507678)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (328, CAST(N'2023-10-19' AS Date), 97.2023381266855, 5, 1, 106922.571939354)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (329, CAST(N'2023-10-19' AS Date), 62.3905472885112, 6, 1, 68629.6020173623)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (330, CAST(N'2023-10-19' AS Date), 158.612407420401, 3, 1, 174473.648162441)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (331, CAST(N'2023-10-20' AS Date), 99.7649107010548, 1, 1, 109741.40177116)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (332, CAST(N'2023-10-20' AS Date), 64.6570924004306, 7, 1, 71122.8016404737)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (333, CAST(N'2023-10-20' AS Date), 166.407671818384, 3, 1, 183048.439000223)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (334, CAST(N'2023-10-21' AS Date), 99.0673239793049, 4, 1, 108974.056377235)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (335, CAST(N'2023-10-21' AS Date), 67.1042458094393, 6, 1, 73814.6703903832)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (336, CAST(N'2023-10-21' AS Date), 164.235026948391, 8, 1, 180658.52964323)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (337, CAST(N'2023-10-22' AS Date), 96.3289092486728, 1, 1, 105961.80017354)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (338, CAST(N'2023-10-22' AS Date), 65.4756367688408, 2, 1, 72023.2004457249)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (339, CAST(N'2023-10-22' AS Date), 165.465103769358, 8, 1, 182011.614146294)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (340, CAST(N'2023-10-23' AS Date), 96.39438397095, 1, 1, 106033.822368045)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (341, CAST(N'2023-10-23' AS Date), 64.8369899697, 6, 1, 71320.68896667)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (342, CAST(N'2023-10-23' AS Date), 162.500193193, 10, 1, 178750.2125123)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (343, CAST(N'2023-10-24' AS Date), 100.59757367976, 5, 1, 110657.331047736)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (344, CAST(N'2023-10-24' AS Date), 67.79869929588, 7, 1, 74578.569225468)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (345, CAST(N'2023-10-24' AS Date), 168.2852158389, 3, 1, 185113.73742279)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (346, CAST(N'2023-10-25' AS Date), 101.808938122478, 4, 1, 111989.831934725)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (347, CAST(N'2023-10-25' AS Date), 66.5173413611715, 2, 1, 73169.0754972886)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (348, CAST(N'2023-10-25' AS Date), 164.565366234316, 9, 1, 181021.902857748)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (349, CAST(N'2023-10-26' AS Date), 97.9175164111269, 1, 1, 107709.26805224)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (350, CAST(N'2023-10-26' AS Date), 66.0112153385555, 7, 1, 72612.336872411)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (351, CAST(N'2023-10-26' AS Date), 161.87537228076, 3, 1, 178062.909508835)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (352, CAST(N'2023-10-27' AS Date), 99.2885432219366, 5, 1, 109217.39754413)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (353, CAST(N'2023-10-27' AS Date), 68.0870650349261, 2, 1, 74895.7715384187)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (354, CAST(N'2023-10-27' AS Date), 166.974936320192, 8, 1, 183672.429952211)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (355, CAST(N'2023-10-28' AS Date), 96.656978847798, 1, 1, 106322.676732578)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (356, CAST(N'2023-10-28' AS Date), 62.8037124668568, 6, 1, 69084.0837135425)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (357, CAST(N'2023-10-28' AS Date), 159.019952219892, 3, 1, 174921.947441881)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (358, CAST(N'2023-10-29' AS Date), 102.315119001634, 4, 1, 112546.630901797)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (359, CAST(N'2023-10-29' AS Date), 67.9446432858092, 7, 1, 74739.1076143902)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (360, CAST(N'2023-10-29' AS Date), 175.868845104191, 3, 1, 193455.72961461)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (361, CAST(N'2023-10-30' AS Date), 96.6826962745686, 1, 1, 106350.965902025)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (362, CAST(N'2023-10-30' AS Date), 64.6292293424037, 6, 1, 71092.1522766441)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (363, CAST(N'2023-10-30' AS Date), 157.220611038727, 3, 1, 172942.672142599)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (364, CAST(N'2023-10-31' AS Date), 93.6046763481424, 1, 1, 102965.143982957)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (365, CAST(N'2023-10-31' AS Date), 62.7890135647357, 2, 1, 69067.9149212093)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (366, CAST(N'2023-10-31' AS Date), 154.109434562139, 9, 1, 169520.378018353)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (367, CAST(N'2023-11-01' AS Date), 86.1510257019208, 5, 1, 94766.1282721129)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (368, CAST(N'2023-11-01' AS Date), 87.1804435208312, 2, 1, 95898.4878729143)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (369, CAST(N'2023-11-01' AS Date), 168.340090386523, 8, 1, 185174.099425175)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (370, CAST(N'2023-11-02' AS Date), 84.8572528801722, 1, 1, 93342.9781681894)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (371, CAST(N'2023-11-02' AS Date), 83.6894534181346, 6, 1, 92058.3987599481)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (372, CAST(N'2023-11-02' AS Date), 167.089087991676, 3, 1, 183797.996790844)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (373, CAST(N'2023-11-03' AS Date), 80.44184348172, 1, 1, 88486.027829892)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (374, CAST(N'2023-11-03' AS Date), 78.52656149406, 7, 1, 86379.217643466)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (375, CAST(N'2023-11-03' AS Date), 159.782399820535, 3, 1, 175760.639802589)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (376, CAST(N'2023-11-04' AS Date), 78.3958718295178, 4, 1, 86235.4590124695)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (377, CAST(N'2023-11-04' AS Date), 79.8684664730534, 7, 1, 87855.3131203588)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (378, CAST(N'2023-11-04' AS Date), 155.84168259869, 3, 1, 171425.850858559)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (379, CAST(N'2023-11-05' AS Date), 79.6724290066337, 1, 1, 87639.6719072971)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (380, CAST(N'2023-11-05' AS Date), 80.5185366975037, 6, 1, 88570.3903672541)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (381, CAST(N'2023-11-05' AS Date), 161.378770731705, 3, 1, 177516.647804875)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (382, CAST(N'2023-11-06' AS Date), 79.7005935739005, 5, 1, 87670.6529312906)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (383, CAST(N'2023-11-06' AS Date), 79.367933048956, 2, 1, 87304.7263538516)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (384, CAST(N'2023-11-06' AS Date), 158.411319244308, 9, 1, 174252.451168738)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (385, CAST(N'2023-11-07' AS Date), 79.6956202301532, 1, 1, 87665.1822531685)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (386, CAST(N'2023-11-07' AS Date), 80.1347365507962, 6, 1, 88148.2102058758)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (387, CAST(N'2023-11-07' AS Date), 156.277506550292, 10, 1, 171905.257205322)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (388, CAST(N'2023-11-08' AS Date), 78.9976726338492, 1, 1, 86897.4398972341)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (389, CAST(N'2023-11-08' AS Date), 80.6404376916785, 7, 1, 88704.4814608463)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (390, CAST(N'2023-11-08' AS Date), 162.504896406838, 3, 1, 178755.386047521)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (391, CAST(N'2023-11-09' AS Date), 80.3513299004865, 4, 1, 88386.4628905351)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (392, CAST(N'2023-11-09' AS Date), 79.905878520129, 6, 1, 87896.4663721419)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (393, CAST(N'2023-11-09' AS Date), 158.062347982854, 3, 1, 173868.582781139)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (394, CAST(N'2023-11-10' AS Date), 78.242562430207, 5, 1, 86066.8186732277)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (395, CAST(N'2023-11-10' AS Date), 79.1671538658533, 2, 1, 87083.8692524386)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (396, CAST(N'2023-11-10' AS Date), 153.561203226319, 9, 1, 168917.323548951)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (397, CAST(N'2023-11-11' AS Date), 80.0408253694455, 1, 1, 88044.90790639)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (398, CAST(N'2023-11-11' AS Date), 78.7649866492709, 6, 1, 86641.485314198)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (399, CAST(N'2023-11-11' AS Date), 158.268194444806, 3, 1, 174095.013889287)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (400, CAST(N'2023-11-12' AS Date), 84.1250232878014, 4, 1, 92537.5256165815)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (401, CAST(N'2023-11-12' AS Date), 81.0674504453649, 6, 1, 89174.1954899014)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (402, CAST(N'2023-11-12' AS Date), 163.688749384427, 3, 1, 180057.62432287)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (403, CAST(N'2023-11-13' AS Date), 82.176135041133, 1, 1, 90393.7485452463)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (404, CAST(N'2023-11-13' AS Date), 81.23499787068, 2, 1, 89358.497657748)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (405, CAST(N'2023-11-13' AS Date), 164.302736546979, 8, 1, 180733.010201677)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (406, CAST(N'2023-11-14' AS Date), 81.8486618655895, 4, 1, 90033.5280521484)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (407, CAST(N'2023-11-14' AS Date), 82.4967569129365, 2, 1, 90746.4326042302)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (408, CAST(N'2023-11-14' AS Date), 160.383014881455, 3, 1, 176421.3163696)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (409, CAST(N'2023-11-15' AS Date), 77.371036303968, 1, 1, 85108.1399343648)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (410, CAST(N'2023-11-15' AS Date), 76.676918155308, 6, 1, 84344.6099708388)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (411, CAST(N'2023-11-15' AS Date), 149.744421937584, 3, 1, 164718.864131342)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (412, CAST(N'2023-11-16' AS Date), 82.1819434496515, 5, 1, 90400.1377946167)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (413, CAST(N'2023-11-16' AS Date), 83.887590573696, 7, 1, 92276.3496310656)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (414, CAST(N'2023-11-16' AS Date), 163.557275451479, 9, 1, 179913.002996627)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (415, CAST(N'2023-11-17' AS Date), 82.8365161568308, 1, 1, 91120.1677725139)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (416, CAST(N'2023-11-17' AS Date), 82.5664154316404, 2, 1, 90823.0569748044)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (417, CAST(N'2023-11-17' AS Date), 167.023535939614, 3, 1, 183725.889533575)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (418, CAST(N'2023-11-18' AS Date), 74.0942879852732, 5, 1, 81503.7167838006)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (419, CAST(N'2023-11-18' AS Date), 74.3150559244053, 6, 1, 81746.5615168459)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (420, CAST(N'2023-11-18' AS Date), 148.325604346559, 3, 1, 163158.164781215)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (421, CAST(N'2023-11-19' AS Date), 83.9441635705935, 1, 1, 92338.5799276529)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (422, CAST(N'2023-11-19' AS Date), 84.9543219769785, 7, 1, 93449.7541746764)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (423, CAST(N'2023-11-19' AS Date), 168.073522849024, 9, 1, 184880.875133927)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (424, CAST(N'2023-11-20' AS Date), 77.0945356415738, 4, 1, 84803.9892057312)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (425, CAST(N'2023-11-20' AS Date), 78.5667721538256, 6, 1, 86423.4493692082)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (426, CAST(N'2023-11-20' AS Date), 154.458189785387, 8, 1, 169904.008763926)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (427, CAST(N'2023-11-21' AS Date), 84.7277896064691, 1, 1, 93200.568567116)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (428, CAST(N'2023-11-21' AS Date), 84.0807491604366, 2, 1, 92488.8240764803)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (429, CAST(N'2023-11-21' AS Date), 168.213261556556, 8, 1, 185034.587712211)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (430, CAST(N'2023-11-22' AS Date), 78.308603138387, 5, 1, 86139.4634522257)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (431, CAST(N'2023-11-22' AS Date), 78.1454763983904, 6, 1, 85960.0240382294)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (432, CAST(N'2023-11-22' AS Date), 153.820747876832, 3, 1, 169202.822664515)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (433, CAST(N'2023-11-23' AS Date), 80.1103278001042, 5, 1, 88121.3605801147)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (434, CAST(N'2023-11-23' AS Date), 78.6753234377797, 7, 1, 86542.8557815577)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (435, CAST(N'2023-11-23' AS Date), 160.962343248151, 8, 1, 177058.577572967)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (436, CAST(N'2023-11-24' AS Date), 83.7037099707254, 1, 1, 92074.0809677979)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (437, CAST(N'2023-11-24' AS Date), 81.9116590882121, 2, 1, 90102.8249970333)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (438, CAST(N'2023-11-24' AS Date), 164.83549506377, 9, 1, 181319.044570147)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (439, CAST(N'2023-11-25' AS Date), 84.0175573493858, 4, 1, 92419.3130843243)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (440, CAST(N'2023-11-25' AS Date), 82.8456476125208, 6, 1, 91130.2123737728)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (441, CAST(N'2023-11-25' AS Date), 168.302979781484, 3, 1, 185133.277759632)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (442, CAST(N'2023-11-26' AS Date), 80.6898760048, 1, 1, 88758.86360528)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (443, CAST(N'2023-11-26' AS Date), 80.3999226516, 6, 1, 88439.91491676)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (444, CAST(N'2023-11-26' AS Date), 161.56200840304, 10, 1, 177718.209243344)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (445, CAST(N'2023-11-27' AS Date), 82.3646256684475, 5, 1, 90601.0882352922)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (446, CAST(N'2023-11-27' AS Date), 84.7578683213878, 7, 1, 93233.6551535266)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (447, CAST(N'2023-11-27' AS Date), 165.066327766887, 3, 1, 181572.960543575)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (448, CAST(N'2023-11-28' AS Date), 84.854955877175, 1, 1, 93340.4514648925)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (449, CAST(N'2023-11-28' AS Date), 82.769530343775, 2, 1, 91046.4833781525)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (450, CAST(N'2023-11-28' AS Date), 166.11087091445, 3, 1, 182721.958005895)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (451, CAST(N'2023-11-29' AS Date), 77.3343252990759, 5, 1, 85067.7578289835)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (452, CAST(N'2023-11-29' AS Date), 76.5204445228055, 2, 1, 84172.4889750861)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (453, CAST(N'2023-11-29' AS Date), 152.211356715951, 9, 1, 167432.492387546)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (454, CAST(N'2023-11-30' AS Date), 77.2826481942407, 5, 1, 85010.9130136648)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (455, CAST(N'2023-11-30' AS Date), 76.2276216489659, 2, 1, 83850.3838138625)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (456, CAST(N'2023-11-30' AS Date), 151.767522290642, 8, 1, 166944.274519706)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (457, CAST(N'2023-12-01' AS Date), 62.950023968256, 1, 1, 69245.0263650816)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (458, CAST(N'2023-12-01' AS Date), 131.259418891903, 6, 1, 144385.360781093)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (459, CAST(N'2023-12-01' AS Date), 122.179867513966, 3, 1, 134397.854265363)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (460, CAST(N'2023-12-02' AS Date), 69.9148281014785, 4, 1, 76906.3109116263)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (461, CAST(N'2023-12-02' AS Date), 142.539935584471, 7, 1, 156793.929142919)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (462, CAST(N'2023-12-02' AS Date), 132.122723727004, 3, 1, 145334.996099704)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (463, CAST(N'2023-12-03' AS Date), 63.4604102235049, 1, 1, 69806.4512458554)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (464, CAST(N'2023-12-03' AS Date), 128.650103820836, 2, 1, 141515.11420292)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (465, CAST(N'2023-12-03' AS Date), 124.272155020308, 3, 1, 136699.370522339)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (466, CAST(N'2023-12-04' AS Date), 65.0712491377429, 5, 1, 71578.3740515171)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (467, CAST(N'2023-12-04' AS Date), 131.80865846369, 6, 1, 144989.524310059)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (468, CAST(N'2023-12-04' AS Date), 129.702380489922, 3, 1, 142672.618538914)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (469, CAST(N'2023-12-05' AS Date), 66.8532069682376, 1, 1, 73538.5276650614)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (470, CAST(N'2023-12-05' AS Date), 137.436140462008, 7, 1, 151179.754508209)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (471, CAST(N'2023-12-05' AS Date), 127.681263600978, 8, 1, 140449.389961076)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (472, CAST(N'2023-12-06' AS Date), 63.6442841021376, 1, 1, 70008.7125123514)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (473, CAST(N'2023-12-06' AS Date), 127.721423067688, 2, 1, 140493.565374457)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (474, CAST(N'2023-12-06' AS Date), 121.206035729339, 3, 1, 133326.639302272)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (475, CAST(N'2023-12-07' AS Date), 65.2075403347231, 4, 1, 71728.2943681954)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (476, CAST(N'2023-12-07' AS Date), 133.689198995566, 6, 1, 147058.118895123)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (477, CAST(N'2023-12-07' AS Date), 131.938690241617, 9, 1, 145132.559265779)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (478, CAST(N'2023-12-08' AS Date), 63.7166702364148, 1, 1, 70088.3372600563)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (479, CAST(N'2023-12-08' AS Date), 127.541044897014, 7, 1, 140295.149386715)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (480, CAST(N'2023-12-08' AS Date), 123.493892769439, 10, 1, 135843.282046382)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (481, CAST(N'2023-12-09' AS Date), 64.2174201032509, 4, 1, 70639.162113576)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (482, CAST(N'2023-12-09' AS Date), 128.310093528936, 7, 1, 141141.10288183)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (483, CAST(N'2023-12-09' AS Date), 124.303204721918, 10, 1, 136733.52519411)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (484, CAST(N'2023-12-10' AS Date), 70.4684589394802, 1, 1, 77515.3048334282)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (485, CAST(N'2023-12-10' AS Date), 141.480891059767, 7, 1, 155628.980165744)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (486, CAST(N'2023-12-10' AS Date), 137.508873659257, 8, 1, 151259.761025183)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (487, CAST(N'2023-12-11' AS Date), 62.7543775168862, 1, 1, 69029.8152685749)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (488, CAST(N'2023-12-11' AS Date), 126.743764214002, 6, 1, 139418.140635402)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (489, CAST(N'2023-12-11' AS Date), 121.361435094949, 3, 1, 133497.578604444)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (490, CAST(N'2023-12-12' AS Date), 61.9975144096358, 5, 1, 68197.2658505994)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (491, CAST(N'2023-12-12' AS Date), 127.588124144789, 2, 1, 140346.936559268)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (492, CAST(N'2023-12-12' AS Date), 119.932140237096, 9, 1, 131925.354260806)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (493, CAST(N'2023-12-13' AS Date), 67.1756813174304, 4, 1, 73893.2494491734)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (494, CAST(N'2023-12-13' AS Date), 140.759341504096, 2, 1, 154835.275654505)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (495, CAST(N'2023-12-13' AS Date), 132.692379279565, 9, 1, 145961.617207522)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (496, CAST(N'2023-12-14' AS Date), 64.0808795033891, 1, 1, 70488.967453728)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (497, CAST(N'2023-12-14' AS Date), 131.365802981948, 2, 1, 144502.383280142)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (498, CAST(N'2023-12-14' AS Date), 124.833403735318, 3, 1, 137316.74410885)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (499, CAST(N'2023-12-15' AS Date), 63.6078714523271, 4, 1, 69968.6585975598)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (500, CAST(N'2023-12-15' AS Date), 130.18733561822, 7, 1, 143206.069180042)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (501, CAST(N'2023-12-15' AS Date), 123.129166335517, 8, 1, 135442.082969068)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (502, CAST(N'2023-12-16' AS Date), 67.2384857488461, 1, 1, 73962.3343237307)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (503, CAST(N'2023-12-16' AS Date), 137.81144057235, 6, 1, 151592.584629585)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (504, CAST(N'2023-12-16' AS Date), 126.714512312346, 3, 1, 139385.96354358)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (505, CAST(N'2023-12-17' AS Date), 66.184680551104, 1, 1, 72803.1486062144)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (506, CAST(N'2023-12-17' AS Date), 133.733963130292, 2, 1, 147107.359443321)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (507, CAST(N'2023-12-17' AS Date), 125.591804758523, 9, 1, 138150.985234375)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (508, CAST(N'2023-12-18' AS Date), 66.8185817061819, 1, 1, 73500.4398768001)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (509, CAST(N'2023-12-18' AS Date), 133.722922747152, 7, 1, 147095.215021867)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (510, CAST(N'2023-12-18' AS Date), 129.616859596782, 3, 1, 142578.54555646)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (511, CAST(N'2023-12-19' AS Date), 65.8360051893274, 4, 1, 72419.6057082601)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (512, CAST(N'2023-12-19' AS Date), 137.507936858432, 7, 1, 151258.730544275)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (513, CAST(N'2023-12-19' AS Date), 129.530712620256, 9, 1, 142483.783882282)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (514, CAST(N'2023-12-20' AS Date), 61.2554213469744, 1, 1, 67380.9634816718)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (515, CAST(N'2023-12-20' AS Date), 124.481227479336, 6, 1, 136929.35022727)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (516, CAST(N'2023-12-20' AS Date), 119.061430083807, 3, 1, 130967.573092188)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (517, CAST(N'2023-12-21' AS Date), 65.5401464742994, 1, 1, 72094.1611217293)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (518, CAST(N'2023-12-21' AS Date), 134.650977431379, 2, 1, 148116.075174517)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (519, CAST(N'2023-12-21' AS Date), 127.409654044718, 8, 1, 140150.61944919)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (520, CAST(N'2023-12-22' AS Date), 66.8932593906932, 5, 1, 73582.5853297625)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (521, CAST(N'2023-12-22' AS Date), 136.991834955117, 6, 1, 150691.018450629)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (522, CAST(N'2023-12-22' AS Date), 133.755590590123, 9, 1, 147131.149649135)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (523, CAST(N'2023-12-23' AS Date), 66.924983500008, 1, 1, 73617.4818500088)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (524, CAST(N'2023-12-23' AS Date), 139.916545802766, 2, 1, 153908.200383042)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (525, CAST(N'2023-12-23' AS Date), 131.705117756435, 10, 1, 144875.629532078)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (526, CAST(N'2023-12-24' AS Date), 68.4928202776811, 4, 1, 75342.1023054492)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (527, CAST(N'2023-12-24' AS Date), 136.460762666145, 7, 1, 150106.83893276)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (528, CAST(N'2023-12-24' AS Date), 128.861606455534, 9, 1, 141747.767101087)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (529, CAST(N'2023-12-25' AS Date), 62.8747851246319, 1, 1, 69162.2636370951)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (530, CAST(N'2023-12-25' AS Date), 127.766459386814, 2, 1, 140543.105325495)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (531, CAST(N'2023-12-25' AS Date), 121.284674330913, 3, 1, 133413.141764005)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (532, CAST(N'2023-12-26' AS Date), 67.6203130512, 4, 1, 74382.34435632)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (533, CAST(N'2023-12-26' AS Date), 140.107270327454, 7, 1, 154117.997360199)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (534, CAST(N'2023-12-26' AS Date), 133.140698411943, 8, 1, 146454.768253137)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (535, CAST(N'2023-12-27' AS Date), 64.1433131068861, 4, 1, 70557.6444175748)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (536, CAST(N'2023-12-27' AS Date), 135.333816228071, 6, 1, 148867.197850878)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (537, CAST(N'2023-12-27' AS Date), 124.770781169903, 10, 1, 137247.859286894)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (538, CAST(N'2023-12-28' AS Date), 63.715185703728, 1, 1, 70086.7042741008)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (539, CAST(N'2023-12-28' AS Date), 130.549037960624, 2, 1, 143603.941756687)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (540, CAST(N'2023-12-28' AS Date), 124.665823566695, 9, 1, 137132.405923364)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (541, CAST(N'2023-12-29' AS Date), 63.0111628107144, 4, 1, 69312.2790917858)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (542, CAST(N'2023-12-29' AS Date), 132.094635773215, 7, 1, 145304.099350536)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (543, CAST(N'2023-12-29' AS Date), 125.588680485339, 3, 1, 138147.548533873)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (544, CAST(N'2023-12-30' AS Date), 66.930130022028, 1, 1, 73623.1430242308)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (545, CAST(N'2023-12-30' AS Date), 138.12696231713, 6, 1, 151939.658548843)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (546, CAST(N'2023-12-30' AS Date), 128.816186176478, 9, 1, 141697.804794126)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (547, CAST(N'2023-12-31' AS Date), 66.5097390529058, 5, 1, 73160.7129581964)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (548, CAST(N'2023-12-31' AS Date), 136.012652764215, 7, 1, 149613.918040636)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (549, CAST(N'2023-12-31' AS Date), 130.563271483836, 8, 1, 143619.59863222)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (550, CAST(N'2024-01-01' AS Date), 208.422428393738, 1, 1, 229264.671233112)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (551, CAST(N'2024-01-01' AS Date), 208.422428393738, 2, 1, 229264.671233112)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (552, CAST(N'2024-01-01' AS Date), 208.422428393738, 3, 1, 229264.671233112)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (553, CAST(N'2024-04-01' AS Date), 105.2220954, 1, 1, 115744.30494)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (554, CAST(N'2024-04-01' AS Date), 70.2742544, 2, 1, 77301.67984)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (555, CAST(N'2024-04-01' AS Date), 174.949523, 3, 1, 192444.4753)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (556, CAST(N'2024-04-02' AS Date), 104.8460259, 1, 1, 115330.62849)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (557, CAST(N'2024-04-02' AS Date), 71.123745, 6, 1, 78236.1195)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (558, CAST(N'2024-04-02' AS Date), 176.7398325, 3, 1, 194413.81575)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (559, CAST(N'2024-04-03' AS Date), 99.9202797, 1, 1, 109912.30767)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (560, CAST(N'2024-04-03' AS Date), 65.8803204, 7, 1, 72468.35244)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (561, CAST(N'2024-04-03' AS Date), 164.5830855, 8, 1, 181041.39405)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (562, CAST(N'2024-04-04' AS Date), 103.6644492, 4, 1, 114030.89412)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (563, CAST(N'2024-04-04' AS Date), 67.4309402, 6, 1, 74174.03422)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (564, CAST(N'2024-04-04' AS Date), 168.6118915, 10, 1, 185473.08065)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (565, CAST(N'2024-04-05' AS Date), 104.0086443, 1, 1, 114409.50873)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (566, CAST(N'2024-04-05' AS Date), 69.9005176, 2, 1, 76890.56936)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (567, CAST(N'2024-04-05' AS Date), 176.4035785, 10, 1, 194043.93635)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (568, CAST(N'2024-04-06' AS Date), 103.9104192, 1, 1, 114301.46112)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (569, CAST(N'2024-04-06' AS Date), 68.3874576, 7, 1, 75226.20336)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (570, CAST(N'2024-04-06' AS Date), 170.881424, 3, 1, 187969.5664)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (571, CAST(N'2024-04-07' AS Date), 98.5667586, 5, 1, 108423.43446)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (572, CAST(N'2024-04-07' AS Date), 66.096595, 2, 1, 72706.2545)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (573, CAST(N'2024-04-07' AS Date), 166.306471, 9, 1, 182937.1181)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (574, CAST(N'2024-04-08' AS Date), 102.2621184, 1, 1, 112488.33024)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (575, CAST(N'2024-04-08' AS Date), 68.7210176, 6, 1, 75593.11936)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (576, CAST(N'2024-04-08' AS Date), 166.220327, 8, 1, 182842.3597)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (577, CAST(N'2024-04-09' AS Date), 99.2948562, 4, 1, 109224.34182)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (578, CAST(N'2024-04-09' AS Date), 67.0908444, 7, 1, 73799.92884)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (579, CAST(N'2024-04-09' AS Date), 167.405308, 3, 1, 184145.8388)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (580, CAST(N'2024-04-10' AS Date), 105.476598, 5, 1, 116024.2578)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (581, CAST(N'2024-04-10' AS Date), 68.3882608, 6, 1, 75227.08688)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (582, CAST(N'2024-04-10' AS Date), 173.582752, 9, 1, 190941.0272)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (583, CAST(N'2024-04-11' AS Date), 105.5837688, 1, 1, 116142.14568)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (584, CAST(N'2024-04-11' AS Date), 70.5079854, 2, 1, 77558.78394)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (585, CAST(N'2024-04-11' AS Date), 170.5043685, 3, 1, 187554.80535)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (586, CAST(N'2024-04-12' AS Date), 102.552075, 1, 1, 112807.2825)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (587, CAST(N'2024-04-12' AS Date), 68.51952, 7, 1, 75371.472)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (588, CAST(N'2024-04-12' AS Date), 167.9079375, 10, 1, 184698.73125)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (589, CAST(N'2024-04-13' AS Date), 102.7861434, 4, 1, 113064.75774)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (590, CAST(N'2024-04-13' AS Date), 67.7302736, 6, 1, 74503.30096)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (591, CAST(N'2024-04-13' AS Date), 172.22486, 8, 1, 189447.346)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (592, CAST(N'2024-04-14' AS Date), 103.6405578, 1, 1, 114004.61358)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (593, CAST(N'2024-04-14' AS Date), 67.6308204, 2, 1, 74393.90244)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (594, CAST(N'2024-04-14' AS Date), 169.870597, 3, 1, 186857.6567)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (595, CAST(N'2024-04-15' AS Date), 100.8425979, 1, 1, 110926.85769)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (596, CAST(N'2024-04-15' AS Date), 65.7536506, 6, 1, 72329.01566)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (597, CAST(N'2024-04-15' AS Date), 168.6407855, 3, 1, 185504.86405)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (598, CAST(N'2024-04-16' AS Date), 99.3771315, 5, 1, 109314.84465)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (599, CAST(N'2024-04-16' AS Date), 67.0766046, 2, 1, 73784.26506)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (600, CAST(N'2024-04-16' AS Date), 170.380122, 3, 1, 187418.1342)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (601, CAST(N'2024-04-17' AS Date), 101.5193115, 1, 1, 111671.24265)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (602, CAST(N'2024-04-17' AS Date), 66.695136, 7, 1, 73364.6496)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (603, CAST(N'2024-04-17' AS Date), 167.48463, 10, 1, 184233.093)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (604, CAST(N'2024-04-18' AS Date), 102.937716, 4, 1, 113231.4876)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (605, CAST(N'2024-04-18' AS Date), 68.6745654, 2, 1, 75542.02194)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (606, CAST(N'2024-04-18' AS Date), 176.5932525, 8, 1, 194252.57775)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (607, CAST(N'2024-04-19' AS Date), 100.44456, 1, 1, 110489.016)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (608, CAST(N'2024-04-19' AS Date), 67.89872, 6, 1, 74688.592)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (609, CAST(N'2024-04-19' AS Date), 170.5896, 10, 1, 187648.56)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (610, CAST(N'2024-04-20' AS Date), 99.9817773, 1, 1, 109979.95503)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (611, CAST(N'2024-04-20' AS Date), 68.2931736, 7, 1, 75122.49096)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (612, CAST(N'2024-04-20' AS Date), 171.3278815, 9, 1, 188460.66965)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (613, CAST(N'2024-04-21' AS Date), 103.588251, 4, 1, 113947.0761)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (614, CAST(N'2024-04-21' AS Date), 68.109808, 6, 1, 74920.7888)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (615, CAST(N'2024-04-21' AS Date), 167.38618, 3, 1, 184124.798)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (616, CAST(N'2024-04-22' AS Date), 104.8236768, 1, 1, 115306.04448)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (617, CAST(N'2024-04-22' AS Date), 69.5714856, 2, 1, 76528.63416)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (618, CAST(N'2024-04-22' AS Date), 177.003033, 8, 1, 194703.3363)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (619, CAST(N'2024-04-23' AS Date), 101.3952456, 5, 1, 111534.77016)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (620, CAST(N'2024-04-23' AS Date), 67.927512, 6, 1, 74720.2632)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (621, CAST(N'2024-04-23' AS Date), 171.851094, 10, 1, 189036.2034)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (622, CAST(N'2024-04-24' AS Date), 104.2725504, 1, 1, 114699.80544)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (623, CAST(N'2024-04-24' AS Date), 68.8839168, 7, 1, 75772.30848)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (624, CAST(N'2024-04-24' AS Date), 175.15264, 10, 1, 192667.904)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (625, CAST(N'2024-04-25' AS Date), 102.2669892, 1, 1, 112493.68812)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (626, CAST(N'2024-04-25' AS Date), 68.324178, 2, 1, 75156.5958)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (627, CAST(N'2024-04-25' AS Date), 171.402147, 3, 1, 188542.3617)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (628, CAST(N'2024-04-26' AS Date), 102.8716296, 4, 1, 113158.79256)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (629, CAST(N'2024-04-26' AS Date), 67.7302216, 6, 1, 74503.24376)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (630, CAST(N'2024-04-26' AS Date), 174.32352, 3, 1, 191755.872)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (631, CAST(N'2024-04-27' AS Date), 100.4959728, 1, 1, 110545.57008)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (632, CAST(N'2024-04-27' AS Date), 66.474747, 7, 1, 73122.2217)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (633, CAST(N'2024-04-27' AS Date), 167.6799195, 8, 1, 184447.91145)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (634, CAST(N'2024-04-28' AS Date), 102.480633, 5, 1, 112728.6963)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (635, CAST(N'2024-04-28' AS Date), 69.1495866, 2, 1, 76064.54526)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (636, CAST(N'2024-04-28' AS Date), 170.5098195, 9, 1, 187560.80145)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (637, CAST(N'2024-04-29' AS Date), 98.6909508, 1, 1, 108560.04588)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (638, CAST(N'2024-04-29' AS Date), 68.26014, 6, 1, 75086.154)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (639, CAST(N'2024-04-29' AS Date), 171.056862, 10, 1, 188162.5482)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (640, CAST(N'2024-04-30' AS Date), 98.2474272, 1, 1, 108072.16992)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (641, CAST(N'2024-04-30' AS Date), 65.7476352, 7, 1, 72322.39872)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (642, CAST(N'2024-04-30' AS Date), 166.222368, 10, 1, 182844.6048)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (643, CAST(N'2024-05-01' AS Date), 89.705412, 1, 1, 98675.9532)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (644, CAST(N'2024-05-01' AS Date), 90.25185, 6, 1, 99277.035)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (645, CAST(N'2024-05-01' AS Date), 175.612632, 3, 1, 193173.8952)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (646, CAST(N'2024-05-02' AS Date), 85.838953, 4, 1, 94422.8483)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (647, CAST(N'2024-05-02' AS Date), 85.1398825, 2, 1, 93653.87075)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (648, CAST(N'2024-05-02' AS Date), 173.731965, 8, 1, 191105.1615)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (649, CAST(N'2024-05-03' AS Date), 86.9633825, 1, 1, 95659.72075)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (650, CAST(N'2024-05-03' AS Date), 86.9633825, 6, 1, 95659.72075)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (651, CAST(N'2024-05-03' AS Date), 173.2739, 3, 1, 190601.29)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (652, CAST(N'2024-05-04' AS Date), 83.1310425, 5, 1, 91444.14675)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (653, CAST(N'2024-05-04' AS Date), 83.8618275, 2, 1, 92248.01025)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (654, CAST(N'2024-05-04' AS Date), 165.76923, 9, 1, 182346.153)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (655, CAST(N'2024-05-05' AS Date), 86.4654275, 1, 1, 95111.97025)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (656, CAST(N'2024-05-05' AS Date), 85.82695125, 7, 1, 94409.646375)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (657, CAST(N'2024-05-05' AS Date), 173.630555, 8, 1, 190993.6105)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (658, CAST(N'2024-05-06' AS Date), 83.416749, 5, 1, 91758.4239)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (659, CAST(N'2024-05-06' AS Date), 81.889365, 2, 1, 90078.3015)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (660, CAST(N'2024-05-06' AS Date), 162.433968, 3, 1, 178677.3648)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (661, CAST(N'2024-05-07' AS Date), 85.7001915, 1, 1, 94270.21065)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (662, CAST(N'2024-05-07' AS Date), 86.82201425, 6, 1, 95504.215675)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (663, CAST(N'2024-05-07' AS Date), 172.42504, 3, 1, 189667.544)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (664, CAST(N'2024-05-08' AS Date), 84.3442565, 1, 1, 92778.68215)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (665, CAST(N'2024-05-08' AS Date), 86.9819125, 7, 1, 95680.10375)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (666, CAST(N'2024-05-08' AS Date), 170.632049, 8, 1, 187695.2539)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (667, CAST(N'2024-05-09' AS Date), 87.10515, 4, 1, 95815.665)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (668, CAST(N'2024-05-09' AS Date), 86.8675905, 2, 1, 95554.34955)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (669, CAST(N'2024-05-09' AS Date), 171.482765, 3, 1, 188631.0415)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (670, CAST(N'2024-05-10' AS Date), 81.5524125, 1, 1, 89707.65375)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (671, CAST(N'2024-05-10' AS Date), 81.145688, 6, 1, 89260.2568)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (672, CAST(N'2024-05-10' AS Date), 164.449506, 10, 1, 180894.4566)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (673, CAST(N'2024-05-11' AS Date), 84.897825, 5, 1, 93387.6075)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (674, CAST(N'2024-05-11' AS Date), 85.018799, 2, 1, 93520.6789)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (675, CAST(N'2024-05-11' AS Date), 168.689602, 9, 1, 185558.5622)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (676, CAST(N'2024-05-12' AS Date), 87.6719375, 1, 1, 96439.13125)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (677, CAST(N'2024-05-12' AS Date), 87.8808875, 7, 1, 96668.97625)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (678, CAST(N'2024-05-12' AS Date), 172.348925, 8, 1, 189583.8175)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (679, CAST(N'2024-05-13' AS Date), 84.468459, 5, 1, 92915.3049)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (680, CAST(N'2024-05-13' AS Date), 86.73624225, 2, 1, 95409.866475)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (681, CAST(N'2024-05-13' AS Date), 174.1623045, 3, 1, 191578.53495)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (682, CAST(N'2024-05-14' AS Date), 86.194512, 1, 1, 94813.9632)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (683, CAST(N'2024-05-14' AS Date), 86.168403, 2, 1, 94785.2433)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (684, CAST(N'2024-05-14' AS Date), 172.737144, 10, 1, 190010.8584)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (685, CAST(N'2024-05-15' AS Date), 82.61781, 4, 1, 90879.591)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (686, CAST(N'2024-05-15' AS Date), 84.626292, 6, 1, 93088.9212)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (687, CAST(N'2024-05-15' AS Date), 170.197752, 3, 1, 187217.5272)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (688, CAST(N'2024-05-16' AS Date), 84.614626, 1, 1, 93076.0886)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (689, CAST(N'2024-05-16' AS Date), 84.841008, 2, 1, 93325.1088)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (690, CAST(N'2024-05-16' AS Date), 173.774306, 8, 1, 191151.7366)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (691, CAST(N'2024-05-17' AS Date), 83.3809015, 1, 1, 91718.99165)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (692, CAST(N'2024-05-17' AS Date), 85.0377585, 7, 1, 93541.53435)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (693, CAST(N'2024-05-17' AS Date), 168.333255, 9, 1, 185166.5805)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (694, CAST(N'2024-05-18' AS Date), 81.25951775, 5, 1, 89385.469525)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (695, CAST(N'2024-05-18' AS Date), 81.65740175, 2, 1, 89823.141925)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (696, CAST(N'2024-05-18' AS Date), 161.6569535, 3, 1, 177822.64885)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (697, CAST(N'2024-05-19' AS Date), 84.57841875, 1, 1, 93036.260625)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (698, CAST(N'2024-05-19' AS Date), 84.10596075, 6, 1, 92516.556825)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (699, CAST(N'2024-05-19' AS Date), 165.6471495, 3, 1, 182211.86445)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (700, CAST(N'2024-05-20' AS Date), 85.18636, 4, 1, 93704.996)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (701, CAST(N'2024-05-20' AS Date), 84.83951, 2, 1, 93323.461)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (702, CAST(N'2024-05-20' AS Date), 170.4594325, 3, 1, 187505.37575)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (703, CAST(N'2024-05-21' AS Date), 86.90425825, 1, 1, 95594.684075)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (704, CAST(N'2024-05-21' AS Date), 86.83394025, 6, 1, 95517.334275)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (705, CAST(N'2024-05-21' AS Date), 176.814611, 8, 1, 194496.0721)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (706, CAST(N'2024-05-22' AS Date), 83.7912985, 5, 1, 92170.42835)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (707, CAST(N'2024-05-22' AS Date), 82.572791, 7, 1, 90830.0701)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (708, CAST(N'2024-05-22' AS Date), 166.120388, 9, 1, 182732.4268)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (709, CAST(N'2024-05-23' AS Date), 83.901103, 1, 1, 92291.2133)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (710, CAST(N'2024-05-23' AS Date), 84.01327025, 2, 1, 92414.597275)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (711, CAST(N'2024-05-23' AS Date), 167.491589, 10, 1, 184240.7479)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (712, CAST(N'2024-05-24' AS Date), 87.8332075, 5, 1, 96616.52825)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (713, CAST(N'2024-05-24' AS Date), 88.8903775, 7, 1, 97779.41525)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (714, CAST(N'2024-05-24' AS Date), 176.476912, 3, 1, 194124.6032)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (715, CAST(N'2024-05-25' AS Date), 83.52718, 1, 1, 91879.898)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (716, CAST(N'2024-05-25' AS Date), 83.6907225, 2, 1, 92059.79475)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (717, CAST(N'2024-05-25' AS Date), 171.031025, 3, 1, 188134.1275)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (718, CAST(N'2024-05-26' AS Date), 87.810359, 4, 1, 96591.3949)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (719, CAST(N'2024-05-26' AS Date), 87.58035, 6, 1, 96338.385)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (720, CAST(N'2024-05-26' AS Date), 178.398519, 8, 1, 196238.3709)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (721, CAST(N'2024-05-27' AS Date), 81.61641, 5, 1, 89778.051)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (722, CAST(N'2024-05-27' AS Date), 84.3537505, 7, 1, 92789.12555)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (723, CAST(N'2024-05-27' AS Date), 168.1533155, 9, 1, 184968.64705)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (724, CAST(N'2024-05-28' AS Date), 88.1158235, 1, 1, 96927.40585)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (725, CAST(N'2024-05-28' AS Date), 88.3269215, 2, 1, 97159.61365)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (726, CAST(N'2024-05-28' AS Date), 172.6605725, 3, 1, 189926.62975)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (727, CAST(N'2024-05-29' AS Date), 82.05983775, 5, 1, 90265.821525)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (728, CAST(N'2024-05-29' AS Date), 83.371926, 7, 1, 91709.1186)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (729, CAST(N'2024-05-29' AS Date), 162.8493735, 3, 1, 179134.31085)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (730, CAST(N'2024-05-30' AS Date), 85.4451675, 1, 1, 93989.68425)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (731, CAST(N'2024-05-30' AS Date), 86.73979125, 6, 1, 95413.770375)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (732, CAST(N'2024-05-30' AS Date), 171.75921, 10, 1, 188935.131)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (733, CAST(N'2024-05-31' AS Date), 83.21787525, 4, 1, 91539.662775)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (734, CAST(N'2024-05-31' AS Date), 82.1469795, 2, 1, 90361.67745)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (735, CAST(N'2024-05-31' AS Date), 165.8286285, 8, 1, 182411.49135)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (736, CAST(N'2024-06-01' AS Date), 67.8448416, 5, 1, 74629.32576)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (737, CAST(N'2024-06-01' AS Date), 140.67780846, 2, 1, 154745.589306)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (738, CAST(N'2024-06-01' AS Date), 130.92717924, 9, 1, 144019.897164)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (739, CAST(N'2024-06-02' AS Date), 65.7045846, 5, 1, 72275.04306)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (740, CAST(N'2024-06-02' AS Date), 134.44657065, 6, 1, 147891.227715)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (741, CAST(N'2024-06-02' AS Date), 130.08842847, 3, 1, 143097.271317)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (742, CAST(N'2024-06-03' AS Date), 69.1439376, 1, 1, 76058.33136)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (743, CAST(N'2024-06-03' AS Date), 140.75572568, 7, 1, 154831.298248)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (744, CAST(N'2024-06-03' AS Date), 132.37041168, 3, 1, 145607.452848)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (745, CAST(N'2024-06-04' AS Date), 69.6432828, 4, 1, 76607.61108)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (746, CAST(N'2024-06-04' AS Date), 145.18683102, 2, 1, 159705.514122)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (747, CAST(N'2024-06-04' AS Date), 133.20304686, 3, 1, 146523.351546)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (748, CAST(N'2024-06-05' AS Date), 71.638385, 1, 1, 78802.2235)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (749, CAST(N'2024-06-05' AS Date), 148.1113725, 6, 1, 162922.50975)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (750, CAST(N'2024-06-05' AS Date), 137.84440215, 8, 1, 151628.842365)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (751, CAST(N'2024-06-06' AS Date), 68.3333544, 1, 1, 75166.68984)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (752, CAST(N'2024-06-06' AS Date), 139.30842322, 2, 1, 153239.265542)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (753, CAST(N'2024-06-06' AS Date), 134.17483014, 3, 1, 147592.313154)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (754, CAST(N'2024-06-07' AS Date), 68.4709632, 5, 1, 75318.05952)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (755, CAST(N'2024-06-07' AS Date), 139.16468296, 7, 1, 153081.151256)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (756, CAST(N'2024-06-07' AS Date), 131.11300488, 3, 1, 144224.305368)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (757, CAST(N'2024-06-08' AS Date), 70.836444, 4, 1, 77920.0884)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (758, CAST(N'2024-06-08' AS Date), 143.307792, 2, 1, 157638.5712)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (759, CAST(N'2024-06-08' AS Date), 135.1903527, 9, 1, 148709.38797)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (760, CAST(N'2024-06-09' AS Date), 67.4017806, 1, 1, 74141.95866)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (761, CAST(N'2024-06-09' AS Date), 138.15943922, 6, 1, 151975.383142)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (762, CAST(N'2024-06-09' AS Date), 134.70477735, 10, 1, 148175.255085)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (763, CAST(N'2024-06-10' AS Date), 65.5449498, 1, 1, 72099.44478)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (764, CAST(N'2024-06-10' AS Date), 133.46434431, 2, 1, 146810.778741)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (765, CAST(N'2024-06-10' AS Date), 127.43531658, 8, 1, 140178.848238)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (766, CAST(N'2024-06-11' AS Date), 69.845925, 5, 1, 76830.5175)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (767, CAST(N'2024-06-11' AS Date), 145.9968221, 6, 1, 160596.50431)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (768, CAST(N'2024-06-11' AS Date), 136.39362945, 3, 1, 150032.992395)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (769, CAST(N'2024-06-12' AS Date), 65.7661924, 1, 1, 72342.81164)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (770, CAST(N'2024-06-12' AS Date), 137.13539124, 7, 1, 150848.930364)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (771, CAST(N'2024-06-12' AS Date), 132.60809172, 3, 1, 145868.900892)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (772, CAST(N'2024-06-13' AS Date), 67.4299512, 4, 1, 74172.94632)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (773, CAST(N'2024-06-13' AS Date), 141.03719847, 2, 1, 155140.918317)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (774, CAST(N'2024-06-13' AS Date), 134.93521431, 9, 1, 148428.735741)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (775, CAST(N'2024-06-14' AS Date), 68.1602668, 1, 1, 74976.29348)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (776, CAST(N'2024-06-14' AS Date), 140.07182518, 6, 1, 154079.007698)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (777, CAST(N'2024-06-14' AS Date), 134.0825967, 3, 1, 147490.85637)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (778, CAST(N'2024-06-15' AS Date), 66.5331436, 5, 1, 73186.45796)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (779, CAST(N'2024-06-15' AS Date), 140.05860022, 7, 1, 154064.460242)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (780, CAST(N'2024-06-15' AS Date), 131.9453226, 3, 1, 145139.85486)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (781, CAST(N'2024-06-16' AS Date), 67.84333, 4, 1, 74627.663)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (782, CAST(N'2024-06-16' AS Date), 136.43037328, 2, 1, 150073.410608)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (783, CAST(N'2024-06-16' AS Date), 134.13395346, 3, 1, 147547.348806)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (784, CAST(N'2024-06-17' AS Date), 71.1323316, 1, 1, 78245.56476)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (785, CAST(N'2024-06-17' AS Date), 141.09920031, 6, 1, 155209.120341)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (786, CAST(N'2024-06-17' AS Date), 133.94158869, 8, 1, 147335.747559)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (787, CAST(N'2024-06-18' AS Date), 68.892408, 1, 1, 75781.6488)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (788, CAST(N'2024-06-18' AS Date), 143.5491057, 2, 1, 157904.01627)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (789, CAST(N'2024-06-18' AS Date), 131.7681846, 3, 1, 144945.00306)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (790, CAST(N'2024-06-19' AS Date), 68.558448, 4, 1, 75414.2928)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (791, CAST(N'2024-06-19' AS Date), 139.5562428, 6, 1, 153511.86708)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (792, CAST(N'2024-06-19' AS Date), 128.9474784, 3, 1, 141842.22624)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (793, CAST(N'2024-06-20' AS Date), 70.0228446, 1, 1, 77025.12906)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (794, CAST(N'2024-06-20' AS Date), 142.79199642, 6, 1, 157071.196062)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (795, CAST(N'2024-06-20' AS Date), 131.92487334, 9, 1, 145117.360674)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (796, CAST(N'2024-06-21' AS Date), 69.135872, 5, 1, 76049.4592)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (797, CAST(N'2024-06-21' AS Date), 141.4820784, 2, 1, 155630.28624)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (798, CAST(N'2024-06-21' AS Date), 137.2282704, 8, 1, 150951.09744)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (799, CAST(N'2024-06-22' AS Date), 69.720314, 1, 1, 76692.3454)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (800, CAST(N'2024-06-22' AS Date), 144.07017265, 7, 1, 158477.189915)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (801, CAST(N'2024-06-22' AS Date), 136.3401429, 3, 1, 149974.15719)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (802, CAST(N'2024-06-23' AS Date), 69.127968, 1, 1, 76040.7648)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (803, CAST(N'2024-06-23' AS Date), 140.89143978, 6, 1, 154980.583758)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (804, CAST(N'2024-06-23' AS Date), 135.2105118, 3, 1, 148731.56298)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (805, CAST(N'2024-06-24' AS Date), 68.9553064, 4, 1, 75850.83704)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (806, CAST(N'2024-06-24' AS Date), 143.55754514, 2, 1, 157913.299654)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (807, CAST(N'2024-06-24' AS Date), 139.33930764, 10, 1, 153273.238404)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (808, CAST(N'2024-06-25' AS Date), 66.3406128, 1, 1, 72974.67408)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (809, CAST(N'2024-06-25' AS Date), 136.025946, 6, 1, 149628.5406)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (810, CAST(N'2024-06-25' AS Date), 131.97175992, 3, 1, 145168.935912)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (811, CAST(N'2024-06-26' AS Date), 66.8270346, 5, 1, 73509.73806)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (812, CAST(N'2024-06-26' AS Date), 139.4614221, 6, 1, 153407.56431)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (813, CAST(N'2024-06-26' AS Date), 131.5982187, 3, 1, 144758.04057)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (814, CAST(N'2024-06-27' AS Date), 68.818998, 1, 1, 75700.8978)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (815, CAST(N'2024-06-27' AS Date), 138.5328008, 7, 1, 152386.08088)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (816, CAST(N'2024-06-27' AS Date), 129.9553008, 8, 1, 142950.83088)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (817, CAST(N'2024-06-28' AS Date), 68.587648, 5, 1, 75446.4128)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (818, CAST(N'2024-06-28' AS Date), 137.5821256, 2, 1, 151340.33816)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (819, CAST(N'2024-06-28' AS Date), 129.3533826, 9, 1, 142288.72086)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (820, CAST(N'2024-06-29' AS Date), 67.8545648, 1, 1, 74640.02128)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (821, CAST(N'2024-06-29' AS Date), 140.65812354, 6, 1, 154723.935894)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (822, CAST(N'2024-06-29' AS Date), 133.6352589, 8, 1, 146998.78479)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (823, CAST(N'2024-06-30' AS Date), 68.4104064, 1, 1, 75251.44704)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (824, CAST(N'2024-06-30' AS Date), 141.28343586, 2, 1, 155411.779446)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (825, CAST(N'2024-06-30' AS Date), 132.72134148, 3, 1, 145993.475628)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (826, CAST(N'2024-10-01' AS Date), 108.7003176, 1, 2, 145993.475628)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (827, CAST(N'2024-10-01' AS Date), 71.7820044, 7, 2, 119570.34936)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (828, CAST(N'2024-10-01' AS Date), 177.310274, 3, 2, 78960.20484)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (829, CAST(N'2024-10-02' AS Date), 104.7694758, 4, 2, 195041.3014)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (830, CAST(N'2024-10-02' AS Date), 71.8972342, 7, 2, 115246.42338)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (831, CAST(N'2024-10-02' AS Date), 180.7145725, 10, 2, 79086.95762)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (832, CAST(N'2024-10-03' AS Date), 110.1996549, 1, 2, 198786.02975)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (833, CAST(N'2024-10-03' AS Date), 72.6020394, 6, 2, 121219.62039)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (834, CAST(N'2024-10-03' AS Date), 181.596666, 3, 2, 79862.24334)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (835, CAST(N'2024-10-04' AS Date), 107.4866463, 4, 2, 199756.3326)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (836, CAST(N'2024-10-04' AS Date), 70.6341834, 2, 2, 118235.31093)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (837, CAST(N'2024-10-04' AS Date), 178.131492, 9, 2, 77697.60174)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (838, CAST(N'2024-10-05' AS Date), 109.2937404, 5, 2, 195944.6412)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (839, CAST(N'2024-10-05' AS Date), 71.632405, 2, 2, 120223.11444)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (840, CAST(N'2024-10-05' AS Date), 179.0810125, 8, 2, 78795.6455)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (841, CAST(N'2024-10-06' AS Date), 106.421445, 1, 2, 196989.11375)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (842, CAST(N'2024-10-06' AS Date), 71.596824, 6, 2, 117063.5895)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (843, CAST(N'2024-10-06' AS Date), 179.95515, 3, 2, 78756.5064)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (844, CAST(N'2024-10-07' AS Date), 104.6107764, 1, 2, 197950.665)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (845, CAST(N'2024-10-07' AS Date), 69.5298636, 7, 2, 115071.85404)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (846, CAST(N'2024-10-07' AS Date), 173.3506875, 3, 2, 76482.84996)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (847, CAST(N'2024-10-08' AS Date), 104.5214625, 4, 2, 190685.75625)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (848, CAST(N'2024-10-08' AS Date), 69.84255, 2, 2, 114973.60875)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (849, CAST(N'2024-10-08' AS Date), 172.990625, 3, 2, 76826.805)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (850, CAST(N'2024-10-09' AS Date), 105.035475, 1, 2, 190289.6875)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (851, CAST(N'2024-10-09' AS Date), 69.95256, 6, 2, 115539.0225)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (852, CAST(N'2024-10-09' AS Date), 172.926425, 9, 2, 76947.816)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (853, CAST(N'2024-10-10' AS Date), 107.5407822, 1, 2, 190219.0675)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (854, CAST(N'2024-10-10' AS Date), 71.1655392, 2, 2, 118294.86042)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (855, CAST(N'2024-10-10' AS Date), 180.0378195, 3, 2, 78282.09312)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (856, CAST(N'2024-10-11' AS Date), 103.7498694, 5, 2, 198041.60145)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (857, CAST(N'2024-10-11' AS Date), 68.879145, 6, 2, 114124.85634)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (858, CAST(N'2024-10-11' AS Date), 176.176378, 8, 2, 75767.0595)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (859, CAST(N'2024-10-12' AS Date), 107.0104491, 1, 2, 193794.0158)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (860, CAST(N'2024-10-12' AS Date), 71.0032812, 7, 2, 117711.49401)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (861, CAST(N'2024-10-12' AS Date), 178.3148955, 3, 2, 78103.60932)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (862, CAST(N'2024-10-13' AS Date), 107.953968, 1, 2, 196146.38505)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (863, CAST(N'2024-10-13' AS Date), 70.877344, 2, 2, 118749.3648)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (864, CAST(N'2024-10-13' AS Date), 178.68404, 3, 2, 77965.0784)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (865, CAST(N'2024-10-14' AS Date), 106.4476029, 4, 2, 196552.444)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (866, CAST(N'2024-10-14' AS Date), 71.3283586, 6, 2, 117092.36319)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (867, CAST(N'2024-10-14' AS Date), 178.629693, 3, 2, 78461.19446)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (868, CAST(N'2024-10-15' AS Date), 110.7959106, 4, 2, 196492.6623)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (869, CAST(N'2024-10-15' AS Date), 74.1209734, 2, 2, 121875.50166)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (870, CAST(N'2024-10-15' AS Date), 178.1789475, 3, 2, 81533.07074)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (871, CAST(N'2024-10-16' AS Date), 111.673848, 1, 2, 195996.84225)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (872, CAST(N'2024-10-16' AS Date), 74.486412, 6, 2, 122841.2328)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (873, CAST(N'2024-10-16' AS Date), 182.9256, 9, 2, 81935.0532)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (874, CAST(N'2024-10-17' AS Date), 111.4385046, 1, 2, 201218.16)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (875, CAST(N'2024-10-17' AS Date), 74.9850562, 7, 2, 122582.35506)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (876, CAST(N'2024-10-17' AS Date), 183.9617985, 8, 2, 82483.56182)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (877, CAST(N'2024-10-18' AS Date), 103.9971756, 5, 2, 202357.97835)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (878, CAST(N'2024-10-18' AS Date), 68.4918816, 2, 2, 114396.89316)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (879, CAST(N'2024-10-18' AS Date), 171.670654, 3, 2, 75341.06976)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (880, CAST(N'2024-10-19' AS Date), 104.473929, 5, 2, 188837.7194)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (881, CAST(N'2024-10-19' AS Date), 69.9857214, 6, 2, 114921.3219)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (882, CAST(N'2024-10-19' AS Date), 178.6507765, 3, 2, 76984.29354)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (883, CAST(N'2024-10-20' AS Date), 104.6217354, 1, 2, 196515.85415)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (884, CAST(N'2024-10-20' AS Date), 68.6743512, 7, 2, 115083.90894)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (885, CAST(N'2024-10-20' AS Date), 174.055882, 3, 2, 75541.78632)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (886, CAST(N'2024-10-21' AS Date), 108.418356, 4, 2, 191461.4702)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (887, CAST(N'2024-10-21' AS Date), 69.671936, 6, 2, 119260.1916)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (888, CAST(N'2024-10-21' AS Date), 178.351705, 8, 2, 76639.1296)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (889, CAST(N'2024-10-22' AS Date), 105.9211602, 1, 2, 196186.8755)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (890, CAST(N'2024-10-22' AS Date), 71.2677416, 2, 2, 116513.27622)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (891, CAST(N'2024-10-22' AS Date), 174.398384, 8, 2, 78394.51576)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (892, CAST(N'2024-10-23' AS Date), 107.9848602, 1, 2, 191838.2224)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (893, CAST(N'2024-10-23' AS Date), 72.8115066, 6, 2, 118783.34622)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (894, CAST(N'2024-10-23' AS Date), 181.233073, 10, 2, 80092.65726)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (895, CAST(N'2024-10-24' AS Date), 107.837892, 5, 2, 199356.3803)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (896, CAST(N'2024-10-24' AS Date), 71.4392352, 7, 2, 118621.6812)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (897, CAST(N'2024-10-24' AS Date), 179.388504, 3, 2, 78583.15872)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (898, CAST(N'2024-10-25' AS Date), 110.6749782, 4, 2, 197327.3544)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (899, CAST(N'2024-10-25' AS Date), 73.8868432, 2, 2, 121742.47602)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (900, CAST(N'2024-10-25' AS Date), 182.128998, 9, 2, 81275.52752)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (901, CAST(N'2024-10-26' AS Date), 111.1933698, 1, 2, 200341.8978)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (902, CAST(N'2024-10-26' AS Date), 72.3422314, 7, 2, 122312.70678)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (903, CAST(N'2024-10-26' AS Date), 182.565058, 3, 2, 79576.45454)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (904, CAST(N'2024-10-27' AS Date), 107.5430451, 5, 2, 200821.5638)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (905, CAST(N'2024-10-27' AS Date), 72.8440696, 2, 2, 118297.34961)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (906, CAST(N'2024-10-27' AS Date), 179.805445, 8, 2, 80128.47656)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (907, CAST(N'2024-10-28' AS Date), 108.2043576, 1, 2, 197785.9895)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (908, CAST(N'2024-10-28' AS Date), 71.4104928, 6, 2, 119024.79336)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (909, CAST(N'2024-10-28' AS Date), 175.5981, 3, 2, 78551.54208)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (910, CAST(N'2024-10-29' AS Date), 105.6377088, 4, 2, 193157.91)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (911, CAST(N'2024-10-29' AS Date), 69.938427, 7, 2, 116201.47968)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (912, CAST(N'2024-10-29' AS Date), 177.649953, 3, 2, 76932.2697)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (913, CAST(N'2024-10-30' AS Date), 108.2746962, 1, 2, 195414.9483)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (914, CAST(N'2024-10-30' AS Date), 72.4878264, 6, 2, 119102.16582)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (915, CAST(N'2024-10-30' AS Date), 182.297148, 3, 2, 79736.60904)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (916, CAST(N'2024-10-31' AS Date), 105.873411, 1, 2, 200526.8628)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (917, CAST(N'2024-10-31' AS Date), 70.949706, 2, 2, 116460.7521)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (918, CAST(N'2024-10-31' AS Date), 176.667665, 9, 2, 78044.6766)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (919, CAST(N'2024-11-01' AS Date), 89.316084, 5, 2, 194334.4315)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (920, CAST(N'2024-11-01' AS Date), 89.537734, 2, 2, 98247.6924)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (921, CAST(N'2024-11-01' AS Date), 175.28082, 8, 2, 98491.5074)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (922, CAST(N'2024-11-02' AS Date), 90.731517, 1, 2, 192808.902)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (923, CAST(N'2024-11-02' AS Date), 91.76131425, 6, 2, 99804.6687)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (924, CAST(N'2024-11-02' AS Date), 179.7679695, 3, 2, 100937.445675)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (925, CAST(N'2024-11-03' AS Date), 90.33299925, 1, 2, 197744.76645)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (926, CAST(N'2024-11-03' AS Date), 90.66345225, 7, 2, 99366.299175)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (927, CAST(N'2024-11-03' AS Date), 182.373339, 3, 2, 99729.797475)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (928, CAST(N'2024-11-04' AS Date), 85.6341065, 4, 2, 200610.6729)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (929, CAST(N'2024-11-04' AS Date), 85.2672155, 7, 2, 94197.51715)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (930, CAST(N'2024-11-04' AS Date), 169.870533, 3, 2, 93793.93705)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (931, CAST(N'2024-11-05' AS Date), 88.020975, 1, 2, 186857.5863)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (932, CAST(N'2024-11-05' AS Date), 89.043738, 6, 2, 96823.0725)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (933, CAST(N'2024-11-05' AS Date), 176.58501, 3, 2, 97948.1118)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (934, CAST(N'2024-11-06' AS Date), 88.345663, 5, 2, 194243.511)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (935, CAST(N'2024-11-06' AS Date), 87.85405925, 2, 2, 97180.2293)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (936, CAST(N'2024-11-06' AS Date), 177.2097445, 9, 2, 96639.465175)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (937, CAST(N'2024-11-07' AS Date), 90.29765, 1, 2, 194930.71895)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (938, CAST(N'2024-11-07' AS Date), 89.487928, 6, 2, 99327.415)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (939, CAST(N'2024-11-07' AS Date), 180.631692, 10, 2, 98436.7208)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (940, CAST(N'2024-11-08' AS Date), 89.19227025, 1, 2, 198694.8612)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (941, CAST(N'2024-11-08' AS Date), 89.49793875, 7, 2, 98111.497275)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (942, CAST(N'2024-11-08' AS Date), 180.560181, 3, 2, 98447.732625)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (943, CAST(N'2024-11-09' AS Date), 88.376117, 4, 2, 198616.1991)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (944, CAST(N'2024-11-09' AS Date), 88.5845085, 6, 2, 97213.7287)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (945, CAST(N'2024-11-09' AS Date), 175.991152, 3, 2, 97442.95935)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (946, CAST(N'2024-11-10' AS Date), 87.78134375, 5, 2, 193590.2672)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (947, CAST(N'2024-11-10' AS Date), 86.73241225, 2, 2, 96559.478125)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (948, CAST(N'2024-11-10' AS Date), 178.816153, 9, 2, 95405.653475)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (949, CAST(N'2024-11-11' AS Date), 87.08648025, 1, 2, 196697.7683)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (950, CAST(N'2024-11-11' AS Date), 86.97899925, 6, 2, 95795.128275)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (951, CAST(N'2024-11-11' AS Date), 178.4722005, 3, 2, 95676.899175)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (952, CAST(N'2024-11-12' AS Date), 86.387175, 4, 2, 196319.42055)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (953, CAST(N'2024-11-12' AS Date), 84.96927, 6, 2, 95025.8925)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (954, CAST(N'2024-11-12' AS Date), 173.106945, 3, 2, 93466.197)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (955, CAST(N'2024-11-13' AS Date), 89.50156, 1, 2, 190417.6395)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (956, CAST(N'2024-11-13' AS Date), 89.08388, 2, 2, 98451.716)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (957, CAST(N'2024-11-13' AS Date), 180.4196, 8, 2, 97992.268)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (958, CAST(N'2024-11-14' AS Date), 88.74057875, 4, 2, 198461.56)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (959, CAST(N'2024-11-14' AS Date), 89.206145, 2, 2, 97614.636625)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (960, CAST(N'2024-11-14' AS Date), 182.1185625, 3, 2, 98126.7595)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (961, CAST(N'2024-11-15' AS Date), 91.1960725, 1, 2, 200330.41875)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (962, CAST(N'2024-11-15' AS Date), 92.097348, 6, 2, 100315.67975)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (963, CAST(N'2024-11-15' AS Date), 182.317813, 3, 2, 101307.0828)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (964, CAST(N'2024-11-16' AS Date), 86.139922, 5, 2, 200549.5943)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (965, CAST(N'2024-11-16' AS Date), 86.2011755, 7, 2, 94753.9142)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (966, CAST(N'2024-11-16' AS Date), 170.739756, 9, 2, 94821.29305)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (967, CAST(N'2024-11-17' AS Date), 88.9745845, 1, 2, 187813.7316)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (968, CAST(N'2024-11-17' AS Date), 87.865397, 2, 2, 97872.04295)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (969, CAST(N'2024-11-17' AS Date), 175.216131, 3, 2, 96651.9367)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (970, CAST(N'2024-11-18' AS Date), 88.496661, 5, 2, 192737.7441)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (971, CAST(N'2024-11-18' AS Date), 88.076058, 6, 2, 97346.3271)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (972, CAST(N'2024-11-18' AS Date), 179.42745, 3, 2, 96883.6638)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (973, CAST(N'2024-11-19' AS Date), 86.1355255, 1, 2, 197370.195)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (974, CAST(N'2024-11-19' AS Date), 87.054748, 7, 2, 94749.07805)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (975, CAST(N'2024-11-19' AS Date), 170.835313, 9, 2, 95760.2228)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (976, CAST(N'2024-11-20' AS Date), 92.90712075, 4, 2, 187918.8443)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (977, CAST(N'2024-11-20' AS Date), 91.8251925, 6, 2, 102197.832825)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (978, CAST(N'2024-11-20' AS Date), 184.1497365, 8, 2, 101007.71175)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (979, CAST(N'2024-11-21' AS Date), 89.2439215, 1, 2, 202564.71015)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (980, CAST(N'2024-11-21' AS Date), 88.55633075, 2, 2, 98168.31365)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (981, CAST(N'2024-11-21' AS Date), 179.5058345, 8, 2, 97411.963825)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (982, CAST(N'2024-11-22' AS Date), 92.52016725, 5, 2, 197456.41795)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (983, CAST(N'2024-11-22' AS Date), 91.5176125, 6, 2, 101772.183975)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (984, CAST(N'2024-11-22' AS Date), 181.5083985, 3, 2, 100669.37375)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (985, CAST(N'2024-11-23' AS Date), 87.839093, 5, 2, 199659.23835)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (986, CAST(N'2024-11-23' AS Date), 88.273282, 7, 2, 96623.0023)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (987, CAST(N'2024-11-23' AS Date), 176.546564, 8, 2, 97100.6102)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (988, CAST(N'2024-11-24' AS Date), 88.708204, 1, 2, 194201.2204)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (989, CAST(N'2024-11-24' AS Date), 87.143701, 2, 2, 97579.0244)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (990, CAST(N'2024-11-24' AS Date), 171.600346, 9, 2, 95858.0711)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (991, CAST(N'2024-11-25' AS Date), 87.023508, 4, 2, 188760.3806)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (992, CAST(N'2024-11-25' AS Date), 87.86917425, 6, 2, 95725.8588)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (993, CAST(N'2024-11-25' AS Date), 177.038004, 3, 2, 96656.091675)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (994, CAST(N'2024-11-26' AS Date), 91.7308575, 1, 2, 194741.8044)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (995, CAST(N'2024-11-26' AS Date), 91.6939065, 6, 2, 100903.94325)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (996, CAST(N'2024-11-26' AS Date), 179.471007, 10, 2, 100863.29715)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (997, CAST(N'2024-11-27' AS Date), 89.06525375, 5, 2, 197418.1077)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (998, CAST(N'2024-11-27' AS Date), 89.62615225, 7, 2, 97971.779125)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (999, CAST(N'2024-11-27' AS Date), 179.4332395, 3, 2, 98588.767475)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1000, CAST(N'2024-11-28' AS Date), 87.902227, 1, 2, 197376.56345)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1001, CAST(N'2024-11-28' AS Date), 88.781777, 2, 2, 96692.4497)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1002, CAST(N'2024-11-28' AS Date), 174.924904, 3, 2, 97659.9547)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1003, CAST(N'2024-11-29' AS Date), 91.1707875, 5, 2, 192417.3944)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1004, CAST(N'2024-11-29' AS Date), 91.5924925, 2, 2, 100287.86625)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1005, CAST(N'2024-11-29' AS Date), 180.104705, 9, 2, 100751.74175)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1006, CAST(N'2024-11-30' AS Date), 88.3704465, 5, 2, 198115.1755)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1007, CAST(N'2024-11-30' AS Date), 85.0436415, 2, 2, 97207.49115)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1008, CAST(N'2024-11-30' AS Date), 170.4549825, 8, 2, 93548.00565)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1009, CAST(N'2024-12-01' AS Date), 69.1901682, 1, 2, 187500.48075)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1010, CAST(N'2024-12-01' AS Date), 142.22664168, 6, 2, 76109.18502)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1011, CAST(N'2024-12-01' AS Date), 134.73005013, 3, 2, 156449.305848)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1012, CAST(N'2024-12-02' AS Date), 73.651272, 4, 2, 148203.055143)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1013, CAST(N'2024-12-02' AS Date), 149.27414316, 7, 2, 81016.3992)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1014, CAST(N'2024-12-02' AS Date), 140.46490926, 3, 2, 164201.557476)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1015, CAST(N'2024-12-03' AS Date), 71.3119852, 1, 2, 154511.400186)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1016, CAST(N'2024-12-03' AS Date), 146.84936462, 2, 2, 78443.18372)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1017, CAST(N'2024-12-03' AS Date), 143.0665158, 3, 2, 161534.301082)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1018, CAST(N'2024-12-04' AS Date), 73.1214372, 5, 2, 157373.16738)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1019, CAST(N'2024-12-04' AS Date), 148.42467687, 6, 2, 80433.58092)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1020, CAST(N'2024-12-04' AS Date), 137.45900376, 3, 2, 163267.144557)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1021, CAST(N'2024-12-05' AS Date), 69.1267104, 1, 2, 151204.904136)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1022, CAST(N'2024-12-05' AS Date), 139.27287294, 7, 2, 76039.38144)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1023, CAST(N'2024-12-05' AS Date), 133.48219014, 8, 2, 153200.160234)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1024, CAST(N'2024-12-06' AS Date), 72.902772, 1, 2, 146830.409154)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1025, CAST(N'2024-12-06' AS Date), 148.05353052, 2, 2, 80193.0492)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1026, CAST(N'2024-12-06' AS Date), 140.05380168, 3, 2, 162858.883572)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1027, CAST(N'2024-12-07' AS Date), 69.119685, 4, 2, 154059.181848)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1028, CAST(N'2024-12-07' AS Date), 140.55322545, 6, 2, 76031.6535)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1029, CAST(N'2024-12-07' AS Date), 136.56239064, 9, 2, 154608.547995)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1030, CAST(N'2024-12-08' AS Date), 71.318848, 1, 2, 150218.629704)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1031, CAST(N'2024-12-08' AS Date), 147.20584076, 7, 2, 78450.7328)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1032, CAST(N'2024-12-08' AS Date), 137.2492407, 10, 2, 161926.424836)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1033, CAST(N'2024-12-09' AS Date), 70.4760024, 4, 2, 150974.16477)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1034, CAST(N'2024-12-09' AS Date), 145.68148536, 7, 2, 77523.60264)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1035, CAST(N'2024-12-09' AS Date), 138.43520964, 10, 2, 160249.633896)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1036, CAST(N'2024-12-10' AS Date), 72.5386634, 1, 2, 152278.730604)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1037, CAST(N'2024-12-10' AS Date), 150.76687854, 7, 2, 79792.52974)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1038, CAST(N'2024-12-10' AS Date), 139.4883906, 8, 2, 165843.566394)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1039, CAST(N'2024-12-11' AS Date), 74.7823664, 1, 2, 153437.22966)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1040, CAST(N'2024-12-11' AS Date), 151.69705292, 6, 2, 82260.60304)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1041, CAST(N'2024-12-11' AS Date), 141.88084092, 3, 2, 166866.758212)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1042, CAST(N'2024-12-12' AS Date), 71.4648592, 5, 2, 156068.925012)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1043, CAST(N'2024-12-12' AS Date), 147.75947032, 2, 2, 78611.34512)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1044, CAST(N'2024-12-12' AS Date), 139.28533164, 9, 2, 162535.417352)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1045, CAST(N'2024-12-13' AS Date), 72.365328, 4, 2, 153213.864804)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1046, CAST(N'2024-12-13' AS Date), 146.78100696, 2, 2, 79601.8608)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1047, CAST(N'2024-12-13' AS Date), 144.06657174, 9, 2, 161459.107656)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1048, CAST(N'2024-12-14' AS Date), 75.3311502, 1, 2, 158473.228914)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1049, CAST(N'2024-12-14' AS Date), 152.41650534, 2, 2, 82864.26522)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1050, CAST(N'2024-12-14' AS Date), 142.97969205, 3, 2, 167658.155874)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1051, CAST(N'2024-12-15' AS Date), 73.3653358, 4, 2, 157277.661255)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1052, CAST(N'2024-12-15' AS Date), 148.29356379, 7, 2, 80701.86938)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1053, CAST(N'2024-12-15' AS Date), 140.3301861, 8, 2, 163122.920169)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1054, CAST(N'2024-12-16' AS Date), 69.8182368, 1, 2, 154363.20471)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1055, CAST(N'2024-12-16' AS Date), 144.48896961, 6, 2, 76800.06048)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1056, CAST(N'2024-12-16' AS Date), 140.28173523, 3, 2, 158937.866571)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1057, CAST(N'2024-12-17' AS Date), 74.895402, 1, 2, 154309.908753)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1058, CAST(N'2024-12-17' AS Date), 149.1231951, 2, 2, 82384.9422)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1059, CAST(N'2024-12-17' AS Date), 144.2369214, 9, 2, 164035.51461)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1060, CAST(N'2024-12-18' AS Date), 69.565479, 1, 2, 158660.61354)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1061, CAST(N'2024-12-18' AS Date), 146.09248248, 7, 2, 76522.0269)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1062, CAST(N'2024-12-18' AS Date), 139.8809997, 3, 2, 160701.730728)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1063, CAST(N'2024-12-19' AS Date), 72.9882164, 4, 2, 153869.09967)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1064, CAST(N'2024-12-19' AS Date), 150.41001454, 7, 2, 80287.03804)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1065, CAST(N'2024-12-19' AS Date), 144.1631295, 9, 2, 165451.015994)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1066, CAST(N'2024-12-20' AS Date), 72.7191948, 1, 2, 158579.44245)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1067, CAST(N'2024-12-20' AS Date), 146.25354483, 6, 2, 79991.11428)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1068, CAST(N'2024-12-20' AS Date), 139.3580448, 3, 2, 160878.899313)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1069, CAST(N'2024-12-21' AS Date), 71.35394, 1, 2, 153293.84928)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1070, CAST(N'2024-12-21' AS Date), 146.58198968, 2, 2, 78489.334)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1071, CAST(N'2024-12-21' AS Date), 137.29423344, 8, 2, 161240.188648)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1072, CAST(N'2024-12-22' AS Date), 72.832277, 5, 2, 151023.656784)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1073, CAST(N'2024-12-22' AS Date), 145.23350583, 6, 2, 80115.5047)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1074, CAST(N'2024-12-22' AS Date), 140.46768645, 9, 2, 159756.856413)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1075, CAST(N'2024-12-23' AS Date), 71.724763, 1, 2, 154514.455095)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1076, CAST(N'2024-12-23' AS Date), 148.66368678, 2, 2, 78897.2393)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1077, CAST(N'2024-12-23' AS Date), 139.09613523, 10, 2, 163530.055458)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1078, CAST(N'2024-12-24' AS Date), 72.9332604, 4, 2, 153005.748753)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1079, CAST(N'2024-12-24' AS Date), 150.68244191, 7, 2, 80226.58644)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1080, CAST(N'2024-12-24' AS Date), 145.29652137, 9, 2, 165750.686101)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1081, CAST(N'2024-12-25' AS Date), 70.8378502, 1, 2, 159826.173507)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1082, CAST(N'2024-12-25' AS Date), 147.00911251, 2, 2, 77921.63522)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1083, CAST(N'2024-12-25' AS Date), 140.29237053, 3, 2, 161710.023761)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1084, CAST(N'2024-12-26' AS Date), 69.239699, 4, 2, 154321.607583)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1085, CAST(N'2024-12-26' AS Date), 143.47964965, 7, 2, 76163.6689)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1086, CAST(N'2024-12-26' AS Date), 134.54807535, 8, 2, 157827.614615)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1087, CAST(N'2024-12-27' AS Date), 71.3253086, 4, 2, 148002.882885)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1088, CAST(N'2024-12-27' AS Date), 147.93743328, 6, 2, 78457.83946)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1089, CAST(N'2024-12-27' AS Date), 138.62894409, 10, 2, 162731.176608)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1090, CAST(N'2024-12-28' AS Date), 69.9110748, 1, 2, 152491.838499)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1091, CAST(N'2024-12-28' AS Date), 145.70072748, 2, 2, 76902.18228)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1092, CAST(N'2024-12-28' AS Date), 135.96502374, 9, 2, 160270.800228)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1093, CAST(N'2024-12-29' AS Date), 72.430197, 4, 2, 149561.526114)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1094, CAST(N'2024-12-29' AS Date), 148.28897384, 7, 2, 79673.2167)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1095, CAST(N'2024-12-29' AS Date), 140.09542092, 3, 2, 163117.871224)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1096, CAST(N'2024-12-30' AS Date), 71.3221144, 1, 2, 154104.963012)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1097, CAST(N'2024-12-30' AS Date), 146.95905602, 6, 2, 78454.32584)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1098, CAST(N'2024-12-30' AS Date), 143.82136509, 9, 2, 161654.961622)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1099, CAST(N'2024-12-31' AS Date), 73.4367214, 5, 2, 158203.501599)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1100, CAST(N'2024-12-31' AS Date), 149.3438366, 7, 2, 80780.39354)
GO
INSERT [grupo03].[venta] ([ID_Venta], [Fecha_Venta], [Cantidad_Vendida], [ID_Cliente], [ID_Producto], [Precio_Final]) VALUES (1101, CAST(N'2024-12-31' AS Date), 141.9141087, 8, 2, 164278.22026)
GO
SET IDENTITY_INSERT [grupo03].[venta] OFF
GO
ALTER TABLE [grupo03].[inventario]  WITH CHECK ADD  CONSTRAINT [fk_pucp_inventario_pucp_produccion_diaria] FOREIGN KEY([ID_Produccion])
REFERENCES [grupo03].[produccion_diaria] ([ID_Produccion])
GO
ALTER TABLE [grupo03].[inventario] CHECK CONSTRAINT [fk_pucp_inventario_pucp_produccion_diaria]
GO
ALTER TABLE [grupo03].[inventario]  WITH CHECK ADD  CONSTRAINT [fk_pucp_inventario_pucp_venta] FOREIGN KEY([ID_Venta])
REFERENCES [grupo03].[venta] ([ID_Venta])
GO
ALTER TABLE [grupo03].[inventario] CHECK CONSTRAINT [fk_pucp_inventario_pucp_venta]
GO
ALTER TABLE [grupo03].[produccion_diaria]  WITH CHECK ADD  CONSTRAINT [fk_pucp_produccion_diaria_pucp_planta] FOREIGN KEY([ID_Planta])
REFERENCES [grupo03].[planta] ([ID_Planta])
GO
ALTER TABLE [grupo03].[produccion_diaria] CHECK CONSTRAINT [fk_pucp_produccion_diaria_pucp_planta]
GO
ALTER TABLE [grupo03].[produccion_diaria]  WITH CHECK ADD  CONSTRAINT [fk_pucp_produccion_diaria_pucp_producto] FOREIGN KEY([ID_Producto])
REFERENCES [grupo03].[producto] ([ID_Producto])
GO
ALTER TABLE [grupo03].[produccion_diaria] CHECK CONSTRAINT [fk_pucp_produccion_diaria_pucp_producto]
GO
ALTER TABLE [grupo03].[producto]  WITH CHECK ADD  CONSTRAINT [fk_pucp_producto_pucp_materia_prima] FOREIGN KEY([ID_Materia_Prima])
REFERENCES [grupo03].[materia_prima] ([ID_Materia_Prima])
GO
ALTER TABLE [grupo03].[producto] CHECK CONSTRAINT [fk_pucp_producto_pucp_materia_prima]
GO
ALTER TABLE [grupo03].[venta]  WITH CHECK ADD  CONSTRAINT [fk_pucp_venta_pucp_cliente] FOREIGN KEY([ID_Cliente])
REFERENCES [grupo03].[cliente] ([ID_Cliente])
GO
ALTER TABLE [grupo03].[venta] CHECK CONSTRAINT [fk_pucp_venta_pucp_cliente]
GO
ALTER TABLE [grupo03].[venta]  WITH CHECK ADD  CONSTRAINT [fk_pucp_venta_pucp_producto] FOREIGN KEY([ID_Producto])
REFERENCES [grupo03].[producto] ([ID_Producto])
GO
ALTER TABLE [grupo03].[venta] CHECK CONSTRAINT [fk_pucp_venta_pucp_producto]
GO
ALTER TABLE [grupo03].[inventario]  WITH CHECK ADD  CONSTRAINT [chk_produccion_venta] CHECK  (([ID_Produccion] IS NOT NULL AND [ID_Venta] IS NULL OR [ID_Produccion] IS NULL AND [ID_Venta] IS NOT NULL))
GO
ALTER TABLE [grupo03].[inventario] CHECK CONSTRAINT [chk_produccion_venta]
GO
