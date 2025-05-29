# Consultas de coincidencia

> Las consultas de coincidencia utilizan un filtro con una cadena de caracteres
> La idea en este caso es que contenga una cadena de caracteres

> práctica:
> traer producto, precio, descripción que en la columna descripción contenga la palabra 'inalámbrico'

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE '%inalambrico%'; 

> Utilizamos la palabra reservada **LIKE** en combinación con el carácter **%** (porcentaje) como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter

    SELECT razonsocial, telefono  
      FROM proveedores  
      WHERE telefono LIKE '+54 9 351';   
