# Soluciones de Exámenes

Este repositorio contiene soluciones a diferentes exámenes de XML, XSD, XQuery y XSLT, diseñadas para alumnos en su comprensión de estas tecnologías.

## Examen XML

### Enunciado

Dado el archivo `examen.xml`, se pide resolver las siguientes tareas:

1. **(3p) - Elaborar el XMLSchema y validarlo:**
   - Crear el archivo `examen.xsd` correspondiente.
   - Validar el archivo usando el script `validator.py`.

2. **(2p) - Consultas XQuery:**
   - **Consulta 1:** Obtener los tipos de número de zonas para el órgano `pulmon` y la media para cada una de ellas.
   - **Consulta 2:** Calcular el número de zonas media, máxima y mínima.
   - Resolver las consultas usando la herramienta BaseX y verificar que se obtienen los mismos resultados que los proporcionados en las imágenes del examen.
   
3. **(5p) - Transformación XSLT:**
   - Crear el archivo `examen.xsl` para generar un documento HTML que tenga el mismo contenido que el documento `examen.pdf`.
   - Usar el script `apply_template.py` para aplicar el archivo XSLT y generar `examen.html`.

### Entregables:
- `examen.xsd` (XMLSchema)
- `examen.xq` (Consultas XQuery)
- `examen.xsl` (Transformación XSLT)
- `examen.html` (Documento HTML generado)

