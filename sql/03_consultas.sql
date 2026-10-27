-- Consultas del ejercicio 2.4
-- (MySQL no distingue mayúsculas de minúsculas en las comparaciones de texto
--  con la configuración por defecto, por eso 'INACTIVO' encuentra 'Inactivo').

-- ¿Cuáles son los pozos con estado Inactivo?
SELECT * FROM pozo WHERE estado = 'INACTIVO';

-- ¿Cuáles son los permisos que tienen estación del año Verano?
SELECT * FROM permiso WHERE estacion = 'VERANO';
