let $maxEdad := max(
  for $pac in doc("expresion_genica_pacientes_cancer")/root/Pacientes
  return string($pac/edad)
)
for $pac in doc("expresion_genica_pacientes_cancer")/root/Pacientes
where $pac/edad=$maxEdad
return (string($pac/nombre),string($pac/apellidos),string($pac/edad))
