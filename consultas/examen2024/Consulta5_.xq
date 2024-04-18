for $desorden in doc("es_product4.xml")/JDBOR/HPODisorderSetStatusList/HPODisorderSetStatus/Disorder
where some $assoc in $desorden/HPODisorderAssociationList/HPODisorderAssociation/HPO/HPOTerm
satisfies contains($assoc, "eye") and contains($assoc/../../HPOFrequency/Name, "Muy frecuente")
let $nombre := $desorden/Name/text()
let $feno := count($desorden/HPODisorderAssociationList/HPODisorderAssociation[HPO/HPOTerm[contains(., "eye")] and contains(HPOFrequency/Name[@lang="es"], "Muy frecuente")])
return concat($nombre, " - Fenotipos (eye): ", $feno)