# XLM_and_Xquery
Repositorio para practicar consultas Xquery, se usaran varias dataset (bases de datos) donde trabajaremos distintas consultas en cada una.

<details>
  <summary>Tabla de Contenido</summary>
    <ol>
      <li><a href="#intro">Introducción</a></li>
      <li><a href="#desarrollo">Clausulas FLWOR/a></li>
      <li><a href="#otros">Autor, colaboradores y otros detalles</a></li>
    </ol>
</details>

<p align="center">
  <img src="https://github.com/Diegodepab/isa2024-healthcalc/assets/91531665/9f0d1f7d-79f2-45e6-a5ef-e4429ed48551" width="200" title="xml">
</p>

<a name="intro"></a>
## Introducción:
XML (acrónimo de Extensible Markup Language) es un lenguaje de marcado que define un conjunto de reglas para la codificación de documentos. Este lenguaje se puede usar como base de datos organizando la información en tablas, para hacer consultas usaremos XQuery que es un lenguaje de consulta diseñado específicamente para trabajar con datos XML. Su objetivo principal es recuperar y manipular información almacenada en documentos XML.


<a name="desarrollo"></a>  
## Clausulas FLWOR

**For, Let, Where, Order by, Return (FLWOR)**
````
For: This clause selects a sequence of nodes. It’s similar to the FROM clause in SQL. example: for $x in doc("books.xml")/

Let: The let clause binds a sequence to a variable. It’s like creating a temporary variable.  example: let $price := $x/price

Where: The where clause filters the nodes based on a condition. where $price > 30

Order by: The order by clause sorts the nodes.  order by $x/title

Return: The return clause specifies what to return. return $x/title

````


<a name="otros"> </a>
# Otros:
## Mi persona:

-Diego De Pablo ([User: Diegodepab](https://github.com/Diegodepab))

## Colaboradores:

-Mario Pascual ([user:MarioPasc](https://github.com/MarioPasc))
