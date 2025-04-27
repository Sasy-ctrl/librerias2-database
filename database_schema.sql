-- database_schema.sql
-- Script de creación de la base de datos y tablas

CREATE DATABASE IF NOT EXISTS librerias2;
USE librerias2;

-- Tabla autor
CREATE TABLE autor (
    codigo_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido_p VARCHAR(100) NOT NULL,
    apellido_m VARCHAR(100) NOT NULL
);

-- Tabla libro
CREATE TABLE libro (
    isbn VARCHAR(100) PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    editorial VARCHAR(100) NOT NULL,
    paginas INT NOT NULL,
    CHECK (paginas >= 1)
);

-- Tabla usuario
CREATE TABLE usuario (
    codigo_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido_p VARCHAR(100) NOT NULL,
    apellido_m VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    colonia VARCHAR(100) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    numero_casa VARCHAR(100) NOT NULL
);

-- Tabla ejemplar
CREATE TABLE ejemplar (
    id_ejemplar INT AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(100),
    codigo_libro INT NOT NULL,
    localizacion VARCHAR(100) NOT NULL,
    FOREIGN KEY (isbn) REFERENCES libro(isbn)
);

-- Tabla usuario_ejemplar
CREATE TABLE usuario_ejemplar (
    id_usuario_ejemplar INT AUTO_INCREMENT PRIMARY KEY,
    codigo_usuario INT NOT NULL,
    id_ejemplar INT NOT NULL,
    fecha_dev DATE NOT NULL,
    fecha_entrega DATE NOT NULL,
    CHECK (fecha_dev >= fecha_entrega),
    FOREIGN KEY (codigo_usuario) REFERENCES usuario(codigo_usuario),
    FOREIGN KEY (id_ejemplar) REFERENCES ejemplar(id_ejemplar)
);

-- Tabla autor_libro
CREATE TABLE autor_libro (
    codigo_autor INT NOT NULL,
    isbn VARCHAR(100),
    FOREIGN KEY (codigo_autor) REFERENCES autor(codigo_autor),
    FOREIGN KEY (isbn) REFERENCES libro(isbn)
);