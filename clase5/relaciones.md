# Consultas con relaciones entre tablas

> Si queremos consultar datos provenientes de dos o más tablas debemos relacionar esas tablas
> Para lograrlo tenemos dos técnicas

## Table Relation 

> La técnica **Table Relation** si logra mencionando en el listado de tablas (después del **FROM**) cada una de las tablas necesarias (separadas por comas)
> Y luego mediante un filtro (**WHERE**)
> igualamos la columna en común
> Igualamos la clave foránea de la tabla principal con la clave primaria de la tabla secundaria

> Sintaxis:  

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

> Ejemplo práctico.

    SELECT producto, precio, marca  
        FROM productos, marcas  
        WHERE productos.idMarca = marcas.idMarca;  

    SELECT curso, matricula, area  
      FROM cursos, areas  
      WHERE cursos.idArea = areas.idArea;  

    SELECT producto, precio, marca, categoria   
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca   
        AND productos.idCategoria=categorias.idCategoria;

    SELECT nombre_mision, destino, nombre_agencia  
      FROM misiones, agencias  
      WHERE misiones.id_agencia = agencias.id_agencia;  

    SELECT nombre_mision, destino, nombre_agencia, nombre_pais  
      FROM misiones, agencias, paises  
      WHERE misiones.id_agencia = agencias.id_agencia  
        AND paises.id_pais = misiones.id_pais;  

## JOIN  
> En la técnica **JOIN** NO vamos a mencionar en el listado de las tablas (después del **FROM**) cada una de las tablas necesarias.
> Sólo se menciona la tabla principal
> Luego vamos a utilizar la palabra reservada **JOIN** para mencionar la tabla secundaria
> finalizamos igualando la clave foránea de la primera tabla con la clave primaria de la segunda tabla después de la palabra reservada **ON**


> Sintaxis:

    SELECT colTabla1, colTabla1, colTabla2    
      FROM tabla1   
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;  

> Ejemplo práctico.

    SELECT producto, precio, marca    
        FROM productos    
        JOIN marcas     
          ON productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, marca, categoria  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca
      JOIN categorias
        ON productos.idCategoria = categorias.idCategoria;

    SELECT curso, matricula, area
      FROM cursos
      JOIN areas
        ON cursos.idArea = areas.idArea;

    SELECT nombre_mision, destino, nombre_agencia  
      FROM misiones  
      JOIN agencias  
        ON misiones.id_agencia = agencias.id_agencia;  

    SELECT nombre_mision, destino, nombre_agencia, nombre_pais    
      FROM misiones  
      JOIN agencias  
        ON misiones.id_agencia = agencias.id_agencia  
      JOIN paises  
        ON misiones.id_pais = paises.id_pais;  
    
