# Proyecto academia

> Se trata de academia que brinda cursos de desarrollo de aplicaciones y ciencias de datos   

> Debemos almacenar información de: 

[] Cursos dictados
> Debemos registrar los siguientes datos 
> Nombre del curso,
> El costo de la matrícula,
> Áreas de curso (Programación, Diseño gráfico, Marketing Digital, Ciencias de Datos, etc)
> Niveles de complejidad (Básico, Intermedio, Avanzado y Experto)

[] Alumnos
> Debemos registrar datos de los alumnos tal es como:
> Apellido del alumno, 
> Nombre del alumno, 
> DNI, 
> e-mail, 
> fecha de nacimiento

> Debemos saber:
 
> curso, matrícula, area, nivel

    SELECT
            nombreCurso,
            matricula,
            nombreArea,
            nombreNivel
    FROM cursos as c
    JOIN areas AS a
      ON c.idArea = a.idArea
    JOIN niveles as n
      ON c.idNivel = n.idNivel;


> qué alumnos se han anotado a cada curso (puede ser más de un curso) 
> si están o no activos en dicho curso

    SELECT nombre, apellido, nombreCurso
    FROM alumnos as a
    JOIN cursos_alumnos as ca
      ON a.idAlumno = ca.idAlumno
    JOIN cursos as c
      ON c.idCurso = ca.idCurso
    WHERE ca.activo = 1;
