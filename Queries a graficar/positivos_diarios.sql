SELECT f.fecha_ingreso, COALESCE(COUNT(c.clasificacion_final), 0) AS Positivos
FROM fecha f
LEFT JOIN covid c ON f.id_registro2 = c.id_registro5 AND c.clasificacion_final = 3
GROUP BY f.fecha_ingreso
ORDER BY f.fecha_ingreso;
