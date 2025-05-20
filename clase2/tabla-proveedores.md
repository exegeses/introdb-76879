# creación de tablas proveedores

    CREATE TABLE proveedores  
    (  
        idProveedor int auto_increment primary key,  
        razonsocial varchar(100) not null,  
        cuit varchar(13) not null unique,  
        telefono varchar(20) not null unique,  
        email varchar(50) not null,  
        direccion varchar(100) not null
    );
