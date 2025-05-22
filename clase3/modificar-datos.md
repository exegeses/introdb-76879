# modificación de registros

> para modificar los datos de una tabla utilizamos el comando **UPDATE** 
> debemos especificar un filtro con la palabra reservada **WHERE** seguida de una condición

> Sintaxis: 

    UPDATE nombreTabla  
       SET  
           nombreCampo = valor,  
           nombreCampo2 = valor2  
     WHERE condición;  

> Ejemplo práctico: 

    UPDATE proveedores  
       SET  
           telefono = '+34990609113',  
           email = 'pedro@gmail.com'  
      WHERE idProveedor = 2;  
