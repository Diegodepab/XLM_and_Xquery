let $cnt := count(
for $desorden in doc("es_product4")/JDBOR/HPODisorderSetStatusList/HPODisorderSetStatus/Disorder
where some $assoc in $desorden/HPODisorderAssociationList/HPODisorderAssociation/HPO/HPOTerm
satisfies contains($assoc, "eye") and contains($assoc/../../HPOFrequency/Name, "Muy frecuente")
return $desorden/Name/text()
)
return $cnt
