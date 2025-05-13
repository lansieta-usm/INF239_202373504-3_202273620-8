-- 1. Obtener los nombres y resúmenes de todos los artículos que comiencen con la letra 'O'
SELECT titulo, resumen 
FROM Articulo 
WHERE titulo LIKE 'O%';

-- 2. Obtener la cantidad de artículos enviados por cada autor
SELECT AA.rutAutor, A.nombre, COUNT(AA.idArticulo) AS cantidad_articulos
FROM Autor_Articulo AA
JOIN Autor A ON AA.rutAutor = A.rut
GROUP BY AA.rutAutor, A.nombre;

-- 3. Obtener los títulos de los artículos que tienen más de un tópico asignado
SELECT A.titulo 
FROM Articulo A
JOIN Articulo_Topico AT ON A.id = AT.idArticulo
GROUP BY A.id, A.titulo
HAVING COUNT(AT.idTopico) > 1;

-- 4. Mostrar el título del artículo y toda la información del autor de contacto para artículos con "Software" en el título
SELECT A.titulo, AU.rut, AU.nombre, AU.email
FROM Articulo A
JOIN Autor_Articulo AA ON A.id = AA.idArticulo
JOIN Autor AU ON AA.rutAutor = AU.rut
WHERE A.titulo LIKE '%Software%'
AND AU.rut = (
    SELECT MIN(AA2.rutAutor)
    FROM Autor_Articulo AA2
    WHERE AA2.idArticulo = A.id
);

-- 5. Obtener el nombre y la cantidad de artículos asignados a cada revisor
SELECT R.nombre, COUNT(AR.idArticulo) AS cantidad_articulos
FROM Articulo_Revisor AR
JOIN Revisor R ON AR.rutRevisor = R.rut
GROUP BY R.nombre;

-- 6. Obtener los nombres de los revisores que tienen asignados más de 3 artículos
SELECT R.nombre
FROM Articulo_Revisor AR
JOIN Revisor R ON AR.rutRevisor = R.rut
GROUP BY R.nombre
HAVING COUNT(AR.idArticulo) > 30;

-- 7. Obtener los títulos de los artículos y el nombre de los revisores asignados para artículos con "Gestión" en el título
SELECT A.titulo, R.nombre
FROM Articulo A
JOIN Articulo_Revisor AR ON A.id = AR.idArticulo
JOIN Revisor R ON AR.rutRevisor = R.rut
WHERE A.titulo LIKE '%Gestión%';

-- 8. Obtener la cantidad de revisores que son especialistas en cada tópico
SELECT T.nombre, COUNT(RE.rutRevisor) AS cantidad_revisores
FROM Revisor_Especialidad RE
JOIN Especialidad E ON RE.idEspecialidad = E.id
JOIN Topico T ON E.nombre = T.nombre
GROUP BY T.nombre;

-- 9. Obtener el Top 10 artículos más antiguos ingresados en la BD
SELECT titulo, fechaEnvio
FROM Articulo
ORDER BY fechaEnvio ASC
LIMIT 10;

-- 10. Obtener los nombres de los artículos cuyos revisores participan en la revisión de 3 o más artículos
SELECT A.titulo
FROM Articulo A
JOIN Articulo_Revisor AR ON A.id = AR.idArticulo
WHERE AR.rutRevisor IN (
    SELECT rutRevisor
    FROM Articulo_Revisor
    GROUP BY rutRevisor
    HAVING COUNT(idArticulo) >= 30
);
