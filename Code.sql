DROP DATABASE IF EXISTS dbGimnasio;
CREATE DATABASE dbGimnasio;
USE dbGimnasio;
CREATE TABLE TipoProducto (
    idTipoProducto VARCHAR(5) PRIMARY KEY,
    tipo VARCHAR(30) NOT NULL
);

CREATE TABLE Proveedores (
    idProveedor VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    paginaWeb VARCHAR(250)
);

CREATE TABLE Clientes (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(200),
    telefono VARCHAR(10) NOT NULL
);

CREATE TABLE Productos (
    idProducto VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    precioCompra DECIMAL(5, 2) NOT NULL,
    precioVenta DECIMAL(6, 2) NOT NULL,
    cantidad INT(2) NOT NULL,
    tamaño VARCHAR(50),
    modelo VARCHAR(50),
    fechaCaducidad DATE,
    idTipoProducto VARCHAR(5),
    FOREIGN KEY (idTipoProducto) REFERENCES TipoProducto(idTipoProducto)
);

CREATE TABLE Ventas (
    idVenta INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    metodoPago VARCHAR(15) NOT NULL,
    montoTotal DECIMAL(5, 2) NOT NULL,
    dineroRecibido DECIMAL(5, 2) NOT NULL,
    cambio DECIMAL(5, 2) NOT NULL,
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);

CREATE TABLE Producto_Proveedor (
    idProducto VARCHAR(10),
    idProveedor VARCHAR(10),
    cantSurtida INT(3) NOT NULL,
    PRIMARY KEY (idProducto, idProveedor),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto),
    FOREIGN KEY (idProveedor) REFERENCES Proveedores(idProveedor)
);

CREATE TABLE Venta_Producto (
    idVenta INT,
    idProducto VARCHAR(10),
    cantidadV INT(2) NOT NULL,
    PRIMARY KEY (idVenta, idProducto),
    FOREIGN KEY (idVenta) REFERENCES Ventas(idVenta),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);
