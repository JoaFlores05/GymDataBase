INSERT INTO TipoProducto (idTipoProducto, tipo) VALUES
('TP01', 'Suplemento'),
('TP02', 'Ropa'),
('TP03', 'Bebida');

-- Insertar datos en Proveedores
INSERT INTO Proveedores (idProveedor, nombre, direccion, telefono, paginaWeb) VALUES
('P001', 'Suplementos Max', 'Calle 1, Ciudad', '9711234567', NULL),
('P002', 'Ropa Deportiva', 'Calle 2, Ciudad', '9717654321', 'www.ropadeportiva.com'),
('P003', 'Aguas y Bebidas', 'Calle 3, Ciudad', '9711111111', NULL);

-- Insertar datos en Clientes
INSERT INTO Clientes (nombre, direccion, telefono) VALUES
('Juan Pérez', 'Calle Falsa 123', '9712223333'),
('María García', 'Avenida Siempre Viva 456', '9714445555');

-- Insertar datos en Productos
INSERT INTO Productos (idProducto, nombre, marca, precioCompra, precioVenta, cantidad, tamaño, modelo, fechaCaducidad, idTipoProducto) VALUES
('PR001', 'Creatina', 'Marca A', 20.00, 25.00, 50, '500g', NULL, '2025-12-31', 'TP01'),
('PR002', 'Proteína', 'Marca B', 30.00, 35.00, 30, '1kg', NULL, '2024-12-31', 'TP01'),
('PR003', 'Camiseta', 'Marca C', 10.00, 15.00, 100, 'M', 'Modelo X', NULL, 'TP02'),
('PR004', 'Agua Mineral', 'Marca D', 1.00, 1.50, 200, '500ml', NULL, '2023-12-31', 'TP03');

-- Insertar datos en Ventas
INSERT INTO Ventas (fecha, metodoPago, montoTotal, dineroRecibido, cambio, idCliente) VALUES
('2023-06-01', 'Efectivo', 25.00, 30.00, 5.00, 1),
('2023-06-02', 'Tarjeta', 35.00, 35.00, 0.00, 2);
