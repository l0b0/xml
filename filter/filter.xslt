<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Items to exclude - "id" attributes by default -->
    <xsl:template match="@id"/>

    <!-- Items to include - Everything by default -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <!-- Don't change this -->
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
