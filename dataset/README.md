# Descripción del modelo de datos necesario:
Nuestra base de datos está compuesta por las siguientes tablas:

**1.	Pacientes**
-	_id_paciente_: este atributo es la primary key (valor de tipo integer). Servirá para identificar de manera única a los pacientes.
-	**_nombre_**: este atributo hace referencia al nombre del paciente (valor de tipo varchar). Nos será útil a la hora de realizar las consultas para saber información pertinente de un paciente.
-	_apellidos_: este atributo almacena los apellidos del paciente (valor de tipo varchar). Cumple la misma función que ‘nombre’.
-	_edad_: este atributo almacena la edad del paciente en años (valor de tipo integer). Factor importante para el diagnóstico del cáncer de mama CDI a la hora de llevar a cabo decisiones clínicas.
-	_Género_: este atributo almacena el género del paciente (valor de tipo varchar). Ciertos tratamientos pueden ser más efectivos o tener diferentes efectos secundarios según el género del paciente.

**2.	Muestras**
-	_codigo_: este atributo es la primary key (valor de tipo integer). Almacena el código asignado a la muestra. Servirá para identificar de manera única cada muestra. 
-	(nombre: almacena el nombre asignado a la muestra (valor de tipo varchar). Útil para identificar y distinguir entre diferentes muestras.)
-	_descripción_: proporciona una descripción detallada de la muestra (valor de tipo varchar). Puede incluir información como el tipo de tejido, la ubicación de la recolección o cualquier otro detalle relevante de la muestra. (valor de tipo varchar)
-	_fecha_recoleccion_: Almacena la fecha en la que se recolectó la muestra (valor de tipo date). Este atributo es importante para registrar el momento en que se tomó la muestra. Relevante para registrar la vida útil de la muestra.
-	_condiciones_: describe las condiciones bajo las que se recolectó la muestra , como el estado de salud del paciente, el tratamiento recibido, la etapa de la enfermedad, etc... (valor de tipo varchar).
-	_genes_presentes_: almacena los símbolos de los genes que están presente dentro de una muestra (valor de tipo text). Útil para guiar en decisiones de tratamiento.
-	_Pacientes_id_paciente_: este atributo es la foreign key heredada de los Pacientes. Almacena el id del paciente sobre el que se recolectó la muestra.

**3.	Genes (relacionados con el cáncer de mama CDI)**
-	_id_gen_: este atributo es la primary key. Servirá para identificar de manera única cada gen.
-	_simbolo_: Almacena el símbolo o nombre del gen (valor de tipo varchar). Útil para identificar y referirse a un gen específico de manera abreviada.
-	_descripcion_: Proporciona una descripción del gen (valor de tipo varchar). Puede incluir información sobre su función biológica, su implicación en enfermedades o cualquier otro detalle relevante del gen. 
-	_cromosoma_: Indica el cromosoma en el que se encuentra ubicado el gen (valor de tipo varchar). Este atributo es importante para la localización y el análisis de la ubicación física del gen dentro del genoma humano, lo que puede proporcionar información sobre su estructura y regulación.
-	_start_position_ y _end_position_: Estos atributos especifican las posiciones de inicio y fin del gen en el cromosoma (valor de tipo varchar). Proporcionan información sobre la ubicación precisa del gen dentro del genoma, lo que es útil para la identificación de variantes genéticas asociadas con el cáncer de mama CDI.

## **Relaciones entre las tablas.**
-	_Pacientes_ y _Muestras_: relación de 1 a N, dado que las muestras solo pueden tener un paciente asociado, pero se pueden sacar varias muestras del mismo.
-	_Muestras_ y _Genes_: relación de M a N, dado que un gen puede estar presente en varias muestras y varios genes en una muestra.
La relación de M a N, entre Muestras y Genes, da lugar a la tabla:


**4.	ExpresionGenica:**
-	_Genes_id_gen_ y _Muestras_id_muestras_: estos atributos son las foreign key heredadas de Muestras y Genes, además de ser una primary key compuesta de la tabla.
-	_Nivel_expresion_:  se refiere a la cantidad relativa de ARN mensajero producido a partir de un gen en particular en una muestra (valor de tipo varchar).
