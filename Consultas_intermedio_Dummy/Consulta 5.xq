(: Consulta 5: Listar las farmacias tienen guardia el 5 de agosto (2024-08-05) :)
for $farmacia in //equipamiento
where $farmacia/guardia/fecha = xs:date("2024-08-05")
return $farmacia/title/text()

