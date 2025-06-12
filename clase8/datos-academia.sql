-- datos areas
INSERT INTO areas
    (nombreArea)
VALUES
   ('Programación'),
   ('Diseño gráfico'),
   ('Marketing Digital'),
   ('Ciencias de Datos');

-- datos niveles
INSERT INTO niveles
    (nombreNivel)
VALUES
   ('Básico'),
   ('Intermedio'),
   ('Avanzado'),
   ('Experto');

INSERT INTO cursos
    (nombreCurso, matricula, idArea, idNivel)
VALUES
     ('Introducción a la Programación', 15000.00, 1, 1),
     ('Diseño Gráfico Básico', 13000.00, 2, 1),
     ('Marketing en Redes Sociales', 14000.00, 3, 2),
     ('Python para Ciencia de Datos', 16000.00, 4, 2),
     ('Diseño UX/UI', 15500.00, 2, 2),
     ('Programación Web con JavaScript', 17000.00, 1, 2),
     ('Estrategias de Marketing Avanzado', 18000.00, 3, 3),
     ('Machine Learning Avanzado', 22000.00, 4, 3),
     ('Fullstack Developer', 25000.00, 1, 4),
     ('Branding Profesional', 19000.00, 2, 3);

INSERT INTO alumnos
    (nombre, apellido, dni, email, fechaNacimiento)
VALUES
    ('Ana', 'González', '12345678', 'ana.gonzalez@mail.com', '1995-03-12'),
    ('Bruno', 'Pérez', '23456789', 'bruno.perez@mail.com', '1998-06-22'),
    ('Carla', 'Díaz', '34567890', 'carla.diaz@mail.com', '1997-08-14'),
    ('Diego', 'Martínez', '45678901', 'diego.martinez@mail.com', '1993-01-19'),
    ('Elena', 'Fernández', '56789012', 'elena.fernandez@mail.com', '2000-05-05'),
    ('Federico', 'Romero', '67890123', 'federico.romero@mail.com', '1994-11-30'),
    ('Gabriela', 'Ruiz', '78901234', 'gabriela.ruiz@mail.com', '1996-07-21'),
    ('Hugo', 'Sánchez', '89012345', 'hugo.sanchez@mail.com', '1992-09-09'),
    ('Isabel', 'López', '90123456', 'isabel.lopez@mail.com', '1999-04-16'),
    ('Joaquín', 'Torres', '01234567', 'joaquin.torres@mail.com', '2001-12-01'),
    ('Karina', 'Silva', '11223344', 'karina.silva@mail.com', '1995-10-25'),
    ('Luis', 'Cabrera', '22334455', 'luis.cabrera@mail.com', '1990-02-17'),
    ('María', 'Moreno', '33445566', 'maria.moreno@mail.com', '1998-03-08'),
    ('Nicolás', 'Vega', '44556677', 'nicolas.vega@mail.com', '1997-06-27'),
    ('Olga', 'Arias', '55667788', 'olga.arias@mail.com', '1993-08-12'),
    ('Pedro', 'Herrera', '66778899', 'pedro.herrera@mail.com', '1996-01-06'),
    ('Raquel', 'Méndez', '77889900', 'raquel.mendez@mail.com', '1994-04-30'),
    ('Sergio', 'Castro', '88990011', 'sergio.castro@mail.com', '1991-09-15'),
    ('Tamara', 'Navarro', '99001122', 'tamara.navarro@mail.com', '1992-12-20'),
    ('Ulises', 'Ortega', '10111213', 'ulises.ortega@mail.com', '1999-11-11');

INSERT INTO cursos_alumnos
    (idAlumno, idCurso, fechaInscripcion, activo)
VALUES
 (1, 1, '2025-02-10', true),
 (1, 6, '2025-03-15', true),
 (2, 2, '2025-02-12', true),
 (2, 5, '2025-03-01', true),
 (3, 3, '2025-01-20', true),
 (3, 7, '2025-04-10', true),
 (4, 4, '2025-02-05', true),
 (4, 8, '2025-03-25', true),
 (5, 1, '2025-02-15', true),
 (5, 2, '2025-03-05', true),
 (6, 3, '2025-01-25', true),
 (6, 6, '2025-03-12', true),
 (7, 4, '2025-02-28', true),
 (7, 9, '2025-04-05', true),
 (8, 5, '2025-01-30', true),
 (8, 10, '2025-04-01', true),
 (9, 1, '2025-02-10', true),
 (9, 3, '2025-03-10', true),
 (10, 2, '2025-03-08', true),
 (10, 4, '2025-03-22', true),
 (11, 6, '2025-03-15', true),
 (11, 8, '2025-04-03', true),
 (12, 1, '2025-02-18', true),
 (12, 5, '2025-04-12', true),
 (13, 3, '2025-02-21', true),
 (13, 7, '2025-04-20', true),
 (14, 2, '2025-02-25', true),
 (14, 6, '2025-04-15', true),
 (15, 4, '2025-02-05', true),
 (15, 9, '2025-04-22', true),
 (16, 5, '2025-03-01', true),
 (16, 10, '2025-04-08', true),
 (17, 1, '2025-03-10', true),
 (17, 3, '2025-04-10', true),
 (18, 6, '2025-02-27', true),
 (18, 7, '2025-04-18', true),
 (19, 2, '2025-02-11', true),
 (19, 4, '2025-03-10', true),
 (20, 3, '2025-02-05', true),
 (20, 5, '2025-03-25', true),
 (20, 9, '2025-04-30', true),
 (20, 10, '2025-05-10', true);
