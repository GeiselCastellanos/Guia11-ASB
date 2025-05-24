CREATE USER 'cf241034'@'%' IDENTIFIED BY '1234';

//Con este paso otorgamos permisos para INSERT, UPDATE y DELETE en la base de datos

GRANT SELECT, INSERT, UPDATE, DELETE ON alumno_cf241034.* TO 'cf241034'@'localhost';

//Otorgamos permisos para crear procedimientos almacenados

GRANT CREATE ROUTINE, EXECUTE ON alumno_cf241034.* TO 'cf241034'@'localhost';
