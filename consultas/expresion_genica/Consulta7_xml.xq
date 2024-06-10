let $muestra_id := 101
let $nivel_expresion_minimo := 1.0
for $gen_of_interest in //GenesInteres
where $gen_of_interest/Genes_id_gen = //ExpresionGenica[Genes_id_gen = $gen_of_interest/Genes_id_gen and Muestras_id_muestras = $muestra_id]/Genes_id_gen
      and //ExpresionGenica[Genes_id_gen = $gen_of_interest/Genes_id_gen and Muestras_id_muestras = $muestra_id]/nivel_expresion > $nivel_expresion_minimo
return <Resultado>
            <Genes_id_gen>{$gen_of_interest/Genes_id_gen}</Genes_id_gen>
            <Descripcion>{$gen_of_interest/description}</Descripcion>
            <Cromosoma>{$gen_of_interest/cromosoma}</Cromosoma>
       </Resultado>
