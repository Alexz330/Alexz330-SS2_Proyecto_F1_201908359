-- Dimensión Proveedor YA
CREATE TABLE DimProveedor (
    ProveedorID INT IDENTITY(1,1) PRIMARY KEY,
    CodProveedor NVARCHAR(100),
    NombreProveedor NVARCHAR(100),
    DireccionProveedor NVARCHAR(100),
    NumeroProveedor NVARCHAR(100),
    WebProveedor NVARCHAR(100)
);

-- Dimensión Cliente YA
CREATE TABLE DimCliente (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    CodigoCliente NVARCHAR(100),
    NombreCliente NVARCHAR(100),
    TipoCliente NVARCHAR(100),
    DireccionCliente NVARCHAR(100),
    NumeroCliente NVARCHAR(100)
);

-- Nueva Dimensión MarcaProducto YA
CREATE TABLE DimMarca (
    MarcaID INT IDENTITY(1,1) PRIMARY KEY,
    MarcaProducto NVARCHAR(100)
);

-- Nueva Dimensión CategoriaProducto YA
CREATE TABLE DimCategoria (
    CategoriaID INT IDENTITY(1,1) PRIMARY KEY,
    Categoria NVARCHAR(100)
);

-- Dimensión Producto (Actualizada con claves foráneas a Marca y Categoría)
CREATE TABLE DimProducto (
    ProductoID INT IDENTITY(1,1) PRIMARY KEY,
    CodProducto NVARCHAR(100),
    NombreProducto NVARCHAR(100),
    MarcaID INT,
    CategoriaID INT,
    FOREIGN KEY (MarcaID) REFERENCES DimMarca(MarcaID),
    FOREIGN KEY (CategoriaID) REFERENCES DimCategoria(CategoriaID)
);

-- Dimensión Vendedor YA
CREATE TABLE DimVendedor (
    VendedorID INT IDENTITY(1,1) PRIMARY KEY,
    CodVendedor NVARCHAR(100),
    NombreVendedor NVARCHAR(100),
    Vacacionista INT
);

-- Dimensión Departamento YA
CREATE TABLE DimDepartamento (
    DepartamentoID INT IDENTITY(1,1) PRIMARY KEY,
    NombreDepartamento NVARCHAR(100),
);

-- Dimensión Sucursal (Actualizada=
CREATE TABLE DimSucursal (
    SucursalID INT IDENTITY(1,1) PRIMARY KEY,
    SodSucursal NVARCHAR(100),
    NombreSucursal NVARCHAR(100),
    DireccionSucursal NVARCHAR(150),
    Region NVARCHAR(100),
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES DimDepartamento(DepartamentoID)
);

-- Dimensión Fecha
CREATE TABLE DimFecha (
    FechaID INT IDENTITY(1,1) PRIMARY KEY,
    Dia INT,
    Mes INT,
    Anio INT
);

-- Hechos de Compras (Actualizado con FechaID y ProductoID)
CREATE TABLE FactCompras (
    CompraID INT IDENTITY(1,1) PRIMARY KEY,
    FechaID INT,
    ProveedorID INT,
    ProductoID INT,
    SucursalID INT,
    Unidades INT,
    CostoU DECIMAL(18, 2),
    FOREIGN KEY (FechaID) REFERENCES DimFecha(FechaID),
    FOREIGN KEY (ProveedorID) REFERENCES DimProveedor(ProveedorID),
    FOREIGN KEY (ProductoID) REFERENCES DimProducto(ProductoID),
    FOREIGN KEY (SucursalID) REFERENCES DimSucursal(SucursalID)
);

-- Hechos de Ventas (Actualizado con FechaID y ProductoID)
CREATE TABLE FactVentas (
    VentaID INT IDENTITY(1,1) PRIMARY KEY,
    FechaID INT,
    ClienteID INT,
    VendedorID INT,
    ProductoID INT,
    SucursalID INT,
    Unidades INT,
    PrecioUnitario DECIMAL(18, 2),
    FOREIGN KEY (FechaID) REFERENCES DimFecha(FechaID),
    FOREIGN KEY (ClienteID) REFERENCES DimCliente(ClienteID),
    FOREIGN KEY (VendedorID) REFERENCES DimVendedor(VendedorID),
    FOREIGN KEY (ProductoID) REFERENCES DimProducto(ProductoID),
    FOREIGN KEY (SucursalID) REFERENCES DimSucursal(SucursalID)
);
