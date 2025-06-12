<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agregar Curso</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }
        .form-label {
            color: #ffffff;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <h1 class="mb-4 text-center">Agregar Curso</h1>
    <form action="agregar-curso.php" method="post">
        <div class="mb-3">
            <label for="nombreCurso" class="form-label">Nombre del Curso</label>
            <input type="text" class="form-control bg-dark text-white" id="nombreCurso" name="nombreCurso" required>
        </div>

        <div class="mb-3">
            <label for="matricula" class="form-label">Matrícula</label>
            <input type="number" step="0.01" class="form-control bg-dark text-white" id="matricula" name="matricula" required>
        </div>

        <div class="mb-3">
            <label for="idArea" class="form-label">Área</label>
            <select class="form-select bg-dark text-white" id="idArea" name="idArea" required>
                <option value="">Seleccionar Área</option>
                <option value="1">Programación</option>
                <option value="2">Diseño gráfico</option>
                <option value="3">Marketing Digital</option>
                <option value="4">Ciencias de Datos</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="idNivel" class="form-label">Nivel</label>
            <select class="form-select bg-dark text-white" id="idNivel" name="idNivel" required>
                <option value="">Seleccionar Nivel</option>
                <option value="1">Básico</option>
                <option value="2">Intermedio</option>
                <option value="3">Avanzado</option>
                <option value="4">Experto</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Guardar Curso</button>
    </form>
</div>
</body>
</html>
