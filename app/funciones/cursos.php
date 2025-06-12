<?php

    function listarCursos()
    {
        $link = conectar();
        $sql = "SELECT * 
                    FROM cursos
                    JOIN areas 
                        ON cursos.idArea = areas.idArea
                    JOIN niveles 
                        ON cursos.idNivel = niveles.idNivel
                    ORDER BY idCurso DESC";
        return mysqli_query($link, $sql);
    }

    function agregarCurso()
    {
        // capturamos datos enviados por el formulario
        $nombreCurso = $_POST['nombreCurso'];
        $matricula = $_POST['matricula'];
        $idArea = $_POST['idArea'];
        $idNivel = $_POST['idNivel'];
        $link = conectar();
        $sql = "INSERT INTO cursos 
            (nombreCurso, matricula, idArea, idNivel)
            VALUES
            ('$nombreCurso', '$matricula', '$idArea', '$idNivel')";
        mysqli_query($link, $sql);
        header("location:lista-cursos.php");
    }