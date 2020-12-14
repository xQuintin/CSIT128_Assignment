<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/contacts">
        <html>
            <head>
                <link rel="stylesheet" href="navbar.css" />
                <title>Qusai Wael</title>
                <script src="https://kit.fontawesome.com/d14fab2703.js"></script>
                <style>
                    .icons {
                     margin: auto;
                     padding: 100px 0;
                     width: 60%;
                     border: 3px solid black;
                     text-align: center;
                     background-color: #FFF;
                    }

                    .icons a {
                    margin: 5%;
                    }
                </style>
            </head>
            <body style="background-color: #498ebf">
                <ul class="navbar">
                    <li><a href="Home.html">Home</a></li>
                    <li><a href="Projects.html">Projects</a></li>
                    <li><a class="active" href="#contact">Contact</a></li>
                    <li><a href="About.html">About</a></li>
                    <li><a href="Comment.html">Comment</a></li>
                </ul>
                <div class="icons">
                <a target="_blank">
                    <xsl:attribute name="href">
                        <xsl:value-of select="facebook" />
                    </xsl:attribute>
                    <i style="color:blue" class="fab fa-facebook-square fa-7x"></i></a>
                <a target="_blank">
                    <xsl:attribute name="href">
                        <xsl:value-of select="twitter" />
                    </xsl:attribute>
                    <i style="color:lightblue" class="fab fa-twitter-square fa-7x"></i></a>
                <a>
                    <xsl:attribute name="href">
                        javascript:phone('<xsl:value-of select="phone" />')
                    </xsl:attribute>
                    <i style="color:cyan" class="fas fa-phone-square fa-7x"></i></a>
                </div>
                <script>
                    function phone(num) {
                      alert(num);
                    }
                </script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>