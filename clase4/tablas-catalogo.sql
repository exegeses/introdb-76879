# tablas proyecto catálogo

-- marcas
create table marcas
(
    idMarca tinyint unsigned auto_increment primary key,
    marca varchar(100) not null unique
);

-- categorias
create table categorias
(
    idCategoria tinyint unsigned auto_increment primary key,
    categoria varchar(100) not null unique
);

-- productos
create table productos
(
    idProducto smallint unsigned auto_increment primary key,
    producto varchar(100) unique not null,
    precio decimal(10,2) not null,
    idMarca tinyint unsigned not null,
    idCategoria tinyint unsigned not null,
    descripcion varchar(500),
    imagen varchar(50) not null,
    activo boolean not null,
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);

