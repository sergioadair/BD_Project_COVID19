SELECT fecha_ingreso, COUNT(*) as Casos
FROM fecha
GROUP BY fecha_ingreso
ORDER BY fecha_ingreso;