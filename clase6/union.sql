# union
/*
    Utilizamos UNION para unir dos consultas
    Nota: el siguiente es un ejemplo del Full Outer JOIN
*/

SELECT idEmpleado, nombre, apellido, departamento
FROM empleados
  LEFT JOIN departamentos
    ON empleados.idDepartamento = departamentos.idDepartamento

UNION

SELECT idEmpleado, nombre, apellido, departamento
FROM empleados
 RIGHT JOIN departamentos
    ON empleados.idDepartamento = departamentos.idDepartamento;
