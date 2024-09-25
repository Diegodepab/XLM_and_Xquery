(:  Consulta 11: Obtener la cantidad total de farmacias que tienen cada servicio (Farmacia, Parafarmacia, Herboritería, etc)
  :)
for $servicio in 
(//equipamiento/servicios/servicio)
  let $cnt := count(//equipamiento[servicios/servicio = $servicio])
  return 
    <servicio>
      <nombre>{ $servicio }</nombre>
      <total>{ $cnt }</total>
    </servicio>