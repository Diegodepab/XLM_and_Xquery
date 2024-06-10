let $gen_id := 87
for $expresion in //ExpresionGenica
where $expresion/Genes_id_gen = $gen_id
let $muestra_id := $expresion/Muestras_id_muestras/text()
for $muestra in //Muestras[id_muestras = $muestra_id]
return $muestra