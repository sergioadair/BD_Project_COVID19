SELECT 'Cardiovascular' AS Padecimiento, COUNT(CASE WHEN cardiovascular = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Obesidad' AS Padecimiento, COUNT(CASE WHEN obesidad = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Renal crónica' AS Padecimiento, COUNT(CASE WHEN renal_cronica = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Inmunosupresión' AS Padecimiento, COUNT(CASE WHEN inmusupr = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Hipertensión' AS Padecimiento, COUNT(CASE WHEN hipertension = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Epoc' AS Padecimiento, COUNT(CASE WHEN epoc = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Asma' AS Padecimiento, COUNT(CASE WHEN asma = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Embarazo' AS Padecimiento, COUNT(CASE WHEN embarazo = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Intubado' AS Padecimiento, COUNT(CASE WHEN intubado = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Neumonia' AS Padecimiento, COUNT(CASE WHEN neumonia = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Diabetes' AS Padecimiento, COUNT(CASE WHEN diabetes = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Tabaquismo' AS Padecimiento, COUNT(CASE WHEN tabaquimos = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'UCI' AS Padecimiento, COUNT(CASE WHEN uci = 1 THEN 1 END) AS Casos
FROM estado_salud
UNION ALL
SELECT 'Otras' AS Padecimiento, COUNT(CASE WHEN otra_com = 1 THEN 1 END) AS Casos
FROM estado_salud
ORDER BY Casos;
