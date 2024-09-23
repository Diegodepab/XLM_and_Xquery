(: Consulta 9: Calcular la cantidad total de secuencias de cada tipo (ADN, ARN, Proteína) :)
for $tipo in distinct-values(//secuenciaBio/tipo)
return
  <tipoSecuencia>
    <nombre>{$tipo}</nombre>
    <cantidad>{count(//secuenciaBio[tipo = $tipo])}</cantidad>
  </tipoSecuencia>;