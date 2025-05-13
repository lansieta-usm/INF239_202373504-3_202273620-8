-- Poblar la tabla Rol con los roles
INSERT INTO Rol (nombre)
VALUES
    ('Autor'),
    ('Revisor'),
    ('Jefe de Comité');

INSERT INTO Usuario (rut, nombre, email, passwd, idRol)
VALUES
    ('11537054-5', 'Juan Pérez', 'juan.perez@gmail.com', 'juanceto01', 1),
    ('7721536-0', 'María González', 'maria.gonzalez@gmail.com', 'm4r1agonz4lez', 1),
    ('23129419-8', 'Carlos Rojas', 'carlos.rojas@gmail.com', 'carlitos500', 1),
    ('24389689-4', 'Ana Díaz', 'ana.diaz@gmail.com', 'd1az.an4.uwu', 1),
    ('6626931-0', 'Luis Soto', 'luis.soto@gmail.com', 'sotito5000', 1),
    ('13605327-2', 'Elena Muñoz', 'elena.munoz@gmail.com', '12345678', 2),
    ('12652301-7', 'Daniel Silva', 'daniel.silva@gmail.com', 'revisor.daniel', 2),
    ('7740124-5', 'Laura Soto', 'laura.soto@gmail.com', 'laurit4.owo', 2),
    ('23539924-5', 'Miguel Contreras', 'miguel.contreras@gmail.com', 'elpapimicky1234', 2),
    ('7741329-4', 'Carmen Rojas', 'carmen.rojas@gmail.com', 'carmencitaUnU', 2),
    ('21748010-8', 'Bastián Garcés', 'bgarces@usm.cl', 'bastiancito1234', 3);

-- Poblar la tabla Autor con 5 autores
INSERT INTO Autor (rut, nombre, email)
VALUES
    ('11537054-5', 'Juan Pérez', 'juan.perez@gmail.com'),
    ('7721536-0', 'María González', 'maria.gonzalez@gmail.com'),
    ('23129419-8', 'Carlos Rojas', 'carlos.rojas@gmail.com'),
    ('24389689-4', 'Ana Díaz', 'ana.diaz@gmail.com'),
    ('6626931-0', 'Luis Soto', 'luis.soto@gmail.com');

-- Poblar la tabla Revisor con 5 revisores
INSERT INTO Revisor (rut, nombre, email)
VALUES
    ('13605327-2', 'Elena Muñoz', 'elena.munoz@gmail.com'),
    ('12652301-7', 'Daniel Silva', 'daniel.silva@gmail.com'),
    ('7740124-5', 'Laura Soto', 'laura.soto@gmail.com'),
    ('23539924-5', 'Miguel Contreras', 'miguel.contreras@gmail.com'),
    ('7741329-4', 'Carmen Rojas', 'carmen.rojas@gmail.com');

-- Poblar la tabla Articulo con 5 artículos
INSERT INTO Articulo (titulo, fechaEnvio, resumen)
VALUES
    ('Introducción a Bases de datos', '2023-01-15', 'Resumen conciso sobre los fundamentos y principios clave de Bases de datos.'),
    ('Avances Recientes en Análisis de sistemas', '2023-01-20', 'Exploración de las últimas innovaciones y desarrollos en el campo de Análisis de sistemas.'),
    ('Aplicaciones Prácticas de Estadística', '2023-01-25', 'Análisis de casos de uso reales y cómo Estadística resuelve problemas específicos.'),
    ('Desafíos y Oportunidades en Inteligencia Artificial', '2023-02-01', 'Discusión sobre los retos actuales y las futuras direcciones de investigación en Inteligencia Artificial.'),
    ('Optimización de Procesos con Redes de computadoras', '2023-02-05', 'Presentación de técnicas para mejorar la eficiencia y rendimiento utilizando Redes de computadoras.');

-- Poblar la tabla de tópicos
INSERT INTO Topico (nombre)
VALUES 
    ('Bases de datos'),
    ('Análisis de sistemas'),
    ('Estadística'),
    ('Inteligencia Artificial'),
    ('Redes de computadoras'),
    ('Seguridad informática'),
    ('Desarrollo de software'),
    ('Gestión de proyectos'),
    ('Sistemas distribuidos'),
    ('Computación en la nube'),
    ('Machine Learning'),
    ('Big Data'),
    ('Blockchain'),
    ('IoT (Internet de las cosas)'),
    ('Computación cuántica'),
    ('Interfaces de usuario'),
    ('Arquitectura de computadoras'),
    ('Sistemas operativos'),
    ('Algoritmos y estructuras de datos'),
    ('Optimización de software'),
    ('Investigación operativa'),
    ('Análisis de datos'),
    ('Automatización'),
    ('Programación concurrente'),
    ('Realidad virtual'),
    ('Visión por computadora'),
    ('Procesamiento de lenguaje natural'),
    ('Redes neuronales'),
    ('Ciberseguridad'),
    ('Desarrollo web'),
    ('Programación orientada a objetos');

    -- Poblar la tabla de especialidades
