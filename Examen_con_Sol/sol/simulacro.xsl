<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Definición de la hoja de estilos XSLT, versión 1.0 y el espacio de nombres XSL -->
  
  <xsl:template match="botanica">
    <!-- Plantilla que se activa cuando se encuentra el elemento 'botanica' en el XML -->
    
    <html>
      <head>
        <title>Plantas</title>
        <!-- Título de la página web que se generará -->
      </head>
      <body>
        <h1>Plantas tipo <xsl:value-of select="tipoPlanta" /> de la especie <xsl:value-of select="especie" /></h1>
        <!-- Encabezado principal que muestra el tipo de planta y la especie usando datos del XML -->
        
        <xsl:for-each select="planta">
          <!-- Itera sobre cada elemento 'planta' dentro de 'botanica' -->
          
          <h2><xsl:value-of select="nombreCientifico" /></h2>
          <!-- Muestra el nombre científico de la planta como un segundo encabezado -->
          
          <ul>
            <!-- Inicia una lista no ordenada para las características de la planta -->
            <li>Altura promedio: <xsl:value-of select="alturaPromedio" /> cm.</li>
            <!-- Muestra la altura promedio de la planta -->
            <li>Fecha de clasificación: <xsl:value-of select="fechaClasificacion" /></li>
            <!-- Muestra la fecha de clasificación de la planta -->
            <li>Toxicidad: <xsl:value-of select="toxicidad" /></li>
            <!-- Muestra la toxicidad de la planta -->
          </ul>

          <!-- Verificar si hay elementos 'parte' antes de mostrar la tabla -->
          <xsl:if test="parte">
            <!-- Condición que comprueba si existen elementos 'parte' -->
            
            <table border="1">
              <!-- Inicia una tabla con borde -->
              <tr>
                <th>Parte</th>
                <th>Número de Subelementos</th>
                <th>Descripción</th>
              </tr>
              <!-- Encabezados de la tabla para las partes, número de subelementos y descripción -->
              
              <xsl:for-each select="parte">
                <!-- Itera sobre cada elemento 'parte' dentro de la planta -->
                <tr>
                  <td><xsl:value-of select="@nombre" /></td>
                  <!-- Muestra el atributo 'nombre' del elemento 'parte' -->
                  <td>
                    <xsl:value-of select="numeroDeSubelementos/@tipo" />: <xsl:value-of select="numeroDeSubelementos" />
                    <!-- Muestra el tipo de número de subelementos y el valor correspondiente -->
                  </td>
                  <td><xsl:value-of select="descripcion" /></td>
                  <!-- Muestra la descripción del elemento 'parte' -->
                </tr>
              </xsl:for-each>
              <!-- Fin de la iteración sobre 'parte' -->
            </table>
            <!-- Fin de la tabla -->
          </xsl:if>
          <!-- Fin de la verificación de existencia de elementos 'parte' -->

        </xsl:for-each>
        <!-- Fin de la iteración sobre 'planta' -->
      </body>
    </html>
  </xsl:template>
  <!-- Fin de la plantilla para 'botanica' -->

</xsl:stylesheet>
