(: Consulta 1. Todas las partes y todos sus subelementos que sean cuantificables :)
for $parte in distinct-values(/botanica/planta/parte/@nombre)
let $parteNombre := distinct-values(//planta/parte[@nombre = $parte]/numeroDeSubelementos[text() ne '']/@tipo)
return 
<parte nombre="{$parte}">
    {
      for $subelemento in $parteNombre
      return 
        <subelemento>{$subelemento}</subelemento>
    }
  </parte>