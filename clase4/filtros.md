# Filtrado de resultados

> Filtrar resultados significa que vamos a traer únicamente los resultados que cumplan con alguna condición.
> para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condición.

> Sintaxis: 

    SELECT nombreCampo, nombreCampo  
      FROM nombreTabla  
      WHERE condición;   

> Práctica: listar las columnas producto y precio con un precio hasta 800 (inclusive)

    SELECT producto, precio  
      FROM productos   
      WHERE precio <= 800;   

> Listar las columnas producto y precio con un precio
> entre 600 y 1200 

    SELECT producto, precio  
      FROM productos   
      WHERE precio >= 600 
        AND precio <= 1200; 

> Palabra reservada **BETWEEN**

    SELECT producto, precio  
      FROM productos   
      WHERE precio BETWEEN 600 AND 1200;


    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 600  
        AND precio <= 1200  
        AND idCategoria = 5;    

> Traer producto, precio con los idMarca 2 y 8

    SELECT producto, precio   
      FROM productos  
      WHERE idMarca = 2    
      OR idMarca = 8;  

> Función IN()

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca IN(2, 8);  

