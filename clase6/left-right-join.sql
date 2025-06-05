#
/*
    nombre y apellido (empleados)
    departamento (departamentos)
*/
SELECT idEmpleado, nombre, apellido, departamento
FROM empleados
JOIN departamentos
  ON empleados.idDepartamento = departamentos.idDepartamento;

-- LEFT JOIN

SELECT idEmpleado, nombre, apellido, departamento
FROM empleados
 LEFT JOIN departamentos
      ON empleados.idDepartamento = departamentos.idDepartamento;

-- RIGHT JOIN
SELECT idEmpleado, nombre, apellido, departamento
FROM empleados
 RIGHT JOIN departamentos
   ON empleados.idDepartamento = departamentos.idDepartamento;
