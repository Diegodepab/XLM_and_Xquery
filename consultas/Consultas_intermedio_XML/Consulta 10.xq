(:  Consulta 10: Obtener el nombre y la dirección de las farmacias que tienen el servicio "Herboristería"
  :)
for $farmacia in //equipamiento
where $farmacia/servicios[servicio="Herboristería"]
return 
    <farmacia>
      <nombre>{ $farmacia/title }</nombre>
      <direccion>{ $farmacia/calle }</direccion>
    </farmacia>