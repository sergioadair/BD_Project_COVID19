SELECT f.fecha_ingreso, COUNT(*) AS Pruebas
FROM fecha f
JOIN covid c ON f.id_registro2 = c.id_registro5
WHERE c.toma_muestra_lab = 1 OR c.toma_muestra_antigeno = 1
GROUP BY f.fecha_ingreso
ORDER BY f.fecha_ingreso;
