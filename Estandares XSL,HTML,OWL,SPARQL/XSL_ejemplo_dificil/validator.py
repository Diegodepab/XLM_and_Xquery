from lxml import etree
3
xml_file = "p12345.xml"
xsd_file = "p12345.xsd"

# Parsear el archivo XML y el esquema
xml_doc = etree.parse(xml_file)
schema = etree.XMLSchema(file=xsd_file)

# Validar el archivo XML con el esquema
if schema.validate(xml_doc):
    print("El archivo XML es válido según el esquema.")
else:
    print("El archivo XML no cumple con el esquema.")
    print(schema.error_log)
