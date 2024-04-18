let $cnt := count(
for $desorden in doc("es_product4")/JDBOR/HPODisorderSetStatusList/HPODisorderSetStatus
where some $assoc in $desorden/Disorder/HPODisorderAssociationList/HPODisorderAssociation satisfies contains($assoc/HPO/HPOTerm, "eye")
return $desorden/Disorder/Name/text()
)
return $cnt