<?php
    require 'funciones/conexion.php';
    require 'funciones/cursos.php';
    $cursos = listarCursos();
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Listado de Cursos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }
        .table-dark th,
        .table-dark td {
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <h1 class="mb-4 text-center">Listado de Cursos</h1>
    <div class="table-responsive">
        <table class="table table-dark table-bordered table-striped">
            <thead>
            <tr>
                <th>ID Curso</th>
                <th>Nombre del Curso</th>
                <th>Matrícula</th>
                <th>Área</th>
                <th>Nivel</th>
            </tr>
            </thead>
            <tbody>
<?php
        while ($fila = mysqli_fetch_array($cursos)) {    
?>            
            <tr>
                <td><?= $fila['idCurso'] ?></td>
                <td><?= $fila['nombreCurso'] ?></td>
                <td>$<?= $fila['matricula'] ?></td>
                <td><?= $fila['nombreArea'] ?></td>
                <td><?= $fila['nombreNivel'] ?></td>
            </tr>
<?php
        }
?>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
