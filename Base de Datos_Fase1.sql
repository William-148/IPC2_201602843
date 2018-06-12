create database PROYECTO_FASE1
go

use PROYECTO_FASE1
go

--Creando tablas USUARIOS Y SERVICIOS
create table Administrador(
	idAdministrador int identity(1,1) not null primary key,
	nombre varchar(45),
	correo varchar(45),
	contrasena varchar(45),
	tipo int,
	noTarjeta int,
	expiracionTarjeta date,
	codSeguridad int,
)
go

create table Modulo(
	idModulo int identity(1,1) not null primary key,
	nombre varchar(45)
)
go

create table Modulo_Adquirido(
	idModulo_Adquirido int identity (1,1) not null primary key,
	idAdministrador int,
	idModulo int
)
go

create table Usuario (
	idUsuario int identity(1,1),
	contrasena varchar(45),
	idAdministrador int,
	idEmpleado int
)
go

--Creando tablas Modulo Reclutamiento

create table Empleado (
	idEmpleado int identity(1,1) not null primary key,
	Nombre varchar(45),
	Direccion varchar(45),
	FechaNacimiento date,
	Puesto varchar(45),
	Telefono int,
	correo varchar(45)
)
go

create table Entrevista(
	idEntrevista int identity(1,1) not null primary key,
	Fecha date,
	hora time,
	idEmpleado int
)
go

--Tablas Modulo Blog
create table Publicacion(
	idPublicacion int identity(1,1) not null primary key,
	mensaje varchar(45),
	idAdministrador int	
)
go

create table Comentario(
	idComentario int identity(1,1)not null primary key,
	mensaje varchar(45),
	idPublicacion int	
)
go

--Tablas Modulo Gestion de Flotas

create table Viaje(
	idViaje int identity(1,1) not null primary key,
	Piloto varchar(45),
	FechaSalida date,
	FechaLlegada date,
	Distancia int,
	Matricula varchar(20),
	idAdministrador int,
)
go

create table Vehiculo(
	Matricula int identity(1,1) not null primary key,
	Tipo varchar(45),
	Marca varchar(20),
	Capacidad int	
)
go

--Tablas crm
create table OportunidadNegocio(
	idOportunidadNegocio int identity(1,1) not null primary key,
	Titulo varchar(45),
	Ingreso int,
	Prioridad varchar(45),
	idCliente int
)
go

--Tablas Modulo Factura

create table Factura(
	idFactura int identity(1,1) not null primary key,
	Fecha date,
	Hora time,
	idCliente int
)
go

create table Detalle(
	idDetalle int identity(1,1) not null primary key,
	Cantidad int,
	Precio int,
	idFactura int,
	idProducto int
)
go

--Gestor de Pedidos a Domicilio

create table Pedido(
	idPedido int identity(1,1) not null primary key,
	FechaPedido date,
	FechaEntrega date,
	DireccionEntrega Varchar(45),
	Monto int
)
go

create table DetallePedido(
	idDetallePedido int identity(1,1) not null primary key,
	idEmpleado int,
	idPedido int,
)
go

--Tablas sueltas en el diagrama
create table Compra(
	idCompra int  identity(1,1) not null primary key,
	FechaPedido date,
	FechaRecibido date,
	NoFactura int,
	ImporteTotal int,
	idProveedor int,
)
go

create table Proveedor(
	idProveedor int identity(1,1) not null primary key,
	Nombre varchar(45),
	Direccion varchar(45),
	Telefono int,
	correo varchar(45),
	idAdministrador int,
)
go

create table Evento(
	idEvento int identity(1,1) not null primary key,
	Evento Varchar(200),
	Fecha date,
	Hora time,
	idAdministrador int,
)
go

create table Producto(
	idProducto int identity(1,1) not null primary key,
	Nombre Varchar(30),
	MateriaPrima varchar(30),
	Cantidad int,
	Descripcion varchar(50),
	idAdministrador int
)
go

create table Venta(
	idVenta int identity(1,1) not null primary key,
	Vendedor Varchar(45),
	ImporteTotal int,
	Fecha date,
	idAdministrador int,
	idFactura int
)
go

create table Cliente(
	idCliente int identity(1,1) not null primary key,
	Nombre Varchar(45),
	Direccion varchar(45),
	FechaNacimiento date,
	Telefono int,
	correo Varchar(45),
	idAdministrador int,
)
go

