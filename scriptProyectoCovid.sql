use covid_19;
SET GLOBAL log_bin_trust_function_creators = 1;
SET FOREIGN_KEY_CHECKS=0;

####### FUNCIÓN #######
# Función para calcular la edad promedio entre todos los pacientes #

DELIMITER //
CREATE FUNCTION calcular_promedio_edad()
RETURNS FLOAT
BEGIN
    DECLARE total_edades INT;
    DECLARE cantidad_pacientes INT;
    DECLARE promedio FLOAT;

    SELECT SUM(EDAD) INTO total_edades FROM paciente;
    SELECT COUNT(*) INTO cantidad_pacientes FROM paciente;

        SET promedio = total_edades / cantidad_pacientes;

    RETURN promedio;
END //
DELIMITER ;

# Promedio de edad de pacientes en general 
SELECT calcular_promedio_edad() AS promedio;



####### VISTAS #######

# Vista para ver los resultados de prueba del paciente

CREATE VIEW vista_paciente_resultado AS
SELECT p.id_registro, p.edad, c.resultado_lab, c.toma_muestra_antigeno
FROM paciente p
JOIN covid c ON p.id_registro = c.id_registro5;

SELECT * FROM vista_paciente_resultado ;


# Vista para ver todos los pacientes de Sonora
CREATE VIEW vista_paciente_lugar AS
SELECT p.id_registro, p.sexo, l.entidad_nac
FROM paciente p
JOIN lugar l ON p.id_registro = fechal.id_registro3;

SELECT * FROM vista_paciente_lugar WHERE entidad_nac = 26;

####### PROCEDIMIENTOS ######## 

# Obtener cantidad de pacientes

drop function if exists obtener_cantidad_pacientes_por_sexo;
DELIMITER //

CREATE PROCEDURE obtener_cantidad_pacientes_por_sexo(sexo_param VARCHAR(20))
BEGIN
    DECLARE contador INT;
    SELECT COUNT(*) INTO contador FROM paciente WHERE sexo = sexo_param;
    SELECT contador AS cantidad_pacientes;
END //

DELIMITER ;

CALL obtener_cantidad_pacientes_por_sexo('Mujer');
CALL obtener_cantidad_pacientes_por_sexo('Hombre');


## Información de un paciente 

DROP FUNCTION IF EXISTS ObtenerDatosPaciente;

DELIMITER //

CREATE PROCEDURE ObtenerDatosPaciente(IN paciente_id VARCHAR(10))
BEGIN
    -- Consulta para obtener los datos del paciente
    SELECT *
    FROM paciente
    WHERE id_registro = paciente_id;

    -- Consulta para obtener los datos de covid del paciente
    SELECT *
    FROM covid
    WHERE id_registro5 = paciente_id;

    -- Consulta para obtener los datos de estado de salud del paciente
    SELECT *
    FROM estado_salud
    WHERE id_registro4 = paciente_id;

    -- Consulta para obtener los datos de fecha del paciente
    SELECT *
    FROM fecha
    WHERE id_registro = paciente_id;

    -- Consulta para obtener los datos de hospital del paciente
    SELECT *
    FROM hospital
    WHERE id_registro1 = paciente_id;

    -- Consulta para obtener los datos de lugar del paciente
    SELECT *
    FROM lugar
    WHERE id_registro3 = paciente_id;

END //

DELIMITER ;
	

CALL ObtenerDatosPaciente('g0036d0');
