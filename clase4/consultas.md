# Consultas en SQL

> Podemos realizar consultas a un servidor de base de datos y también podemos realizar consultas a las tablas dentro de una base de datos
 
## Consultas a Server

    --listar todas las bases de datos de nuestro server  
    SHOW DATABASES;  

> La palabra reservada más importante o al menos la más utilizada para consultas es **SELECT**  
 
    -- ver cuál es la base de datos activa   
    SELECT DATABASE();  

    -- activar una base de datos  
    USE nombreBase;  

## Consultas a tablas dentro de una base de datos 

    -- listar todas las tablas dentro de una base de datos    
    SHOW TABLES;  

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;   

> Para realizar consultas a una tabla y que no se vuelva una lista con todos los registros vamos a utilizar la palabra reservada **SELECT** acompañada de la palabra **FROM**  

    SELECT * FROM nombreTabla;  
    SELECT * FROM proveedores;  
    SELECT * FROM productos;  

> éste tipo de consultas nos trae todos los registros de todas las columnas de la tabla solicitada
 
> Si nosotros queremos traer registros de 
> solamente algunas de las columnas (no todas) 
> vamos a tener que especificar (cada columna) luego de la palabra reservada **SELECT** (separadas por comas)

    SELECT columna, columna, columna  
      FROM nombreTabla;


> Práctico traer la columna nombre del producto y precio del producto

    SELECT producto, precio    
      FROM productos;  

    SELECT razonsocial, telefono
      FROM proveedores;

### Orden de registros

> Si queremos ordenar los resultados de una consulta 
> según una columna específica 
> utilizamos el comando **ORDER BY** seguido de dicha columna

    SELECT *  
      FROM marcas  
      ORDER BY idMarca;  

    SELECT producto, precio  
      FROM productos  
      ORDER BY producto desc;  

    SELECT producto, precio    
      FROM productos  
      ORDER BY idMarca, precio;  