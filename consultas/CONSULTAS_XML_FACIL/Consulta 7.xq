(: Consulta 7: Seleccionar las secuencias cuya longitud sea superior a la longitud promedio de todas las secuencias :)
let $avg_longitud := avg(/secuenciasBio/secuenciaBio/longitud/number())
for $longitud in /secuenciasBio/secuenciaBio
where $longitud/longitud > $avg_longitud
return $longitud/nombre/text()