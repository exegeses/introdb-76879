create table departamentos
(
    idDepartamento tinyint unsigned auto_increment primary key,
    departamento varchar(50) unique not null
);

insert into departamentos
    VALUES
        (default, 'Administración'),
        (default, 'Compras'),
        (default, 'Ventas'),
        (default, 'Atención al público'),
        (default, 'Gerencia general'),
        (default, 'Marketing');

