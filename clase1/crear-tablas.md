# Crear tablas en SQL

> Nota: para poder interactuar con una base de datos debemos activarla primero
> para activar una base de datos utilizamos el comando

    USE nombreBase;
    

> Para crear una tabla dentro de una base de datos utilizamos el comando **CREATE TABLE** 


> Sintaxis:  

    CREATE TABLE nombre  
    (  
        nombreCampo tipoDato característica,   
        nombreCampo2 tipoDato característica,  
        nombreCampo3 tipoDato característica,  
        nombreCampoX tipoDato característica   
    );   


> Ejermplo práctico:  
 
    CREATE TABLE personas  
    (  
        id int auto_increment primary key,  
        apellido varchar(100) not null,  
        nombre varchar(100) not null,  
        dni int unique not null,  
        alta date not null
    );  

