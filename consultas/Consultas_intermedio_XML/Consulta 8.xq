(: Consulta 8: Calcular la proporción de guardias del 1-15 con respecto al total de guardias por farmacia :)
  for $farmacia in //equipamiento
  let $guardias := count($farmacia/guardia/fecha[@periodo='1-15'])
  let $total := count($farmacia/guardia/fecha)
  where $total > 0
  let $proporcion := $guardias div $total
  return 
    <farmacia>
      <nombre>{ $farmacia/title/text() }</nombre>
      <total>{ $total }</total>
      <guardias>{ $guardias }</guardias>
      <guardias1_15>{ $proporcion }</guardias1_15>
    </farmacia>

