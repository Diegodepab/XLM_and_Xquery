xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<results> {
	let $doc := doc("C:\Users\Mario\Downloads\proteinas.xml")/uniprot
	for $entry in $doc/entry
	where $entry/organism/name[@type="common"] = "FV-3"
	return <protein_name> {data($entry/protein/recommendedName/fullName)} </protein_name>
} </results>