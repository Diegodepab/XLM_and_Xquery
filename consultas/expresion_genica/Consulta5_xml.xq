let $nivel_expresion_minimo := 1
for $gen_id in distinct-values(//ExpresionGenica/Genes_id_gen)
let $gen_symbol := //Genes[id_gen = $gen_id]/gen_symbol
let $expresiones_gen := //ExpresionGenica[Genes_id_gen = $gen_id]/nivel_expresion
let $promedio_expresion := avg($expresiones_gen)
where $promedio_expresion > $nivel_expresion_minimo
return <Gen>
            <Gen_Symbol>{$gen_symbol}</Gen_Symbol>
            <Promedio_Expresion>{$promedio_expresion}</Promedio_Expresion>
       </Gen>
