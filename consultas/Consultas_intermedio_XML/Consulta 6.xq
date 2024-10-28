(:  Consulta 6: Obtener para cada farmacia el número total de guardias :)
for $farmacia in //equipamiento
return 
  <farmacia>
    <nombre>{ $farmacia/title/text() }</nombre>
    <totalGuardias>{ count($farmacia/guardia/fecha[text() ne '']) }</totalGuardias>
  </farmacia>


