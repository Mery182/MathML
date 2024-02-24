<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">

    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <math xmlns="http://www.w3.org/1998/Math/MathML">
                    <mstyle displaystyle="true">
                        <xsl:apply-templates />
                    </mstyle>
                </math>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="строка">
        <mrow>
            <xsl:apply-templates />
        </mrow>
    </xsl:template>

    <xsl:template match="операнд">
        <mi>
            <xsl:apply-templates />

            <!-- <xsl:value-of select="." /> -->
        </mi>
    </xsl:template>

    <xsl:template match="оператор">
        <mo>
            <xsl:apply-templates />

            <!-- <xsl:value-of select="." /> -->
        </mo>
    </xsl:template>

    <xsl:template match="корень">
        <msqrt>
            <xsl:apply-templates />
        </msqrt>
    </xsl:template>


    <xsl:template match="дробь">
        <mfrac>
            <xsl:apply-templates />
            <!-- <xsl:value-of select="mi" /> -->
            <!-- <xsl:apply-templates /> -->
        </mfrac>
    </xsl:template>

    <xsl:template match="число">
        <mn>
            <xsl:apply-templates />
        </mn>
    </xsl:template>
    <xsl:template match="низверх">
        <munderover>
            <!-- <xsl:value-of select="." /> -->
            <xsl:apply-templates />
        </munderover>
    </xsl:template>

    <xsl:template match="верх">
        <msup>
            <xsl:apply-templates />
        </msup>
    </xsl:template>
    <xsl:template match="низ">
        <msub>
            <xsl:apply-templates />
            <!-- <xsl:value-of select="." /> -->
        </msub>
    </xsl:template>


</xsl:stylesheet>