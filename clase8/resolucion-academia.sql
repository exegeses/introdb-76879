# resolución práctica academia

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

    create table cursos
    (
        idCurso smallint unsigned auto_increment primary key,
        nombreCurso varchar(50) not null, 
        matricula DECIMAL(8,2) NOT NULL,
        idArea tinyint unsigned, 
        idNivel tinyint unsigned,
        FOREIGN KEY (idArea) REFERENCES areas(idArea),
        FOREIGN KEY (idNivel) REFERENCES niveles(idNivel)
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

    CREATE TABLE cursos_alumnos
    (
        idAlumno smallint unsigned not null,
        idCurso smallint unsigned not null,
        fechaInscripcion date not null DEFAULT (CURRENT_DATE),
        activo boolean not null,
        -- Clave primaria
        -- primary key (idAlumno, idCurso),
        -- Clave foránea
        FOREIGN KEY (idAlumno) REFERENCES alumnos(idAlumno),
        FOREIGN KEY (idCurso) REFERENCES cursos(idCurso)
    );
