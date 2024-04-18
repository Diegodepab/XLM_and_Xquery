xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<results> {
	let $doc := doc("C:\Users\Mario\Downloads\proteinas.xml")/uniprot
	for $entry in $doc/entry/reference/citation
	where $entry/authorList/person[@name="Tan W.G."]
	return <title>{$entry/title}</title>
} </results>