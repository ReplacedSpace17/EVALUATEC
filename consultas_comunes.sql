-- todos los docentes de posgrado
SELECT D.*
FROM Docente D
JOIN Pertenecen P ON D.ID = P.ID_DOCENTE
WHERE P.ID_DEPARTAMENTO = 6;