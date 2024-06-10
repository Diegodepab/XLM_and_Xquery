let $paciente_id := 101
let $gen_id := 1
for $muestra in //Muestras[Pacientes_id_paciente = $paciente_id]
let $expresion := //ExpresionGenica[Genes_id_gen = $gen_id and Muestras_id_muestras = $muestra/id_muestras]
return <Tupla>
            <ID_Muestra>{data($muestra/id_muestras)}</ID_Muestra>
            <Descripcion>{data($muestra/descripcion)}</Descripcion>
            <Fecha_Recoleccion>{data($muestra/fecha_recoleccion)}</Fecha_Recoleccion>
            <Nivel_Expresion_Gen_1>{data($expresion/nivel_expresion)}</Nivel_Expresion_Gen_1>
       </Tupla>
