XQuery es un lenguaje diseñado para consultar y manipular datos XML. Permite realizar búsquedas, filtrados, y transformaciones sobre documentos XML. A continuación te explico algunos de los elementos clave de XQuery:

1. for:
El bucle for itera sobre una secuencia de elementos. Se utiliza para recorrer los nodos de un documento XML y trabajar con cada uno de ellos.
```xquery
for $nombre in //secuenciaBio/nombre
return $nombre/text()
```
2. let:
let se utiliza para asignar valores a una variable. No implica una iteración, sino que permite almacenar valores o secuencias de valores para su uso posterior en la consulta.
Ejemplo:
```xquery
let $promedio := avg(//secuenciaBio/longitud)
return $promedio
```
  - Aquí, let almacena el valor del promedio de las longitudes de las secuencias en la variable $promedio.

3. where:
where es similar a un filtro. Se usa para aplicar una condición que debe cumplirse para que los resultados sean incluidos en la consulta.

Ejemplo:
```xquery
(: Solo selecciona las secuencias cuyo tipo sea 'ADN'. :)
for $secuencia in //secuenciaBio
where $secuencia/tipo = 'ADN'
return $secuencia
```

4. return:
return es la parte que devuelve el resultado de la consulta. Después de aplicar cualquier filtro o iteración, lo que se pone en return es lo que se genera como salida.
```xquery
for $nombre in //secuenciaBio/nombre
return $nombre/text()
```

Ejemplo utilizando las sentencias FLWR juntas:
```xquery
(: recorre todas las secuencias (for), filtra aquellas cuya longitud es mayor que el promedio (where), y finalmente devuelve los nombres de estas secuencias (return).:)
let $longitudPromedio := avg(//secuenciaBio/longitud)
for $secuencia in //secuenciaBio
where $secuencia/longitud > $longitudPromedio
return $secuencia/nombre
```

Otros conceptos útiles:
  - **distinct-values():** Se usa para obtener los valores únicos en una secuencia. Ideal cuando trabajas con elementos que pueden repetirse y solo quieres una copia de cada uno.
  - **count():** Devuelve el número de elementos en una secuencia.
  - **avg():** Calcula el promedio de una secuencia de números.
  - **xs:date():** se utiliza para trabajar con fechas convierte el formato para poder comparar por orden cronológico en vez de String.


Consultas de entrenamiento, descarga el dataset de ejemplo y realiza las siguientes consultas:
  1. Seleccionar todos los nombres de secuencias.
  2. Seleccionar todas las secuencias de tipo ADN.
  3. Seleccionar la fecha de descubrimiento de la secuencia con nombre 'Secuencia3'.
  4. Seleccionar todas las secuencias activas.
  5. Calcular la temperatura promedio óptima de todas las secuencias.
  6. Seleccionar todas las secuencias con longitud mayor o igual a 11.
  7. Seleccionar las secuencias cuya longitud sea superior a la longitud promedio de todas las secuencias.
  8. Seleccionar las secuencias descubiertas después del año 2010.
  9. Calcular la cantidad total de secuencias de cada tipo (ADN, ARN, Proteína).
  10. Calcular la temperatura óptima promedio de las secuencias activas y no activas por separado.
