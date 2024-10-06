(: Consulta 2. Altura promedio media, maxima y minima :)
let $altura := /botanica/planta/alturaPromedio
return 
  <resultados>
      <altura_media>{ avg($altura)}</altura_media>
      <maximo>{ max($altura) }</maximo>
      <minimo>{ min($altura) }</minimo>
    </resultados>