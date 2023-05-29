SELECT entidad_res, COUNT(*) as Casos
FROM lugar
GROUP BY entidad_res
ORDER BY Casos;