import lxml.etree as ET

dom = ET.parse("simulacro.xml")
xslt = ET.parse("simulacro.xsl")
transform = ET.XSLT(xslt)
newdom = transform(dom)
print(newdom)

f = open("simulacro.html", "w", encoding='utf-8')
f.write(str(newdom))
f.close()