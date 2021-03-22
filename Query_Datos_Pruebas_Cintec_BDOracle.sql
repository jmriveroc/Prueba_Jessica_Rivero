----Se crea Tabla en Oracle Datos_Pruebas_Cintec.

CREATE TABLE Datos_Pruebas_Cintec (
    Documento NUMBER(18, 0),
    Fecha TIMESTAMP,
    Departamento NVARCHAR2(50),
    Municipio NVARCHAR2(50),
    Dia NVARCHAR2(50),
    Hora NVARCHAR2(50),
    Sitio NVARCHAR2(50),
    Agresor NVARCHAR2(50),
    Victima NVARCHAR2(50),
    Edad NVARCHAR2(50),
    Pais_nacimiento NVARCHAR2(50),
    Clase_empleado NVARCHAR2(50),
    Profesion NVARCHAR2(150),
    Escolaridad NVARCHAR2(50),
    Codigo_DANE NVARCHAR2(50)
)

--- Se validan casos para verificar que la data cargo bien.

    SELECT *
    FROM datos_pruebas_cintec 
    WHERE documento ='1425810071'
    
--- Se validan los casos con documento y fecha iguales.


    select documento,fecha,count(*)
    from datos_pruebas_cintec 
    group by documento,fecha 
    having count(*)>1  ---1425810071
    
-----Se crea la consulta para priorizar por la fecha mas reciente dejando la tabla a niver unico

    SELECT DISTINCT D.*
    FROM datos_pruebas_cintec D INNER JOIN (SELECT Documento,MAX(fecha) Max_Fecha
                                            FROM datos_pruebas_cintec 
                                            --WHERE documento ='1425810364'
                                            GROUP BY Documento) P
    ON D.Documento=P.Documento
    AND D.Fecha=P.Max_Fecha
    --1098
   
   