# SS2_Proyecto_F1_201908359 Documentacion


## "Modelo de Constellation de Datos para Gestión de Compras y Ventas"

### Nombre de la Documentación: 
**"Docuementacion para Sobre Datos para Gestión de Compras y Ventas"**

### Justificación del Modelo

El **modelo de constelación** utilizado en este Data Warehouse se seleccionó para integrar múltiples procesos de negocio dentro de la misma base de datos, en este caso, las compras y las ventas. Este enfoque permite:

1. **Flexibilidad y Escalabilidad:** El modelo admite nuevas dimensiones y hechos sin necesidad de rediseñar la arquitectura completa. Las dimensiones compartidas (como Producto, Sucursal, y Fecha) son comunes entre ambos procesos, lo que facilita la escalabilidad al incorporar nuevos hechos o métricas.
2. **Mejora de Desempeño:** Al compartir dimensiones clave, se optimizan las consultas al reducir la redundancia de datos y las uniones innecesarias. Esto es crucial para el análisis eficiente de grandes volúmenes de datos.
3. **Múltiples Perspectivas de Negocio:** El uso de un enfoque de constelación permite que los usuarios realicen análisis a través de diferentes perspectivas, como productos, vendedores, sucursales, proveedores, etc., lo que facilita un análisis más robusto y holístico del rendimiento del negocio.

Este modelo también permite la integración futura de hechos adicionales relacionados con inventarios, devoluciones, etc., manteniendo la arquitectura coherente y eficiente.

#### Diagrama DLL
![graphviz](https://github.com/user-attachments/assets/d3cad27e-c888-47f1-b774-5e237a60c36f)
  
## ETL
![image](https://github.com/user-attachments/assets/494da1f2-571e-4454-a7ed-d38535d4bd0e)


1. **Extracción (Extract)**
   - **Limpiar Tablas Pivotes**: Esta etapa es el primer paso antes de la extracción real de los datos. Se asegura de que las tablas temporales (pivotes) estén vacías para que puedan recibir los datos extraídos. Estas tablas sirven como almacenamiento temporal de datos extraídos de las bases de datos transaccionales.
   - **Llenar Tablas Pivotes (Clientes y Ventas) SQL Server 1 y SQL Server 2**: Aquí se realiza la extracción de datos desde las dos bases de datos transaccionales (SQL Server 1 y SQL Server 2). Los datos correspondientes a Clientes y Ventas se extraen y se guardan temporalmente en tablas pivotes.

2. **Transformación (Transform)**
   - **Limpiar Tablas DWH**: Después de llenar las tablas pivotes, se inicia el proceso de limpieza y preparación de las tablas en el Data Warehouse. Este paso elimina posibles residuos de datos anteriores para evitar inconsistencias.
   - **Llenar Tablas sin Dependencias (DWH)**: Se comienza a transformar los datos extrayendo aquellos que no tienen dependencias entre sí y cargándolos en las tablas correspondientes del DWH. Esta transformación podría incluir tareas como la normalización, eliminación de duplicados y la consolidación de datos.
   - **Llenar Tabla de Sucursales (DWH)** y **Llenar Tabla de Productos (DWH) 1**: Estas son etapas de transformación en las que los datos se depuran y se preparan para ser insertados en las tablas de Sucursales y Productos en el Data Warehouse.

3. **Carga (Load)**
   - **Llenar Tabla de Ventas (DWH) 1**: En este punto, los datos transformados están listos para ser cargados en la tabla de hechos de ventas del Data Warehouse. Los datos extraídos y transformados de las tablas pivotes ahora se insertan en su destino final.
   - **Llenar Tabla de Compras (DWH) 1.1**: Similar a la etapa anterior, los datos procesados para las compras se cargan en la tabla de hechos correspondiente dentro del Data Warehouse.

### Resumen de las Fases:
- **Extracción**: Se realiza al llenar las tablas pivotes desde las bases de datos transaccionales (SQL Server 1 y SQL Server 2).
- **Transformación**: Se ejecuta en las fases intermedias donde se limpian y preparan las tablas del Data Warehouse.
- **Carga**: La fase final, donde los datos ya transformados se cargan en las tablas definitivas del DWH, como las de Ventas y Compras.

Este flujo describe un proceso típico de ETL, donde los datos se mueven desde los sistemas transaccionales, se procesan y se almacenan en un Data Warehouse centralizado para análisis posterior.


