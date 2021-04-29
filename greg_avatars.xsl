<?xml version="1.0"?>
<!--Example Greg Gambits Avatars: xsl file -->
	<?xml version="1.0" encoding="UTF-8"?>
	<xsl:stylesheet version="1.0" 
						xmlns:xsl ="http://www.w3.org/1999/XSL/Transform" href = "html5.xml">
	<xsl:output method = "html" doctype-system = "about:legacy-compat" />
	<xsl:template match = "/">
	<html>
	<head>
		<meta charset = "utf-8"/>
		<link rel = "stylesheet" type = "text/css" href = "greg.css"/>
		<script type="text/javascript" src="gregAvatars.js"></script>
		<title>Greg's Gambits | The Avatars</title>
	</head>
	<body>
	<div id="container" style="width: 900px;">
 <img src="images/superhero.jpg" class="floatleft" />
 <h1 align="center">Avatar Options</h1>
<div style ="clear:both;"></div>  
<div id="nav">
  <p><a href="index.html">Home</a>
  <a href="greg.html">About Greg</a>
  <a href="play_games.html">Play a Game</a>
  <a href="sign.html">Sign In</a>
  <a href="contact.html">Contact Us</a>
  <a href="sign_up.html">Sign up Now!</a></p>
</div>
<div id="content">
		<table border = "1" align = "center" width = "100%" cellpadding = "5">
			<tr>
				<th>Avatar</th>
				<th>Special Powers</th>
				<th>Home Base</th>
				<th>Accessories</th>
				<th>Partner</th>
			</tr>
		<!-- insert each avatar's information into a table row -->
		<xsl:for-each select = '/greg/avatar' 
		xmlns:bunny = "http://greg.com/bunny"
		xmlns:princess = "http://greg.com/princess"
		xmlns:ghost = "http://greg.com/ghost"
		xmlns:wizard = "http://greg.com/wizard"
		xmlns:elf = "http://greg.com/elf" >

		<tr>
		<td><xsl:value-of select = "name"/></td>
		<td><xsl:value-of select = "powers"/></td>
		<td><xsl:value-of select = "home"/></td>
		<td><xsl:value-of select = "carry"/></td>
		<td><xsl:value-of select = "partner"/></td>
		</tr>
		<xsl:for-each>
		<tr>
			<td colspan = "5">Select an avatar to view more details.</td>
		</tr>
		<tr>
			<!-- place buttons and images here and call appropriate functions -->

		</tr>
		<tr>
			<td id = "details" colspan = "5">Details</td>
		</tr>
		</table>
	</div>
</div>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>

