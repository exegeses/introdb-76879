
CREATE TABLE proveedores (
    idProveedor smallint unsigned NOT NULL AUTO_INCREMENT,
    razonsocial VARCHAR(100) NOT NULL,
    cuit VARCHAR(13) NOT NULL UNIQUE,
    telefono VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    PRIMARY KEY (idProveedor)
);

/*
Modificamos el tipo de dato para que quede smallint unsigned
ALTER TABLE proveedores
	MODIFY idProveedor smallint unsigned auto_increment;
DESC proveedores;
*/