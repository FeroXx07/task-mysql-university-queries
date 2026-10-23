-- 1. Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.
SELECT DISTINCT
	pe.apellido1,
    pe.apellido2,
    pe.nombre
FROM persona as pe
LEFT JOIN profesor as pr
    ON pe.id = pr.id_profesor
WHERE pr.id_profesor IS NULL
ORDER BY pe.apellido1 ASC, pe.apellido2 ASC, pe.nombre ASC;

-- 2. Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades. (nombre, apellido1, apellido2)
SELECT 
	pe.apellido1,
    pe.apellido2,
    pe.nombre
FROM persona pe
WHERE NOT EXISTS ( # row does not exist in subquery
    SELECT 1 # since we dont need any data, 1 placholder
    FROM profesor pr
    WHERE pr.id_profesor = pe.id
) 
AND pe.telefono IS NULL;

-- 3. Retorna el llistat dels alumnes que van néixer en 1999. (id, nombre, apellido1, apellido2, fecha_nacimiento)
SELECT
	pe.id,
	pe.nombre,
	pe.apellido1,
    pe.apellido2,
    pe.fecha_nacimiento
FROM persona as pe
WHERE YEAR(pe.fecha_nacimiento) = 1999;


-- 4. Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K. (nombre, apellido1, apellido2, nif)
SELECT
	pe.id,
	pe.nombre,
	pe.apellido1,
    pe.apellido2,
    pe.fecha_nacimiento
FROM persona as pe
WHERE YEAR(pe.fecha_nacimiento) = 1999;

-- 5. Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del grau que té l'identificador 7. (id, nombre, cuatrimestre, curso, id_grado)
SELECT
	ag.id,
    ag.nombre,
    ag.cuatrimestre,
    ag.curso,
    g.id
FROM grado as g
JOIN asignatura as ag
	ON (g.id = ag.id_grado)
WHERE g.id = 7 AND ag.cuatrimestre = 1;

-- 6. Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom. (apellido1, apellido2, nombre, departamento)
SELECT 
	pe.apellido1,
    pe.apellido2,
    pe.nombre,
    de.nombre
FROM persona as pe
INNER JOIN profesor as po ON (pe.id = po.id_profesor)
INNER JOIN departamento as de ON (de.id = po.id_departamento)
ORDER BY pe.apellido1 ASC, pe.apellido2 ASC, pe.nombre ASC, de.nombre ASC;

-- 7. Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a amb NIF 26902806M. (nombre, anyo_inicio, anyo_fin)
SELECT
	ag.nombre,
    ce.anyo_inicio,
    ce.anyo_fin
FROM asignatura as ag
JOIN alumno_se_matricula_asignatura as ama ON (ag.id = ama.id_asignatura)
JOIN curso_escolar as ce ON (ama.id_curso_escolar = ce.id)
JOIN persona as pe ON (ama.id_alumno = pe.id)
WHERE pe.nif = '26902806M';

-- 8. Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015). (nombre)
SELECT 
	DISTINCT de.nombre
FROM persona as pe
INNER JOIN profesor as po ON (pe.id = po.id_profesor)
INNER JOIN departamento as de ON (de.id = po.id_departamento)
INNER JOIN asignatura as ag ON (ag.id_profesor = po.id_profesor)
WHERE ag.id_grado = 4;

-- 9. Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019. (nombre, apellido1, apellido2)
SELECT DISTINCT 
	pe.nombre,
    pe.apellido1,
    pe.apellido2
FROM alumno_se_matricula_asignatura as ama
JOIN curso_escolar as ce ON (ama.id_curso_escolar = ce.id)
JOIN persona as pe ON (ama.id_alumno = pe.id)
WHERE ce.anyo_inicio = 2018 AND ce.anyo_fin = 2019;

-- Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.
-- 10. Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom. (departamento, apellido1, apellido2, nombre)


-- 11. Retorna un llistat amb els professors/es que no estan associats a un departament. (apellido1, apellido2, nombre)


-- 12. Retorna un llistat amb els departaments que no tenen professors/es associats. (nombre)


-- 13. Retorna un llistat amb els professors/es que no imparteixen cap assignatura. (apellido1, apellido2, nombre)


-- 14. Retorna un llistat amb les assignatures que no tenen un professor/a assignat. (id, nombre)


-- 15. Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar. (nombre)


-- 16. Retorna el nombre total d'alumnes que hi ha. (total)


-- 17. Calcula quants alumnes van néixer en 1999. (total)


-- 18. Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es. (departamento, total)


-- 19. Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d'aparèixer en el llistat. (departamento, total)


-- 20. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures. (grau, total)


-- 21. Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades. (grau, total)


-- 22. Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus. (grau, tipus, total_creditos)


-- 23. Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats. (anyo_inicio, total)


-- 24. Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures. (id, nombre, apellido1, apellido2, total)


-- 25. Retorna totes les dades de l'alumne/a més jove. (*)


-- 26. Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura. (apellido1, apellido2, nombre)

