CREATE DATABASE Farmacia_DG
GO 
USE Farmacia_DG
GO 
CREATE TABLE Proveedores (
Id int IDENTITY(1,1) NOT NULL,
Nombre nvarchar(100) NOT NULL,
Direccion nvarchar(100) NULL,
Telefono nvarchar (10),
Fecha_Creacion datetime NOT NULL,

PRIMARY KEY (Id)
)
GO
CREATE TABLE Clientes (
Id int IDENTITY(1,1) NOT NULL,
Nombre nvarchar(100) NOT NULL,
Direccion nvarchar(100) NULL,
Telefono nvarchar (10) NULL,
Fecha_Creacion datetime NOT NULL,

PRIMARY KEY (Id)
)
GO 
CREATE TABLE Vendedores (
Id int IDENTITY(1,1) NOT NULL,
Nombre nvarchar(100) NOT NULL,
Telefono nvarchar (10) NULL,
Fecha_Creacion datetime NOT NULL,

PRIMARY KEY (Id)
)
GO
CREATE TABLE Productos (
Id int IDENTITY(1,1) NOT NULL,
Nombre nvarchar(100) NOT NULL,
Fecha_Vencimiento datetime NOT NULL,
Nombre_Laboratorio nvarchar(60),
Precio_Unitario int NOT NULL,
Proveedor_Id int NOT NULL,
Fecha_Creacion datetime NOT NULL, 

PRIMARY KEY (Id),
CONSTRAINT FK_Proveedor_Producto FOREIGN KEY (Proveedor_Id)
REFERENCES Proveedores(Id)
)
GO 
CREATE TABLE Pedidos(
Id int IDENTITY(1,1) NOT NULL,
Cliente_Id int NOT NULL,
Vendedor_Id int NOT NULL,
Producto_Id int NOT NULL,
Cantidad_Productos int NOT NULL,
Tipo_Pago nvarchar(20),
Fecha_Pedido datetime NOT NULL

PRIMARY KEY (Id),
CONSTRAINT FK_Cliente_Pedido FOREIGN KEY (Cliente_Id)
REFERENCES Clientes(Id),
CONSTRAINT FK_Vendedor_Pedido FOREIGN KEY (Vendedor_Id)
REFERENCES Vendedores(Id),
CONSTRAINT FK_Producto_Pedido FOREIGN KEY (Producto_Id)
REFERENCES Productos(Id)
)

--- INSERTANDO INFORMACION ----
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Juan', '8095543614', GETDATE())
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Felix', '8095543614', GETDATE())
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Raul', '8095543614', GETDATE())
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Lucas', '8095543614', GETDATE())
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Manuel', '8095543614', GETDATE())
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Carlos', '8095543614', GETDATE())
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Tomas', '8095543614', GETDATE())
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Maria', '8095543614', GETDATE())
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Rosa', '8095543614', GETDATE())
INSERT Vendedores (Nombre, Telefono, Fecha_Creacion) VALUES ('Marisol', '8095543614', GETDATE())

INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('Maria Medic', '8092141247', 'Distrito nacional', GETDATE())
INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('Feltrex', '8092141247', 'Distrito nacional', GETDATE())
INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('Farma P&G', '8092141247', 'Santiago', GETDATE())
INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('INTI', '8092141247', 'Distrito nacional', GETDATE())
INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('ABL PHARMA', '8092141247', 'Distrito nacional', GETDATE())
INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('BAGO', '8092141247', 'Punta cana', GETDATE())
INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('Trifarma', '8092141247', 'Distrito nacional', GETDATE())
INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('Lansier', '8092141247', 'Santiago', GETDATE())
INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('Hersil', '8092141247', 'Distrito nacional', GETDATE())
INSERT Proveedores (Nombre, Telefono, Direccion, Fecha_Creacion) VALUES ('Inesa farma', '8092141247', 'Distrito nacional', GETDATE())

INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Juan Mercado', 'Distrito nacional', '8293141247', GETDATE())
INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Carlos Torres', 'Distrito nacional', '8293141247', GETDATE())
INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Yeny Gonzales', 'Distrito nacional', '8293141247', GETDATE())
INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Rosa Maria', 'Distrito nacional', '8293141247', GETDATE())
INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Maria Liz', 'Distrito nacional', '8293141247', GETDATE())
INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Alex Lopez', 'Distrito nacional', '8293141247', GETDATE())
INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Juan Salcedo', 'Distrito nacional', '8293141247', GETDATE())
INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Arturo Medina', 'Distrito nacional', '8293141247', GETDATE())
INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Julian Diaz', 'Distrito nacional', '8293141247', GETDATE())
INSERT Clientes (Nombre, Direccion, Telefono, Fecha_Creacion) VALUES ('Manuel Gomez', 'Distrito nacional', '8293141247', GETDATE())

INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio, Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Acetaminofen', '20250618 00:00:00 AM', 'Feltrex',500 , 2, GETDATE())
INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio, Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Metronidazol', '20261222 00:00:00 AM', 'Feltrex', 250 ,2, GETDATE())
INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio, Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Aspirina', '20250118 00:00:00 AM', 'Maria Medic',325,1, GETDATE())
INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio,Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Omeprazol', '20250118 00:00:00 AM', 'Maria Medic',400, 1, GETDATE())
INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio, Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Paracetamol', '20250118 00:00:00 AM', 'D&G',610, 7, GETDATE())
INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio, Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Amlodipina', '20250118 00:00:00 AM', 'D&G', 925, 4, GETDATE())
INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio,Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Amoxicilina', '20240108 00:00:00 AM', 'D&G', 370, 3, GETDATE())
INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio,Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Ampixilina', '20250118 00:00:00 AM', 'D&G', 615, 5, GETDATE())
INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio,Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Hidrocloruro', '20250118 00:00:00 AM', 'Feltrex', 640, 8, GETDATE())
INSERT Productos (Nombre, Fecha_Vencimiento, Nombre_Laboratorio,Precio_Unitario, Proveedor_Id, Fecha_Creacion)
VALUES ('Co-codamol', '20250101 00:00:00 AM', 'D&G', 220, 6, GETDATE())

INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (1, 4, 1, 20, 'Efectivo', GETDATE())
INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (5, 2, 4, 5, 'Efectivo', GETDATE())
INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (3, 1, 8, 12, 'Tarjeta', GETDATE())
INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (6, 5, 1, 100, 'Tarjeta', GETDATE())
INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (5, 7, 2, 45, 'Efectivo', GETDATE())
INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (9, 8, 7, 8, 'Efectivo', GETDATE())
INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (8, 3, 3, 160, 'Tarjeta', GETDATE())
INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (7, 6, 9, 12, 'Efectivo', GETDATE())
INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (3, 7, 1, 20, 'Efectivo', GETDATE())
INSERT Pedidos (Cliente_Id, Vendedor_Id, Producto_Id, Cantidad_Productos, Tipo_Pago, Fecha_Pedido)
VALUES (1, 10, 10, 200, 'Tarjeta', GETDATE())



-- SELECCIONAR INFORMACION ----

SELECT * FROM Vendedores

SELECT * FROM Clientes

SELECT * FROM Proveedores

SELECT * FROM Productos

SELECT P.Id, P.Nombre, P.Nombre_Laboratorio, P.Fecha_Vencimiento, PP.Nombre AS [Nombre proveedor]
FROM Productos P 
INNER JOIN Proveedores PP ON P.Proveedor_Id = PP.Id


SELECT * FROM Pedidos

SELECT P.Id, C.Nombre AS [Nombre cliente], V.Nombre AS [Nombre vendedor], PD.Nombre AS [Nombre producto],
P.Cantidad_Productos, PD.Precio_Unitario , (P.Cantidad_Productos * PD.Precio_Unitario) as Total ,P.Tipo_Pago, P.Fecha_Pedido
FROM Pedidos P 
INNER JOIN Clientes C ON P.Cliente_Id = C.Id
INNER JOIN Vendedores V ON P.Vendedor_Id = V.Id
INNER JOIN Productos PD ON P.Producto_Id = PD.Id

