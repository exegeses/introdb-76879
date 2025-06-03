# Alias en SQL
/*
    En SQL podemos re nombrar el enunciado de una columna
    con el motivo que quede mejor en un reporte.
    Nota: no se cambia definitivamente el nombre de la columna
    sino que se re nombra únicamente para el reporte
    Implementamos un alias con la palabra reservada **AS**
    (se puede omitir)
*/

SELECT
        idProducto AS ID,
        producto AS Producto,
        precio AS Contado,
        precio * 1.05 AS Lista,
        marca AS Marca,
        categoria AS Categoría
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria;


SELECT
    idProducto AS ID,
    producto AS Producto,
    precio AS Contado,
    precio * 1.05 AS Lista,
    marca AS Marca,
    categoria AS Categoría
FROM productos AS p
 JOIN marcas AS m
  ON p.idMarca = m.idMarca
 JOIN categorias AS c
  ON p.idCategoria = c.idCategoria;