-- Eliminar la tabla FactVentas si existe
IF OBJECT_ID('FactVentas', 'U') IS NOT NULL
    DROP TABLE FactVentas;

-- Eliminar la tabla FactCompras si existe
IF OBJECT_ID('FactCompras', 'U') IS NOT NULL
    DROP TABLE FactCompras;

-- Eliminar la tabla DimFecha si existe
IF OBJECT_ID('DimFecha', 'U') IS NOT NULL
    DROP TABLE DimFecha;

-- Eliminar la tabla DimSucursal si existe
IF OBJECT_ID('DimSucursal', 'U') IS NOT NULL
    DROP TABLE DimSucursal;

-- Eliminar la tabla DimDepartamento si existe
IF OBJECT_ID('DimDepartamento', 'U') IS NOT NULL
    DROP TABLE DimDepartamento;

-- Eliminar la tabla DimVendedor si existe
IF OBJECT_ID('DimVendedor', 'U') IS NOT NULL
    DROP TABLE DimVendedor;

-- Eliminar la tabla DimProducto si existe
IF OBJECT_ID('DimProducto', 'U') IS NOT NULL
    DROP TABLE DimProducto;

-- Eliminar la tabla DimCategoria si existe
IF OBJECT_ID('DimCategoria', 'U') IS NOT NULL
    DROP TABLE DimCategoria;

-- Eliminar la tabla DimMarca si existe
IF OBJECT_ID('DimMarca', 'U') IS NOT NULL
    DROP TABLE DimMarca;

-- Eliminar la tabla DimCliente si existe
IF OBJECT_ID('DimCliente', 'U') IS NOT NULL
    DROP TABLE DimCliente;

-- Eliminar la tabla DimProveedor si existe
IF OBJECT_ID('DimProveedor', 'U') IS NOT NULL
    DROP TABLE DimProveedor;
