let $gen_id := 1
let $nivel_expresion_minimo := 1
for $expresion in //ExpresionGenica[Genes_id_gen = $gen_id and nivel_expresion > $nivel_expresion_minimo]
let $muestra_id := $expresion/Muestras_id_muestras
let $paciente_id := //Muestras[id_muestras = $muestra_id]/Pacientes_id_paciente
let $paciente := //Pacientes[id_paciente = $paciente_id]
return $paciente
