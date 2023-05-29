SELECT tipo_paciente, COUNT(*) as Casos
FROM paciente
GROUP BY tipo_paciente
ORDER BY tipo_paciente;