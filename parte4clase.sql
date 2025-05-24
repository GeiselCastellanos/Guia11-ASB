USE alumno_cf241034;

//Creamos el procedimiento almacenado 

DELIMITER $$
CREATE PROCEDURE insertar_nota(
 IN p_id_alumno INT,
 IN p_materia VARCHAR(100),
 IN p_nota DECIMAL(5,2)
)
BEGIN
 -- Insertar la nueva nota
 INSERT INTO notas (id_alumno, materia, nota)
 VALUES (p_id_alumno, p_materia, p_nota);
 -- Mostrar los datos insertados
 SELECT * FROM notas WHERE id_nota = LAST_INSERT_ID();
END $$
DELIMITER ;