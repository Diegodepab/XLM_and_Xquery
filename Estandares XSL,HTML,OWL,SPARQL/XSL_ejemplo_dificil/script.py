import lxml.etree as ET

dom = ET.parse("P12345.xml")
xslt = ET.parse("P12345.xsl")
transform = ET.XSLT(xslt)
newdom = transform(dom)
print(newdom)

f = open("examen.html", "w",encoding='utf-8')
f.write(str(newdom))
f.close()