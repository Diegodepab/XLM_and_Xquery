for $gen in //Genes
let $gen_id := $gen/id_gen
let $gen_symbol := $gen/gen_symbol
let $muestras_con_nivel_mayor_1_2 := count(//ExpresionGenica[Genes_id_gen = $gen_id and nivel_expresion > 1.2]/Muestras_id_muestras)
return <Gen>
            <ID_Gen>{$gen_id}</ID_Gen>
            <Gen_Symbol>{$gen_symbol}</Gen_Symbol>
            <Numero_Muestras_Nivel_Mayor_1_2>{$muestras_con_nivel_mayor_1_2}</Numero_Muestras_Nivel_Mayor_1_2>
       </Gen>
