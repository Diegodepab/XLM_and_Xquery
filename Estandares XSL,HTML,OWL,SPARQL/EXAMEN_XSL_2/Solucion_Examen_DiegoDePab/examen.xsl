<!-- Estoy reutilizando una plantilla usada en el simulacro del examen, si algún comentario sale fuera de contexto disculpar errata -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Definición de la hoja de estilos XSLT, versión 1.0 y el espacio de nombres XSL -->
  
  <xsl:template match="biologia">
    <!-- Plantilla que se activa cuando se encuentra el elemento 'biologia' en el XML -->
    
    <html>
      <head>
        <title>Organismos_Examen_Diegodepab</title>
        <!-- Título de la página web que se generará -->
      </head>
      <body>
        <h1>Organismos <xsl:value-of select="grupo" /> del reino <xsl:value-of select="reino" /></h1>
        <!-- Encabezado principal que muestra el tipo de organismo y la especie usando datos del XML -->
        
        <xsl:for-each select="organismo">
          <!-- Itera sobre cada elemento 'organismo' dentro de 'biologia' -->
          
          <h2><xsl:value-of select="nombreCientifico" /></h2>
          <!-- Muestra el nombre científico de la organismo como un segundo encabezado -->
          
          <ul>
            <!-- Inicia una lista no ordenada para las características del organismo -->
            <li>Esperanza de vida: <xsl:value-of select="esperanzaDeVida" /> años.</li>
            <!-- Muestra la altura promedio de la planta -->
            <li>Fecha de descubrimiento: <xsl:value-of select="fechaDescubrimiento" /></li>
            <!-- Muestra la fecha de clasificación de la planta -->
            <li>Especie en peligro de extinción: <xsl:value-of select="enPeligroDeExtincion" /></li>
            <!-- Muestra la toxicidad de la planta -->
          </ul>

          <!-- Verificar si hay elementos 'organo' antes de mostrar la tabla -->
          <xsl:if test="organo">
            <!-- Condición que comprueba si existen elementos 'organo' -->
            
            <table border="1">
              <!-- Inicia una tabla con borde -->
              <tr>
                <th>Órgano</th>
                <th>Número de zonas o regiones</th>
                <th>Descripción</th>
              </tr>
              <!-- Encabezados de la tabla para las organos, número de subelementos y descripción -->
              
              <xsl:for-each select="organo">
                <!-- Itera sobre cada elemento 'organo' dentro de la planta -->
                <tr>
                  <td><xsl:value-of select="@nombre" /></td>
                  <!-- Muestra el atributo 'nombre' del elemento 'organo' -->
                  <td>
                    <xsl:value-of select="numeroDeZonas/@tipo" />: <xsl:value-of select="numeroDeZonas" />
                    <!-- Muestra el tipo de número de subelementos y el valor correspondiente -->
                  </td>
                  <td><xsl:value-of select="descripcion" /></td>
                  <!-- Muestra la descripción del elemento 'organo' -->
                </tr>
              </xsl:for-each>
              <!-- Fin de la iteración sobre 'organo' -->
            </table>
            <!-- Fin de la tabla -->
          </xsl:if>
          <!-- Fin de la verificación de existencia de elementos 'organo' -->

        </xsl:for-each>
        <!-- Fin de la iteración sobre 'planta' -->
      </body>
    </html>
  </xsl:template>
  <!-- Fin de la plantilla para 'botanica' -->

</xsl:stylesheet>