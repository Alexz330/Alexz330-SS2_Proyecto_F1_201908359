-- Contar registros en la tabla DimProveedor
SELECT COUNT(*) FROM DimProveedor;

-- Contar registros en la tabla DimCliente
SELECT COUNT(*) FROM DimCliente;

-- Contar registros en la tabla DimMarca
SELECT COUNT(*) FROM DimMarca;

-- Contar registros en la tabla DimCategoria
SELECT COUNT(*) FROM DimCategoria;

-- Contar registros en la tabla DimProducto
SELECT COUNT(*) FROM DimProducto;

-- Contar registros en la tabla DimVendedor
SELECT COUNT(*) FROM DimVendedor;

-- Contar registros en la tabla DimDepartamento
SELECT COUNT(*) FROM DimDepartamento;

-- Contar registros en la tabla DimSucursal
SELECT COUNT(*) FROM DimSucursal;

-- Contar registros en la tabla DimFecha
SELECT COUNT(*) FROM DimFecha;

-- Contar registros en la tabla FactCompras
SELECT COUNT(*) FROM FactCompras;

-- Contar registros en la tabla FactVentas
SELECT COUNT(*) FROM FactVentas;




-- Contar registros en todas las tablas
SELECT 'DimProveedor' AS Tabla, COUNT(*) AS TotalRegistros FROM DimProveedor
UNION ALL
SELECT 'DimCliente' AS Tabla, COUNT(*) AS TotalRegistros FROM DimCliente
UNION ALL
SELECT 'DimMarca' AS Tabla, COUNT(*) AS TotalRegistros FROM DimMarca
UNION ALL
SELECT 'DimCategoria' AS Tabla, COUNT(*) AS TotalRegistros FROM DimCategoria
UNION ALL
SELECT 'DimProducto' AS Tabla, COUNT(*) AS TotalRegistros FROM DimProducto
UNION ALL
SELECT 'DimVendedor' AS Tabla, COUNT(*) AS TotalRegistros FROM DimVendedor
UNION ALL
SELECT 'DimDepartamento' AS Tabla, COUNT(*) AS TotalRegistros FROM DimDepartamento
UNION ALL
SELECT 'DimSucursal' AS Tabla, COUNT(*) AS TotalRegistros FROM DimSucursal
UNION ALL
SELECT 'DimFecha' AS Tabla, COUNT(*) AS TotalRegistros FROM DimFecha
UNION ALL
SELECT 'FactCompras' AS Tabla, COUNT(*) AS TotalRegistros FROM FactCompras
UNION ALL
SELECT 'FactVentas' AS Tabla, COUNT(*) AS TotalRegistros FROM FactVentas;
