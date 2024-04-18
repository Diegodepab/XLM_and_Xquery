for $desordenes in doc("es_product4")/JDBOR/HPODisorderSetStatusList/HPODisorderSetStatus//Disorder[.//HPO/HPOTerm[contains(., 'eye')]]/Name/text()
 return $desordenes
 