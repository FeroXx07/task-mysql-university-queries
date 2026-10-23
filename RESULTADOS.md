# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 7 correctas de 10 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.34 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.21 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.19 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.22 ms
✅ Se usó índice(s) en la consulta: PRIMARY

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

⏱ Tiempo: 0.24 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_grado

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

⏱ Tiempo: 0.25 ms
✅ Se usó índice(s) en la consulta: PRIMARY, PRIMARY,id_departamento

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: PRIMARY, PRIMARY,nif, PRIMARY,id_asignatura,id_curso_escolar

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.24 ms
✅ Se usó índice(s) en la consulta: PRIMARY, PRIMARY,id_departamento, id_profesor,id_grado

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.22 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_curso_escolar, PRIMARY

---

## ❌ Query 10: Error
- **Descripción**: 'NoneType' object is not iterable

