<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

    <html>

        <head>

            <title>Resultat en HTML</title>

        </head>

        <body>

            <table border="1">

                <tr>

                    <th>Nom</th>

                    <th>Pes</th>

                    <th>Planta</th>

                    <th>Despatx</th>

                </tr>

                <xsl:for-each select="inventari/producte">

                    <tr>

                        <td><xsl:value-of select="nom"/></td>

                        <td><xsl:value-of select="pes"/><xsl:text> </xsl:text><xsl:value-of select="pes/@unitat"/></td>

                        <td><xsl:value-of select="lloc/@planta"/></td>

                        <td><xsl:value-of select="lloc/despatx"/></td>

                    </tr>

                </xsl:for-each>

            </table>

        </body>

    </html>

</xsl:template>


