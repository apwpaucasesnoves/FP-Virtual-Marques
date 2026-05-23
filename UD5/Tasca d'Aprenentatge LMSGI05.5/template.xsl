<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">

<xsl:element name="genres">

     <xsl:for-each select="DATA/ROW">

          <xsl:element name="genre">

          <xsl:attribute name="id"><xsl:value-of select="id"></xsl:value-of></xsl:attribute>

              <xsl:element name="name"><xsl:value-of select="name"></xsl:value-of></xsl:element>

          </xsl:element>

     </xsl:for-each>

</xsl:element>

  </xsl:template>

</xsl:stylesheet>
