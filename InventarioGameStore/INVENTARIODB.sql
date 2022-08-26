CREATE DATABASE INVENTARIODB

USE INVENTARIODB



CREATE TABLE Tipo_Articulo
(
	
	Codigo_Tipo varchar (50) not null,
	Descripcion_Tipo varchar(100) not null,

	CONSTRAINT PK_Codigo_Tipo PRIMARY KEY(Codigo_Tipo),
	CONSTRAINT UQ_Codigo_Tipo UNIQUE (Codigo_Tipo)
)

CREATE TABLE Mae_Articulo
(
		
	Codigo_Articulo varchar (50) not null,
	Descripcion_Articulo varchar(50) not null,
	Codigo_Tipo varchar(50) not null,
	Precio_Articulo money not null,
	Cantidad int not null,
	Costo_Articulo money not null,

	CONSTRAINT PK_Codigo_Articulo PRIMARY KEY (Codigo_Articulo),
	CONSTRAINT FK_Codigo_Tipo FOREIGN KEY(Codigo_Tipo) REFERENCES Tipo_Articulo(Codigo_Tipo)
)


CREATE TABLE Tipo_Usuario 
(
	
	Codigo_TipoUsuario varchar (50) not null,
	Descripcion_TipoUsuario varchar (50) not null,

	CONSTRAINT PK_Codigo_TipoUsuario PRIMARY KEY(Codigo_TipoUsuario),
	CONSTRAINT UQ_Codigo_TipoUsuario UNIQUE (Codigo_TipoUsuario)
)


INSERT INTO Tipo_Usuario values ('Adm','Administrador'),('Reg','Regular')


CREATE TABLE Usuarios
(
	
	Codigo_Usuario varchar (50) not null,
	Nombre_Usuario varchar(50) not null,
	Clave_Usuario varchar(50) not null,
	Tipo_Usuario varchar(50) not null,

	CONSTRAINT PK_Codigo_Usuario PRIMARY KEY (Codigo_Usuario),
	CONSTRAINT FK_Codigo_TipoUsuario FOREIGN KEY(Tipo_Usuario) REFERENCES Tipo_Usuario(Codigo_TipoUsuario)

)

SELECT * FROM Usuarios

DROP PROCEDURE Registro

CREATE PROCEDURE Registro
@codigoU varchar (50),
@nombreU varchar (50),
@claveU varchar (50),
@tipoU varchar (50)

as
	begin
		insert into Usuarios (Codigo_Usuario,Nombre_Usuario,Clave_Usuario,Tipo_Usuario) values (@codigoU,@nombreU,@claveU,@tipoU)		
	end


	INSERT INTO Usuarios values ('12A','Makila Nj','1234','Adm')