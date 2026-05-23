<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><!--posem l'stylesheet, amb espai de noms i la versio-->

  <xsl:template match="/"> <!--cerquem el node patró arrel- i li fem el següent-->

  <html>

        <head>

            <title>Resultat en HTML</title>

        </head>

        <body>

         <ul><!--creem una llista ordenada-->

                <xsl:for-each select="inventari/producte"><!--que per cada inventari/producte-->

                <li>

                        <b><xsl:value-of select="./@tipus"/></b><!--Ens escrigui de producte(.) l'atribut tipus i en negreta-->

                        

                        <ul> <!--afegim una segona subllista -->

                            <li><!--amb una primera linia amb el nom del producte-->

                                Nom producte:

                                <xsl:value-of select="nom"/>

                            </li>

                            <li><!--i una segona linia amb el pes, un spai, i la unitat utilitzada -->

                                Pes:

                                <xsl:value-of select="pes"/><xsl:text> </xsl:text>

                                <xsl:value-of

                                    select="pes/@unitat"/>

                            </li>

                        </ul>

                        

                </li>

                </xsl:for-each>

            </ul>

          </body>

    </html>  

  </xsl:template>

</xsl:stylesheet>
