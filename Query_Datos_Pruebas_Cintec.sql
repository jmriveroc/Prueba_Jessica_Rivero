----Se crea Tabla en SQL con la estructura definida para la Tabla Datos_Pruebas_Cintec.

CREATE TABLE [Datos_Pruebas_Cintec] (
    [DOCUMENTO] numeric(18,0),
    [FECHA] datetime,
    [DEPARTAMENTO] nvarchar(50),
    [MUNICIPIO] nvarchar(50),
    [DIA] nvarchar(50),
    [HORA] nvarchar(50),
    [SITIO] nvarchar(50),
    [AGRESOR] nvarchar(50),
    [VICTIMA] nvarchar(50),
    [EDAD] nvarchar(50),
    [PAIS_NACIMIENTO] nvarchar(50),
    [CLASE_EMPLEADO] nvarchar(50),
    [PROFESION] nvarchar(150),
    [ESCOLARIDAD] nvarchar(50),
    [CODIGO_DANE] nvarchar(50)
)

---- Se valida la cantidad de Registros en la Tabla.

Select count(*) Cant
from Datos_Pruebas_Cintec

Select count(distinct Documento) Documentos_Distintos
from Datos_Pruebas_Cintec