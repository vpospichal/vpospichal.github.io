<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"
	doctype-system="about:legacy-compat"
	encoding="UTF-8"
	cdata-section-elements="a"
	/>
 
<xsl:template match="/">
	<html lang="cs">
		<xsl:apply-templates/>
	</html>
</xsl:template>

<xsl:template match="links">
	<head>
		<meta charset="UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link rel="icon" type="image/svg+xml" href="logo.svg"/>
		<link rel="shortcut icon" type="image/svg+xml" href="logo.svg"/>
		<link rel="stylesheet" type="text/css" href="style.css"/>
		<title><xsl:value-of select="@title"/></title>
		<link rel="StyleSheet" href="style.css" type="text/css" />
		<!-- Font Awesome pro ikony -->
		<script src="https://kit.fontawesome.com/8589cddb5e.js" crossorigin="anonymous"></script>
	</head>
	<body>
		<h1><xsl:value-of select="@title"/></h1>
		<xsl:apply-templates/>
	</body>

</xsl:template>

<xsl:template match="category">
	<div class="category">
		<h2><xsl:value-of select="@title"/></h2>
		<span class="icon-links">
			<xsl:apply-templates/>
		</span>
	</div>
</xsl:template>

<xsl:template match="a">
	<a>
		<xsl:copy-of select="@href"/>
		<xsl:attribute name="target">_blank</xsl:attribute>
		<xsl:apply-templates select="@img"/>
		<div><xsl:copy-of select="text()"/></div>
		<xsl:apply-templates select="@fab"/>
	</a>
</xsl:template>

<xsl:template match="@img">
	<img>
		<xsl:attribute name="src"><xsl:value-of select="."/></xsl:attribute>
		<xsl:attribute name="height">48</xsl:attribute>
	</img>
</xsl:template>

<xsl:template match="@fab">
	<i>
		<xsl:attribute name="class">fab <xsl:value-of select="."/></xsl:attribute>
	</i>
</xsl:template>


</xsl:stylesheet>
