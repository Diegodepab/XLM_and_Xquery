let $contador := count(
  for $entradas in doc("es_product4")/JDBOR/HPODisorderSetStatusList/HPODisorderSetStatus/ValidationDate
  where contains($entradas, "2023")
  return $entradas
)
return $contador
