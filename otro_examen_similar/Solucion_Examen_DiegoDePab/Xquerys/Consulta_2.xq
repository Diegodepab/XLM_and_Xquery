(: Consulta 2. Número de zonas media, maxima y minima :)

let $zonas := /biologia/organismo/organo/numeroDeZonas[text() != '']
let $media := round(avg($zonas) * 100) div 100
let $maxi := max($zonas)
let $mini := min($zonas)
return
  <resultados>
    <media>{ $media }</media>
    <maximo>{ $maxi }</maximo>
    <minimo>{ $mini }</minimo>
  </resultados>
