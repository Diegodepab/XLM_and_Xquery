(: Consulta 4: Generar un xml con los nombres de las farmacias y su teléfonos :)
for $farmacia in //equipamiento
  return 
    <farmacia>
      <nombre>{ $farmacia/title/text() }</nombre>
      <telefono>{ $farmacia/telefonos/text() }</telefono>
    </farmacia>