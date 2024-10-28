(:  Consulta 7: Obtener el número de guardias del 1-15 por farmacia, devolver un XML con el nombre de la farmacia y el número de guardias :)
  for $farmacia in //equipamiento
  let $guardias := count($farmacia/guardia/fecha[@periodo='1-15'])
  return 
    <farmacia>
      <nombre>{ $farmacia/title/text() }</nombre>
      <guardias1_15>{ $guardias }</guardias1_15>
    </farmacia>

