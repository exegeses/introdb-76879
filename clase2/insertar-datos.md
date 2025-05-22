# insertar datos en SQL

> En SQL tenemos tres maneras principales de insertar datos en una tabla
> Estas tres maneras comienzan con:

    INSERT INTO nombreTabla  

## Sintaxis usando SET  

    INSERT INTO nombreTabla  
       SET 
            nombreCampo = valor,  
            nombreCampo2 = valor2,  
            nombreCampo3 = valor3,  
            nombreCampoX = valorX;  

> Ejemplo práctico:
   
    INSERT INTO personas  
       SET 
            id = 1,  
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25852410,  
            alta = '2008-12-12';  
            
    INSERT INTO personas  
       SET
            apellido = 'González',  
            nombre = 'Mónica',  
            dni = 36520147,  
            alta = '2005-09-30';  

## Sintaxis completa (se mencionan los campos)

    INSERT INTO nombreTabla  
        ( nombreCampo, nombreCampo2, nombreCampo3, nombreCampoX )  
      VALUES  
        ( valor, valor2, valor3, valorX );  


> Ejemplo práctico:
 
    INSERT INTO personas  
       ( apellido, nombre, dni, alta )  
      VALUES  
       ( 'Martínez', 'Vanesa', 35741951, '2006-06-21' );  


## Sintaxis simplificada (NO se mencionan los campos)

    INSERT INTO nombreTabla
      VALUES  
        ( valor, valor2, valor3, valorX );  

> Si bien en esta sintaxis no vamos a mencionar los nombres de los campos, en este caso estamos obligados a mencionar todos y cada uno de los valores en el orden correspondiente.

> Ejemplo práctico: 

    INSERT INTO personas  
      VALUES  
        ( DEFAULT, 'Álvarez', 'Fernando', 32912457, '2007-11-02' );

----
### Insertar múltiples registros

> en algunos casos vamos a necesitar insertar varios registros
> no es obligatorio hacer un **insert** por cada uno de los registros a insertar

/*
    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Page', 'Jimmy', 18543219, '1944-01-09' ),
        ( 'Plant', 'Robert', 18543220, '1948-08-20' ),
        ( 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
        ( 'Jones', 'John', 18543222, '1946-01-03' );
*/
    INSERT INTO personas   
      VALUES  
        ( DEFAULT, 'Page', 'Jimmy', 18543219, '1944-01-09' ),
        ( DEFAULT, 'Plant', 'Robert', 18543220, '1948-08-20' ),
        ( DEFAULT, 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
        ( DEFAULT, 'Jones', 'John', 18543222, '1946-01-03' );