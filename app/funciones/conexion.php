<?php

    const SERVER = "localhost";
    const USER = "root";
    const PASS = "root";
    const DB = "introdb76879";

    function conectar()
    {
        $link = mysqli_connect(
            SERVER,
            USER,
            PASS,
            DB);
        return $link;
    }