(: Consulta 8: Seleccionar las secuencias descubiertas después del año 2010 :)
for $nombre in //secuenciaBio[xs:date(fechaDescubrimiento) > xs:date("2010-01-01")]
return $nombre/nombre