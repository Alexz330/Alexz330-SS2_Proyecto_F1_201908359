CREATE DATABASE TempDB2;



USE TempDB2; -- O usa TempDB2, según la base de datos temporal que prefieras.
GO

CREATE TABLE ComprasTemp (
    Fecha VARCHAR(100),
    CodProveedor VARCHAR(100),
    NombreProveedor VARCHAR(100),
    DireccionProveedor VARCHAR(150),
    NumeroProveedor VARCHAR(100),
    WebProveedor VARCHAR(150),
    CodProducto VARCHAR(100),
    NombreProducto VARCHAR(100),
    MarcaProducto VARCHAR(100),
    Categoria VARCHAR(100),
    SodSucursal VARCHAR(100),
    NombreSucursal VARCHAR(100),
    DireccionSucursal VARCHAR(150),
    Region VARCHAR(100),
    Departamento VARCHAR(100),
    Unidades VARCHAR(100),
    CostoU VARCHAR(100)
);
GO




USE TempDB2; -- O usa TempDB2, según la base de datos temporal que prefieras.
GO

CREATE TABLE VentasTemp (
    Fecha VARCHAR(100),
    CodigoCliente VARCHAR(100),
    NombreCliente VARCHAR(100),
    TipoCliente VARCHAR(100),
    DireccionCliente VARCHAR(150),
    NumeroCliente VARCHAR(150),
    CodVendedor VARCHAR(100),
    NombreVendedor VARCHAR(100),
    Vacacionista VARCHAR(100),
    CodProducto VARCHAR(100),
    NombreProducto VARCHAR(100),
    MarcaProducto VARCHAR(100),
    Categoria VARCHAR(100),
    SodSucursal VARCHAR(100),
    NombreSucursal VARCHAR(100),
    DireccionSucursal VARCHAR(150),
    Region VARCHAR(100),
    Departamento VARCHAR(100),
    Unidades VARCHAR(100),
    PrecioUnitario VARCHAR(100)
);
GO