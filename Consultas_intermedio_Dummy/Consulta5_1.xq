(: Consulta 5: Listar las farmacias tienen guardia el 5 de agosto (2024-08-05) :)
for $farmacia in //equipamiento
let $fechas := $farmacia/guardia/fecha
for $fecha in $fechas
where xs:date($fecha) = xs:date("2024-08-05")
let $resultado := $farmacia/title
return $resultado/text()

