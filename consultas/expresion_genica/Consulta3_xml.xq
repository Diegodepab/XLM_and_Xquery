let $fecha_buscar := '06/02/2024'
for $muestra in //Muestras[fecha_recoleccion = $fecha_buscar]
let $paciente_id := $muestra/Pacientes_id_paciente
let $paciente := //Pacientes[id_paciente = $paciente_id]
return <Muestra>
            <ID_Muestra>{data($muestra/id_muestras)}</ID_Muestra>
            <Nombre_Paciente>{data($paciente/nombre)}</Nombre_Paciente>
            <Apellidos_Paciente>{data($paciente/apellidos)}</Apellidos_Paciente>
            <Descripcion_Muestra>{data($muestra/descripcion)}</Descripcion_Muestra>
            <Fecha_Recoleccion>{data($muestra/fecha_recoleccion)}</Fecha_Recoleccion>
       </Muestra>
