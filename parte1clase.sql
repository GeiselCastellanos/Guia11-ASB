CREATE DATABASE alumno_cf241034;
USE alumno_cf241034;

CREATE TABLE alumnos (
 id_alumno INT AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL,
 apellido VARCHAR(100) NOT NULL,
 fecha_nacimiento DATE NOT NULL
);

INSERT INTO alumnos (nombre, apellido, fecha_nacimiento) VALUES
('Juan', 'Pérez', '2000-05-14'),
('Ana', 'Gómez', '1999-11-23'),
('Luis', 'Ramírez', '2001-03-10');

CREATE TABLE notas (
 id_nota INT AUTO_INCREMENT PRIMARY KEY,
 id_alumno INT,
 materia VARCHAR(100) NOT NULL,
 nota DECIMAL(5,2) NOT NULL,
 FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno)
);

INSERT INTO notas (id_alumno, materia, nota) VALUES
(1, 'Matemáticas', 85.50),
(1, 'Historia', 90.00),
(2, 'Matemáticas', 78.25),
(3, 'Historia', 88.75),
(3, 'Matemáticas', 92.00);

//Para ver los alumnos que pusimos solo ponemos 

SELECT * FROM alumnos;

//Para ver las notas ponemos 

SELECT * FROM notas;

//Para ver las notas con los nombres de los alumnos ponemos 

SELECT alumnos.nombre, alumnos.apellido, notas.materia, notas.nota
FROM alumnos
INNER JOIN notas ON alumnos.id_alumno = notas.id_alumno;