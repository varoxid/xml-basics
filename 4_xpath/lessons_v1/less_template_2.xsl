<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>Результаты XPath-запросов:</h2>

                <div>
                    <h3>Второе занятие:</h3>
                    <p>
                        <xsl:value-of select="/lessons/lesson[2]/name"/>,
                        Преподаватель: <xsl:value-of select="/lessons/lesson[2]/teacher"/>,
                        Период: <xsl:value-of select="/lessons/lesson[2]/datePeriod"/>,
                        Часы: <xsl:value-of select="/lessons/lesson[2]/hours"/>,
                        Тип: <xsl:value-of select="/lessons/lesson[2]/type"/>
                    </p>
                </div>

                <div>
                    <h3>Предпоследнее занятие:</h3>
                    <p>
                        <xsl:value-of select="/lessons/lesson[last()-1]/name"/>,
                        Преподаватель: <xsl:value-of select="/lessons/lesson[last()-1]/teacher"/>,
                        Период: <xsl:value-of select="/lessons/lesson[last()-1]/datePeriod"/>,
                        Часы: <xsl:value-of select="/lessons/lesson[last()-1]/hours"/>,
                        Тип: <xsl:value-of select="/lessons/lesson[last()-1]/type"/>
                    </p>
                </div>

                <div>
                    <h3>Общее количество занятий:</h3>
                    <p><xsl:value-of select="count(/lessons/lesson)"/></p>
                </div>

                <div>
                    <h3>Дата курса:</h3>
                    <p>
                        <xsl:variable name="thirdCourseDates" select="substring-before(/lessons/lesson[3]/datePeriod, ' - ')"/>
                        <xsl:value-of select="$thirdCourseDates"/>
                    </p>
                </div>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
