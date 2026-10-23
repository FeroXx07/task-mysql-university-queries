# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 23 correctas de 26 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.28 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.16 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.14 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.16 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 5: Correcto

⏱ Tiempo: 0.17 ms
✅ Se usó índice(s) en la consulta: id_grado, PRIMARY

---

## ✅ Query 6: Correcto

⏱ Tiempo: 0.19 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_departamento, PRIMARY

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.20 ms
✅ Se usó índice(s) en la consulta: PRIMARY, PRIMARY,nif, PRIMARY,id_asignatura,id_curso_escolar

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.18 ms
✅ Se usó índice(s) en la consulta: id_profesor,id_grado, PRIMARY,id_departamento, PRIMARY

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.14 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_curso_escolar, PRIMARY

---

## ✅ Query 10: Correcto

⏱ Tiempo: 0.19 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 11: Correcto

⏱ Tiempo: 0.15 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 12: Correcto

⏱ Tiempo: 0.12 ms
✅ Se usó índice(s) en la consulta: id_departamento

---

## ❌ Query 13: Incorrecto
```diff
--- 
+++ 
@@ -1,11 +1,11 @@
-apellido1 | apellido2 | nombre
-Schmidt | Fisher | David
-Kohler | Schoen | Alejandro
-Lemke | Rutherford | Cristina
-Fahey | Considine | Antonio
-Spencer | Lakin | Esther
-Streich | Hirthe | Carmen
-Ruecker | Upton | Guillermo
-Monahan | Murray | Micaela
-Stiedemann | Morissette | Alfredo
-Schowalter | Muller | Francesca
+apellido1 | apellido2 | nombre | nombre
+Schmidt | Fisher | David | NULL
+Kohler | Schoen | Alejandro | NULL
+Lemke | Rutherford | Cristina | NULL
+Fahey | Considine | Antonio | NULL
+Spencer | Lakin | Esther | NULL
+Streich | Hirthe | Carmen | NULL
+Ruecker | Upton | Guillermo | NULL
+Monahan | Murray | Micaela | NULL
+Stiedemann | Morissette | Alfredo | NULL
+Schowalter | Muller | Francesca | NULL
```

⏱ Tiempo: 0.17 ms
✅ Se usó índice(s) en la consulta: id_profesor, PRIMARY

---

## ✅ Query 14: Correcto

⏱ Tiempo: 0.12 ms
✅ Se usó índice(s) en la consulta: id_profesor

---

## ✅ Query 15: Correcto

⏱ Tiempo: 0.15 ms
✅ Se usó índice(s) en la consulta: id_profesor, PRIMARY, id_asignatura, id_departamento

---

## ✅ Query 16: Correcto

⏱ Tiempo: 0.13 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 17: Correcto

⏱ Tiempo: 0.12 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 18: Correcto

⏱ Tiempo: 0.13 ms
✅ Se usó índice(s) en la consulta: id_departamento, PRIMARY

---

## ✅ Query 19: Correcto

⏱ Tiempo: 0.14 ms
✅ Se usó índice(s) en la consulta: id_departamento

---

## ✅ Query 20: Correcto

⏱ Tiempo: 0.14 ms
✅ Se usó índice(s) en la consulta: id_grado, PRIMARY

---

## ✅ Query 21: Correcto

⏱ Tiempo: 0.14 ms
✅ Se usó índice(s) en la consulta: id_grado, PRIMARY

---

## ❌ Query 22: Incorrecto
```diff
--- 
+++ 
@@ -1,4 +1,4 @@
-grau | tipo | total_creditos
+grau | tipus | total_creditos
 Grado en Ingeniería Informática (Plan 2015) | básica | 72.00
 Grado en Ingeniería Informática (Plan 2015) | obligatoria | 54.00
 Grado en Ingeniería Informática (Plan 2015) | optativa | 180.00
```

⏱ Tiempo: 0.15 ms
✅ Se usó índice(s) en la consulta: id_grado, PRIMARY

---

## ✅ Query 23: Correcto

⏱ Tiempo: 0.13 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_curso_escolar

---

## ❌ Query 24: Incorrecto
```diff
--- 
+++ 
@@ -2,12 +2,12 @@
 14.00 | Manolo | Hamill | Kozey | 11.00
 3.00 | Zoe | Ramirez | Gea | 10.00
 5.00 | David | Schmidt | Fisher | 0.00
-15.00 | Alejandro | Kohler | Schoen | 0.00
 8.00 | Cristina | Lemke | Rutherford | 0.00
-16.00 | Antonio | Fahey | Considine | 0.00
 10.00 | Esther | Spencer | Lakin | 0.00
 12.00 | Carmen | Streich | Hirthe | 0.00
+13.00 | Alfredo | Stiedemann | Morissette | 0.00
+15.00 | Alejandro | Kohler | Schoen | 0.00
+16.00 | Antonio | Fahey | Considine | 0.00
 17.00 | Guillermo | Ruecker | Upton | 0.00
 18.00 | Micaela | Monahan | Murray | 0.00
-13.00 | Alfredo | Stiedemann | Morissette | 0.00
 20.00 | Francesca | Schowalter | Muller | 0.00
```

⏱ Tiempo: 0.17 ms
✅ Se usó índice(s) en la consulta: id_profesor, PRIMARY,id_departamento, PRIMARY

---

## ✅ Query 25: Correcto

⏱ Tiempo: 0.15 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 26: Correcto

⏱ Tiempo: 0.14 ms
✅ Se usó índice(s) en la consulta: id_profesor, PRIMARY,id_departamento, PRIMARY

---
