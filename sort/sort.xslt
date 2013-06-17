<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Element to sort -->
    <xsl:template match="people">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="node()">
                <!-- Sort node -->
                <xsl:sort select="name"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
