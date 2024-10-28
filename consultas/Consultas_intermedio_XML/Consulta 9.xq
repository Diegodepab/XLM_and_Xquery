(:  Consulta 9: Calcular el número de farmacias que tienen el servicio de "Herboristería"  :)
let $farmacia := count(//equipamiento/servicios[servicio="Herboristería"])
return $farmacia