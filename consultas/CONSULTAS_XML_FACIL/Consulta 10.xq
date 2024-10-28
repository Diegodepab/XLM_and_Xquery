(: Consulta 10: Calcular la temperatura óptima promedio de las secuencias activas y no activas por separado :)
let $temperaturasActivas := //secuenciaBio[activo = 'true']/temperaturaOptima/number()
let $temperaturasNoActivas := //secuenciaBio[activo = 'false']/temperaturaOptima/number()
return
  <temperaturasPromedio>
    <activas>{avg($temperaturasActivas)}</activas>
    <noActivas>{avg($temperaturasNoActivas)}</noActivas>
  </temperaturasPromedio>
