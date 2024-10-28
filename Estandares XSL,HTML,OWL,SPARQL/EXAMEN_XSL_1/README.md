# Proyecto de Validación y Transformación de XML

Este proyecto se basa en la manipulación y validación de un archivo XML denominado `simulacro.xml`. A continuación se detallan las tareas realizadas y los entregables asociados.

## Objetivos

1. **Elaborar el archivo XMLSchema correspondiente y validarlo.**
2. **Resolver consultas en XQuery.**
3. **Generar un documento HTML a partir del archivo XML.**

## Tareas Realizadas

### 1. Validación del archivo XML

- Se ha creado el archivo XML Schema (`simulacro.xsd`) correspondiente al archivo XML.
- La validación se ha realizado utilizando el script `validator.py`.

### 2. Consultas en XQuery

Se han realizado las siguientes consultas utilizando la herramienta BaseX, asegurando que los resultados coincidan con las imágenes proporcionadas:

- **Consulta 1:** Todas las partes y todos sus subelementos que sean cuantificables.
  
  ```xquery
  (: Aquí iría la consulta XQuery para obtener las partes cuantificables :)
  ```

- **Consulta 2:** Altura promedio media, máxima y mínima.
  
  ```xquery
  (: Aquí iría la consulta XQuery para calcular la altura promedio, máxima y mínima :)
  ```

### 3. Transformación a HTML

- Se ha elaborado un archivo XSLT (`simulacro.xsl`) para la generación de un documento HTML con el mismo contenido que el expuesto en el documento `simulacro.pdf`.
- La transformación se ha realizado utilizando el script `apply_template.py`.

## Entregables

- `simulacro.xsd`: Archivo XML Schema que valida el contenido de `simulacro.xml`.
- `simulacro.xq`: Archivo que contiene las consultas XQuery realizadas.
- `simulacro.xsl`: Archivo XSLT para la transformación del XML a HTML.
- `simulacro.html`: Documento HTML generado a partir del archivo XML.

## Requisitos

- Python (para ejecutar `validator.py` y `apply_template.py`).
- BaseX (para ejecutar las consultas XQuery).
- Un entorno compatible para procesar archivos XML y XSLT (visual studio o notepad++).

## Instrucciones de Ejecución

1. **Validación:**
   Crear un xsd (esquema) que pase la validacion de validator.py

2. **Ejecución de consultas XQuery:**
   - Abrir BaseX y cargar el archivo XML.
   - Crear las consultas XQuery 

3. **Transformación a HTML:**
   usar el apply_template.py y confirmar que sea parecido al pdf de ejemplo



## Contribuciones

Si deseas contribuir a este proyecto, no dudes en enviar un pull request o abrir un issue para añadir más ejercicios.

