xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<results> {
	let $doc := doc("C:\Users\Mario\Downloads\proteinas.xml")/uniprot
	for $entry in $doc/entry
	where $entry/organism/name[@type="common"] = "FV-3"
	return <organismHost> {$entry/organismHost/name[@type="scientific"]} </organismHost>
} </results>