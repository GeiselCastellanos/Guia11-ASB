CREATE USER 'notas_cf241034'@'localhost' IDENTIFIED BY '1234';

//Otorgar permisos solo para ejecutar el procedimiento almacenado

GRANT EXECUTE ON PROCEDURE alumno_cf241034.insertar_nota TO 'notas_cf241034'@'localhost';

//Dar permisos SELECT solo sobre la tabla notas

GRANT SELECT ON alumno_cf241034.notas TO 'notas_cf241034'@'localhost';