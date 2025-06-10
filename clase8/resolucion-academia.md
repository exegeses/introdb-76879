# resolución práctica academia

1- creación de nuevas tablas

    areas ☑️  
    niveles ☑️  
    cursos  
    alumnos ☑️   
    cursos_alumnos  


    create table areas  
    (  
        idArea tinyint unsigned auto_increment primary key,  
        nombreArea varchar(50) not null  
    );  

    create table niveles  
    (  
        idNivel tinyint unsigned auto_increment primary key,  
        nombreNivel varchar(50) not null  
    );  

    create tabla cursos
    (
        idCurso smallint unsigned auto_increment primary key,
        nombreCurso varchar(50) not null, 
        matricula DECIMAL(8,2) NOT NULL,
        idArea tinyint unsigned, 
        idNivel tinyint unsigned
    );

    CREATE TABLE alumnos 
    (    
        idAlumno smallint unsigned auto_increment primary key,  
        nombre varchar(100) not null,  
        apellido varchar(100) not null,  
        dni varchar(15) not null unique,   
        email varchar(100) not null,  
        fechaNacimiento date not null  
    );  

