# Modificaciones de estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla
        CHANGE nombreOLD nombreNEW tipoDato

    ALTER TABLE personas  
        CHANGE alta fecha date not null;

> Tener en cuenta que tenemos que repetir el tipo de datos, si no, dará error
> también si queremos mantener la condición de nulidad debemos mencionar NOT NULL

## Cambiar tipo de datos (y/o modificadores) de una columna

    ALTER TABLE nombreTabla  
       MODIFY nombreCampo tipoDato [modificadores];

    ALTER TABLE personas    
      MODIFY apellido varchar(100) not null;

    ALTER TABLE personas  
        MODIFY apellido varchar(110) not null,
        MODIFY nombre varchar(110) not null;

## Agregar una columna

    ALTER TABLE nombreTabla  
      ADD  

## Borrar una columna