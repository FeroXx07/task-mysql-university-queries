# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 4 correctas de 10 queries

## ❌ Query 1: Incorrecto
```diff
--- 
+++ 
@@ -1,13 +1,25 @@
 apellido1 | apellido2 | nombre
 Domínguez | Guerrero | Antonio
+Fahey | Considine | Antonio
 Gea | Ruiz | Sonia
 Gutiérrez | López | Juan
+Hamill | Kozey | Manolo
 Heller | Pagac | Pedro
 Herman | Pacocha | Daniel
 Hernández | Martínez | Irene
 Herzog | Tremblay | Ramón
+Kohler | Schoen | Alejandro
 Koss | Bayer | José
 Lakin | Yundt | Inma
+Lemke | Rutherford | Cristina
+Monahan | Murray | Micaela
+Ramirez | Gea | Zoe
+Ruecker | Upton | Guillermo
 Saez | Vega | Juan
 Sánchez | Pérez | Salvador
+Schmidt | Fisher | David
+Schowalter | Muller | Francesca
+Spencer | Lakin | Esther
+Stiedemann | Morissette | Alfredo
+Streich | Hirthe | Carmen
 Strosin | Turcotte | Ismael
```

⏱ Tiempo: 0.45 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 2: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,8 @@
-nombre | apellido1 | apellido2
-Pedro | Heller | Pagac
-Ismael | Strosin | Turcotte
+apellido1 | apellido2 | nombre
+Heller | Pagac | Pedro
+Strosin | Turcotte | Ismael
+Spencer | Lakin | Esther
+Streich | Hirthe | Carmen
+Fahey | Considine | Antonio
+Ruecker | Upton | Guillermo
+Schowalter | Muller | Francesca
```

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.30 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 4: Incorrecto
```diff
--- 
+++ 
@@ -1,3 +1,3 @@
-nombre | apellido1 | apellido2 | nif
-Antonio | Fahey | Considine | 10485008K
-Guillermo | Ruecker | Upton | 85869555K
+id | nombre | apellido1 | apellido2 | fecha_nacimiento
+7.00 | Ismael | Strosin | Turcotte | 1999-05-24
+22.00 | Antonio | Domínguez | Guerrero | 1999-02-11
```

⏱ Tiempo: 0.28 ms
🔍 No se usó ningún índice en esta consulta.

---

## ❌ Query 5: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,14 @@
-id | nombre | cuatrimestre | curso | id_grado
+id | nombre | cuatrimestre | curso | id
+52.00 | Biologia celular | 1.00 | 1.00 | 7.00
+53.00 | Física | 1.00 | 1.00 | 7.00
+54.00 | Matemáticas I | 1.00 | 1.00 | 7.00
+55.00 | Química general | 1.00 | 1.00 | 7.00
+56.00 | Química orgánica | 1.00 | 1.00 | 7.00
+62.00 | Botánica agrícola | 1.00 | 2.00 | 7.00
+63.00 | Fisiología vegetal | 1.00 | 2.00 | 7.00
+64.00 | Genética molecular | 1.00 | 2.00 | 7.00
+65.00 | Ingeniería bioquímica | 1.00 | 2.00 | 7.00
+66.00 | Termodinámica y cinética química aplicada | 1.00 | 2.00 | 7.00
 72.00 | Bases moleculares del desarrollo vegetal | 1.00 | 3.00 | 7.00
 73.00 | Fisiología animal | 1.00 | 3.00 | 7.00
 74.00 | Metabolismo y biosíntesis de biomoléculas | 1.00 | 3.00 | 7.00
```

⏱ Tiempo: 0.39 ms
✅ Se usó índice(s) en la consulta: id_grado, PRIMARY

---

## ❌ Query 6: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-apellido1 | apellido2 | nombre | departamento
+apellido1 | apellido2 | nombre | nombre
 Fahey | Considine | Antonio | Economía y Empresa
 Hamill | Kozey | Manolo | Informática
 Kohler | Schoen | Alejandro | Matemáticas
```

⏱ Tiempo: 0.42 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_departamento, PRIMARY

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.57 ms
✅ Se usó índice(s) en la consulta: PRIMARY,nif, PRIMARY,id_asignatura,id_curso_escolar, PRIMARY

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.40 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_departamento, id_profesor,id_grado, PRIMARY

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.36 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_curso_escolar, PRIMARY

---

## ❌ Query 10: Error
- **Descripción**: 'NoneType' object is not iterable

