SELECT fecha_ingreso, 
       SUM(Casos) OVER (ORDER BY fecha_ingreso) AS Casos_acumulados
FROM (
    SELECT fecha_ingreso, COUNT(*) as Casos
    FROM fecha
    GROUP BY fecha_ingreso
) AS subquery
ORDER BY fecha_ingreso;
