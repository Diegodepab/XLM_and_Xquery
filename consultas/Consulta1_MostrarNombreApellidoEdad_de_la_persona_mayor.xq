for $x in doc('proteinas')/uniprot/entry/reference
where $x/citation/authorList/person/@name="Tan W.G."
return $x/citation/title