(: Consulta 2: Seleccionar todas las secuencias de tipo ADN :)
for $nombre in /secuenciasBio/secuenciaBio
where $nombre/tipo="ADN"
return $nombre/secuencia/text()