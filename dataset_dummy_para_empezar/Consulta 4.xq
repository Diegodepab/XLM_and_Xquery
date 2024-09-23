(: Consulta 4: Seleccionar todas las secuencias activas :)
for $nombre in //secuenciaBio[activo = 'true']/nombre
return $nombre/text();