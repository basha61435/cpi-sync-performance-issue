<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
     <xsl:output method="xml"   omit-xml-declaration="yes" version="1.0" encoding="UTF-8" indent="yes"/>
    
    <!--Identity template to copy all content by default-->
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="ExternalConfiguration/rootItem/characteristics[not(values)]"/>
    <xsl:template match="ExternalConfiguration/rootItem/characteristics[values/author!='' and values/author!=' ']"/>
    
    <xsl:template match="ExternalConfiguration/rootItem/subItems/characteristics[not(values)]"/>
    <xsl:template match="ExternalConfiguration/rootItem/subItems/characteristics[values/author!='' and values/author!=' ']"/>
    
</xsl:stylesheet>