INSERT INTO Especialidad (nombre)
VALUES 
    ('Bases de datos'),
    ('Análisis de sistemas'),
    ('Estadística'),
    ('Inteligencia Artificial'),
    ('Redes de computadoras'),
    ('Seguridad informática'),
    ('Desarrollo de software'),
    ('Gestión de proyectos'),
    ('Sistemas distribuidos'),
    ('Computación en la nube'),
    ('Machine Learning'),
    ('Big Data'),
    ('Blockchain'),
    ('IoT (Internet de las cosas)'),
    ('Computación cuántica'),
    ('Interfaces de usuario'),
    ('Arquitectura de computadoras'),
    ('Sistemas operativos'),
    ('Algoritmos y estructuras de datos'),
    ('Optimización de software'),
    ('Investigación operativa'),
    ('Análisis de datos'),
    ('Automatización'),
    ('Programación concurrente'),
    ('Realidad virtual'),
    ('Visión por computadora'),
    ('Procesamiento de lenguaje natural'),
    ('Redes neuronales'),
    ('Ciberseguridad'),
    ('Desarrollo web'),
    ('Programación orientada a objetos');

-- Poblar la tabla de relación Articulo_Topico
INSERT INTO Articulo_Topico (idArticulo, idTopico)
VALUES
    (1, 1),   -- Bases de datos
    (2, 2),   -- Análisis de sistemas
    (3, 3),   -- Estadística
    (4, 4),   -- Inteligencia Artificial
    (5, 5),   -- Redes de computadoras, Machine Learning
    (5, 11);

-- Poblar la tabla de relación Revisor_Especialidad (asignando 4 especialidades al azar por revisor)
INSERT INTO Revisor_Especialidad (rutRevisor, idEspecialidad)
VALUES
    -- Revisor 13605327-2
    ('13605327-2', 11),
    ('13605327-2', 5),
    ('13605327-2', 21),
    ('13605327-2', 30),
    -- Revisor 12652301-7
    ('12652301-7', 1),
    ('12652301-7', 18),
    ('12652301-7', 7),
    ('12652301-7', 29),
    -- Revisor 7740124-5
    ('7740124-5', 19),
    ('7740124-5', 24),
    ('7740124-5', 2),
    ('7740124-5', 7),
    -- Revisor 23539924-5
    ('23539924-5', 12),
    ('23539924-5', 28),
    ('23539924-5', 17),
    ('23539924-5', 1),
    -- Revisor 7741329-4
    ('7741329-4', 6),
    ('7741329-4', 14),
    ('7741329-4', 31),
    ('7741329-4', 22);

-- Poblar Articulo_Revisor para los 5 primeros artículos
INSERT INTO Articulo_Revisor (idArticulo, rutRevisor)
VALUES
    -- Articulo 1 (Tópico 1: Bases de datos)
    (1, '12652301-7'),
    (1, '13605327-2'),
    -- Articulo 2 (Tópico 2: Análisis de sistemas)
    (2, '7740124-5'),
    (2, '23539924-5'),
    (2, '7741329-4'),
    -- Articulo 3 (Tópico 3: Estadística)
    (3, '12652301-7'),
    -- Articulo 4 (Tópico 4: Inteligencia Artificial)
    (4, '7740124-5'),
    (4, '12652301-7'),
    (4, '7741329-4'),
    -- Articulo 5 (Tópico 5: Redes de computadoras)
    (5, '7741329-4'),
    (5, '13605327-2');

INSERT INTO Autor_Articulo (idArticulo, rutAutor)
VALUES
    -- Articulo 1 (1 autor)
    (1, '23129419-8'),
    -- Articulo 2 (1 autor)
    (2, '7721536-0'),
    -- Articulo 3 (1 autor)
    (3, '23129419-8'),
    -- Articulo 4 (3 autores)
    (4, '24389689-4'),
    (4, '6626931-0'),
    (4, '11537054-5'),
    -- Articulo 5 (2 autores)
    (5, '6626931-0'),
    (5, '11537054-5');