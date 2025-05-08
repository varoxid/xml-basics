<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Кандидаты</h1>

                <h2>Кандидаты младше 32 лет:</h2>
                <xsl:for-each select="/resumes/candidate[age &lt; 32]">
                    <div style="border:1px solid #ccc; padding:10px; margin-bottom:10px;">
                        <h3><xsl:value-of select="lastName"/> <xsl:value-of select="firstName"/> <xsl:value-of select="middleName"/></h3>
                        <p>Возраст: <xsl:value-of select="age"/></p>
                        <p>Должность: <xsl:value-of select="currentPosition"/></p>
                        <p>Желаемая зарплата: <xsl:value-of select="desiredSalary"/> руб.</p>
                        <p>Телефон: <xsl:value-of select="phone"/></p>
                    </div>
                </xsl:for-each>

                <h2>Кандидаты 33 года и старше:</h2>
                <xsl:for-each select="/resumes/candidate[age &gt;= 33]">
                    <div style="border:1px solid #ccc; padding:10px; margin-bottom:10px;">
                        <h3><xsl:value-of select="lastName"/> <xsl:value-of select="firstName"/> <xsl:value-of select="middleName"/></h3>
                        <p>Возраст: <xsl:value-of select="age"/></p>
                        <p>Должность: <xsl:value-of select="currentPosition"/></p>
                        <p>Желаемая зарплата: <xsl:value-of select="desiredSalary"/> руб.</p>
                        <p>Телефон: <xsl:value-of select="phone"/></p>
                    </div>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
