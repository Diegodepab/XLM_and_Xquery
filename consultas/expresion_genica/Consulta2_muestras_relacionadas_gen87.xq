let $id := (
  for $iden in doc("expresion_genica_pacientes_cancer")/root/mydb.ExpresionGenica
  where $iden/Genes_id_gen="87"
  return $iden/Muestras_id_muestras
)
for $muestra in doc("expresion_genica_pacientes_cancer")/root/mydb.Muestras
for $id_value in $id
where $muestra/id_muestras = $id_value
return (string($muestra/id_muestras),string($muestra/descripcion))
