# consulta a través de una tabla pivot
/*
    obtener
        producto, precio (productos)
        razón social, teéfono (proveedores)
*/
SELECT producto, precio, razonsocial, telefono
    FROM productos
    JOIN productos_proveedores
      ON productos.idProducto = productos_proveedores.idProducto
    JOIN proveedores
      ON proveedores.idProveedor = productos_proveedores.idProveedor;

/*
    obtener
        producto, precio (productos)
        marca (marcas)
        categoria (categorias)
        razón social, teéfono (proveedores)
*/

SELECT producto, precio, marca, categoria, razonsocial, telefono
    FROM productos
    JOIN marcas
      ON productos.idMarca = marcas.idMarca
    JOIN categorias
      ON productos.idCategoria = categorias.idCategoria
    JOIN productos_proveedores
      ON productos.idProducto = productos_proveedores.idProducto
    JOIN proveedores
      ON proveedores.idProveedor = productos_proveedores.idProveedor;

/* exactamente los mismos datos pero del producto id = 8 */

SELECT producto, precio, marca, categoria, razonsocial, telefono
FROM productos
 JOIN marcas
   ON productos.idMarca = marcas.idMarca
 JOIN categorias
   ON productos.idCategoria = categorias.idCategoria
 JOIN productos_proveedores
   ON productos.idProducto = productos_proveedores.idProducto
 JOIN proveedores
   ON proveedores.idProveedor = productos_proveedores.idProveedor
WHERE productos.idProducto = 8;