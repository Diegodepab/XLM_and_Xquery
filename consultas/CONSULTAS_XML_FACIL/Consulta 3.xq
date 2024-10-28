(: Consulta 3: Seleccionar la fecha de descubrimiento de la secuencia con nombre 'Secuencia3' :)
for $fecha in /secuenciasBio/secuenciaBio
where $fecha/nombre="Secuencia3"
return $fecha/fechaDescubrimiento/text()