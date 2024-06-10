for $paciente in //Pacientes
let $muestra_mas_reciente := //Muestras[Pacientes_id_paciente = $paciente/id_paciente]
                               [substring(fecha_recoleccion, 1, 7) = max(for $m in //Muestras[Pacientes_id_paciente = $paciente/id_paciente]
                                                                                return substring($m/fecha_recoleccion, 1, 7))][1]
let $nivel_expresion := //ExpresionGenica[Genes_id_gen = 1 and Muestras_id_muestras = $muestra_mas_reciente/id_muestras]/nivel_expresion
return <Resultado>
            <ID_Paciente>{$paciente/id_paciente}</ID_Paciente>
            <Nombre>{$paciente/nombre}</Nombre>
            <Apellidos>{$paciente/apellidos}</Apellidos>
            <ID_Muestra>{$muestra_mas_reciente/id_muestras}</ID_Muestra>
            <Descripcion_Muestra>{$muestra_mas_reciente/descripcion}</Descripcion_Muestra>
            <Fecha_Recoleccion>{$muestra_mas_reciente/fecha_recoleccion}</Fecha_Recoleccion>
            <Nivel_Expresion_Gen_1>{$nivel_expresion}</Nivel_Expresion_Gen_1>
       </Resultado>
