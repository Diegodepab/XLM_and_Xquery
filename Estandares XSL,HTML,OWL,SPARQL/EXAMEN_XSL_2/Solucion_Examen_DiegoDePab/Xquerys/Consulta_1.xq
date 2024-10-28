(: Consulta 1. Tipos de numero de zonas para el organo pulmon y la media para cada una de ellas :)

let $pulmon := /biologia/organismo/organo[@nombre = "Pulmon"]
let $tipos := distinct-values($pulmon/numeroDeZonas/@tipo)
for $tipo in $tipos
let $media := avg($pulmon[./numeroDeZonas/@tipo = $tipo]/numeroDeZonas)
return
  <resultados>
    <tipo>{ $tipo }</tipo>
    <media>{ $media }</media>
  </resultados>
