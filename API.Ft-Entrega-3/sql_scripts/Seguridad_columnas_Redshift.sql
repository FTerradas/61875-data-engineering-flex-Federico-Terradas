-- Momento 1: Otorgar acceso al usuario para todas las columnas, excepto el Número de Seguro Social (ssn) para el usuario
GRANT ALL ON SCHEMA federico_terradas_coderhouse_secure TO data_scientist;
GRANT SELECT(name, dob, zip) ON federico_terradas_coderhouse_secure.my_secure_table TO data_scientist;

-- Momento 2: Conectarse al clúster con usuario data_scientist. 
-- Ejecute una selección en la tabla con y sin el Número de Seguro Social. Observen la diferencia
SELECT name, dob, zip
FROM federico_terradas_coderhouse_secure.my_secure_table;

SELECT name, dob, zip, ssn
FROM federico_terradas_coderhouse_secure.my_secure_table;
