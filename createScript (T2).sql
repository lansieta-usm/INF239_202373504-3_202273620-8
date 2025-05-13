-- Creación de la base de datos
-- CREATE DATABASE sistema_articulos;
-- CREATE DATABASE IF NOT EXISTS sistema_articulos DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Conectar a la base de datos (solo en psql)
-- \c sistema_articulos;
-- USE sistema_articulos;

-- Creación de la tabla de roles
CREATE TABLE Rol (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) UNIQUE NOT NULL
);

-- Creación de la tabla de usuarios
CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rut CHAR(10) NOT NULL,
    nombre VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(40) UNIQUE NOT NULL,
    passwd VARCHAR(255) NOT NULL, -- Guardar como hash
    
    idRol INT NOT NULL,
    FOREIGN KEY (idRol) REFERENCES Rol(id) ON DELETE CASCADE
);

-- Creación de la tabla Artículo
CREATE TABLE Articulo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    fechaEnvio DATE NOT NULL,
    resumen TEXT
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
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL
);

-- Creación de la tabla Especialidad
CREATE TABLE Especialidad (
    id INT AUTO_INCREMENT PRIMARY KEY,
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