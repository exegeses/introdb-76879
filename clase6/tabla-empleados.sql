CREATE TABLE empleados
(
       idEmpleado TINYINT PRIMARY KEY AUTO_INCREMENT,
       nombre VARCHAR(50) NOT NULL,
       apellido VARCHAR(50) NOT NULL,
       dni VARCHAR(15) NOT NULL UNIQUE,
       nroLegajo INT NOT NULL,
       sueldo DECIMAL(10,2) NOT NULL,
       telefono VARCHAR(15) NOT NULL,
       idDepartamento TINYINT,

    -- Índices para mejorar el rendimiento
                           INDEX idx_dni (dni)
    -- Clave foránea (comentada hasta crear tabla Departamentos)
    -- FOREIGN KEY (idDepartamento) REFERENCES Departamentos(idDepartamento)
);

-- Insertar 12 empleados de prueba (3 con idDepartamento NULL)
INSERT INTO empleados
    (nombre, apellido, dni, nroLegajo, sueldo, telefono, idDepartamento)
VALUES
-- Empleados con departamento asignado (9 empleados)
('Juan', 'Quintana', '36232465', 36232465, 25000.00, '1123456789', 1),
('Juanita', 'Luna', '36232466', 36232466, 25000.00, '1123456790', 1),
('Carlos', 'Alarcón', '46232464', 46232464, 26000.00, '1133456788', 2),
('Dina', 'Paceros', '46232463', 46232463, 20000.00, '1133456785', 3),
('Pedro', 'Díaz', '41232463', 41232463, 22000.00, '1133486765', 4),
('Wilson', 'Fernández', '26232466', 62324666, 45000.00, '1153456788', 5),
('Ana', 'Martínez', '33445566', 33445566, 28000.00, '1145678901', 2),
('Luis', 'Rodriguez', '44556677', 44556677, 32000.00, '1156789012', 3),
('María', 'García', '55667788', 55667788, 35000.00, '1167890123', 1),

-- Empleados SIN departamento asignado (3 empleados con NULL)
('Tina', 'Ponce', '42832463', 42832463, 20000.00, '1133256765', NULL),
('Mario', 'González', '43832563', 43832563, 20000.00, '1173476788', NULL),
('Roberto', 'Silva', '38945612', 38945612, 23000.00, '1198765432', NULL);

