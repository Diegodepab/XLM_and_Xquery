<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="entry">

    <html>
      <head>
        <title>Examen_Diego_De_Pablo</title>
        <style>
            table {
                border-collapse: collapse;
                width: 75%;
            }
            th, td {
                border: 3px solid black;
                padding: 8px;
                text-align: center;
            }
            th {
                background-color: #f2f2f2;
            }
        </style>
      </head>
      <body>
        <h1>Información para <xsl:value-of select="name" /> (<xsl:value-of select="accession[1]" />)</h1>

        <h2>Ubicación</h2>
        <ul>
          <li><b>Organismo</b>: <xsl:value-of select="organism/name[@type='common']" /> (<xsl:value-of select="organism/name[@type='scientific']" />)</li>
            <ul>
              <li>Referencia: <xsl:value-of select="organism/dbReference/@id" /> (<xsl:value-of select="organism/dbReference/@type" />) </li>
              <li>Linaje: 
                <xsl:for-each select="organism/lineage/taxon">
                  <xsl:value-of select="." /> <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
              </li>
            </ul>
          <li><b>Gen</b>: <xsl:value-of select="gene/name" /></li>
          <li><b>Proteina</b>: <xsl:value-of select="protein/recommendedName/fullName" /> (<xsl:value-of select="protein/recommendedName/shortName" />)</li>
          <ul>
            <li>Lista de nombres alternativos:
                <ul>
                  <xsl:for-each select="protein/alternativeName">
                    <li><xsl:value-of select="fullName" /> <xsl:if test="shortName"> (<xsl:value-of select="shortName" />)</xsl:if></li>
                  </xsl:for-each>
                </ul>
            </li>
          </ul>
        </ul>

        <h2>Comentarios</h2>
        <ul>
          <xsl:for-each select="comment">
            <xsl:if test=".//text">
              <li>
                <b><xsl:value-of select="@type" /></b>: 
                <xsl:value-of select=".//text"/>
              </li>
            </xsl:if>
          </xsl:for-each>
        </ul>



          <h2>Referencias de Bases de Datos</h2>
          <table border="1">
            <tr>
              <th>Tipo</th>
              <th>ID</th>
              <th>Propiedades</th>
            </tr>
            <xsl:for-each select="dbReference">
              <tr>
                <td><xsl:value-of select="@type" /></td>
                <td><xsl:value-of select="@id" /></td>
                <td>
                  <xsl:if test="property">
                    <ul>
                      <xsl:for-each select="property">
                        <li>
                          Tipo: <xsl:value-of select="@type" /> - Valor: <xsl:value-of select="@value" />
                        </li>
                      </xsl:for-each>
                    </ul>
                  </xsl:if>
                </td>
              </tr>
            </xsl:for-each>
          </table>
    
          <h2>Referencias</h2>
          <ol>
            <xsl:for-each select="reference">
              <li> <xsl:value-of select="citation/title" />. </li>
              <ul>
                <li>Tipo de publicación: <xsl:value-of select="citation/@type" /></li>
                <li>Fecha: <xsl:value-of select="citation/@date" /></li>
                <li>
                  Autores: 
                  <xsl:for-each select="citation/authorList/person">
                    <xsl:value-of select="@name" />
                    <xsl:if test="position() != last()">, </xsl:if>
                  </xsl:for-each>
                </li>
              </ul>
            </xsl:for-each>
          </ol>
        </body>
      </html>
    </xsl:template>
  </xsl:stylesheet>
  