-- Creación de la base de datos
-- CREATE DATABASE sistema_articulos;

-- Conectar a la base de datos (solo en psql)
-- \c sistema_articulos;

-- Creación de la tabla Artículo
CREATE TABLE Articulo (
    id int PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    fechaEnvio DATE NOT NULL,
    resumen VARCHAR(150)
);

-- Creación de la tabla Autor
CREATE TABLE Autor (
    rut CHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(40) UNIQUE NOT NULL
);

-- Creación de la tabla Revisor
CREATE TABLE Revisor (
    rut CHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(40) UNIQUE NOT NULL
);

-- Creación de la tabla Tópico
CREATE TABLE Topico (
    id int PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL
);

-- Creación de la tabla Especialidad
CREATE TABLE Especialidad (
    id int PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL
);

-- Relación Artículo - Autor (Muchos a Muchos)
CREATE TABLE Autor_Articulo (
    idArticulo INT NOT NULL,
    rutAutor CHAR(10) NOT NULL,
    PRIMARY KEY (idArticulo, rutAutor),
    FOREIGN KEY (idArticulo) REFERENCES Articulo(id) ON DELETE CASCADE,
    FOREIGN KEY (rutAutor) REFERENCES Autor(rut) ON DELETE CASCADE
);

-- Relación Artículo - Tópico (Muchos a Muchos)
CREATE TABLE Articulo_Topico (
    idArticulo INT NOT NULL,
    idTopico INT NOT NULL,
    PRIMARY KEY (idArticulo, idTopico),
    FOREIGN KEY (idArticulo) REFERENCES Articulo(id) ON DELETE CASCADE,
    FOREIGN KEY (idTopico) REFERENCES Topico(id) ON DELETE CASCADE
);

-- Relación Revisor - Especialidad (Muchos a Muchos)
CREATE TABLE Revisor_Especialidad (
    rutRevisor CHAR(10) NOT NULL,
    idEspecialidad INT NOT NULL,
    PRIMARY KEY (rutRevisor, idEspecialidad),
    FOREIGN KEY (rutRevisor) REFERENCES Revisor(rut) ON DELETE CASCADE,
    FOREIGN KEY (idEspecialidad) REFERENCES Especialidad(id) ON DELETE CASCADE
);

-- Relación Artículo - Revisor (Muchos a Muchos)
CREATE TABLE Articulo_Revisor (
    idArticulo INT NOT NULL,
    rutRevisor CHAR(10) NOT NULL,
    PRIMARY KEY (idArticulo, rutRevisor),
    FOREIGN KEY (idArticulo) REFERENCES Articulo(id) ON DELETE CASCADE,
    FOREIGN KEY (rutRevisor) REFERENCES Revisor(rut) ON DELETE CASCADE
);