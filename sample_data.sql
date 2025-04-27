-- sample_data.sql
-- Datos de ejemplo para la base de datos librerias2

USE librerias2;

-- Insertar datos en la tabla autor
INSERT INTO autor (nombre, apellido_p, apellido_m) VALUES
('Gabriel', 'García', 'Márquez'),
('Julio', 'Cortázar', ''),
('Isabel', 'Allende', 'Llona'),
('Jorge', 'Luis', 'Borges'),
('Mario', 'Vargas', 'Llosa'),
('Pablo', 'Neruda', ''),
('Octavio', 'Paz', ''),
('Carlos', 'Fuentes', ''),
('Elena', 'Poniatowska', ''),
('Rosario', 'Castellanos', '');

-- Insertar datos en la tabla libro
INSERT INTO libro (isbn, titulo, editorial, paginas) VALUES
('978-0307474278', 'Rayuela', 'Alfaguara', 736),
('978-0061120084', 'Cien años de soledad', 'HarperCollins', 417),
('978-8420471839', 'La ciudad y los perros', 'Alfaguara', 384),
('978-9507315851', 'La casa de los espíritus', 'Sudamericana', 499),
('978-8497592208', 'Ficciones', 'Emecé', 176),
('978-8437604947', 'Veinte poemas de amor', 'Cátedra', 128),
('978-6074556804', 'La noche de Tlatelolco', 'Era', 320),
('978-9681603711', 'Aura', 'Ediciones Era', 96),
('978-6071609810', 'El laberinto de la soledad', 'FCE', 384),
('978-6074455206', 'Balún Canán', 'FCE', 248);

-- Insertar datos en la tabla usuario
INSERT INTO usuario (nombre, apellido_p, apellido_m, telefono, colonia, calle, numero_casa) VALUES
('Juan', 'Pérez', 'Gómez', '5551234567', 'Centro', 'Reforma', '123'),
('María', 'López', 'Hernández', '5559876543', 'Roma', 'Insurgentes', '456'),
('Carlos', 'González', 'Martínez', '5554567890', 'Condesa', 'Amsterdam', '789'),
('Ana', 'Rodríguez', 'Sánchez', '5556789012', 'Del Valle', 'Patriotismo', '321'),
('Pedro', 'Fernández', 'Díaz', '5552345678', 'Narvarte', 'Eje Central', '654'),
('Laura', 'Martínez', 'Vargas', '5553456789', 'Polanco', 'Moliere', '987'),
('David', 'Sánchez', 'Romero', '5557890123', 'Santa Fe', 'Guillermo González', '147'),
('Sofía', 'Díaz', 'García', '5558901234', 'Coyoacán', 'Francisco Sosa', '258'),
('Jorge', 'Hernández', 'Moreno', '5559012345', 'San Ángel', 'Altavista', '369'),
('Patricia', 'Gómez', 'Alvarez', '5550123456', 'Mixcoac', 'San Antonio', '159');

-- Insertar datos en la tabla ejemplar
INSERT INTO ejemplar (isbn, codigo_libro, localizacion) VALUES
('978-0307474278', 1, 'Estante A1'),
('978-0061120084', 2, 'Estante B2'),
('978-8420471839', 3, 'Estante C3'),
('978-9507315851', 4, 'Estante D4'),
('978-8497592208', 5, 'Estante E5'),
('978-8437604947', 6, 'Estante F6'),
('978-6074556804', 7, 'Estante G7'),
('978-9681603711', 8, 'Estante H8'),
('978-6071609810', 9, 'Estante I9'),
('978-6074455206', 10, 'Estante J10');

-- Insertar datos en la tabla usuario_ejemplar
INSERT INTO usuario_ejemplar (codigo_usuario, id_ejemplar, fecha_dev, fecha_entrega) VALUES
(1, 1, '2023-06-15', '2023-06-01'),
(2, 2, '2023-07-20', '2023-07-01'),
(3, 3, '2023-08-25', '2023-08-01'),
(4, 4, '2023-09-30', '2023-09-01'),
(5, 5, '2023-10-05', '2023-10-01'),
(6, 6, '2023-11-10', '2023-11-01'),
(7, 7, '2023-12-15', '2023-12-01'),
(8, 8, '2024-01-20', '2024-01-01'),
(9, 9, '2024-02-25', '2024-02-01'),
(10, 10, '2024-03-30', '2024-03-01');

-- Insertar datos en la tabla autor_libro
INSERT INTO autor_libro (codigo_autor, isbn) VALUES
(1, '978-0061120084'), -- García Márquez -> Cien años de soledad
(2, '978-0307474278'), -- Cortázar -> Rayuela
(3, '978-9507315851'), -- Allende -> La casa de los espíritus
(4, '978-8497592208'), -- Borges -> Ficciones
(5, '978-8420471839'), -- Vargas Llosa -> La ciudad y los perros
(6, '978-8437604947'), -- Neruda -> Veinte poemas de amor
(7, '978-6071609810'), -- Paz -> El laberinto de la soledad
(8, '978-9681603711'), -- Fuentes -> Aura
(9, '978-6074556804'), -- Poniatowska -> La noche de Tlatelolco
(10, '978-6074455206'); -- Castellanos -> Balún Canán