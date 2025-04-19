<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"
                encoding="UTF-8" omit-xml-declaration="no"/>

    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Расписание занятий</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    h1 { color: #2c3e50; }
                    table { border-collapse: collapse; width: 100%; margin-top: 20px; }
                    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                    tr:nth-child(even) { background-color: #f9f9f9; }
                    .exam { background-color: #ffe6e6; }
                    .credit { background-color: #e6ffe6; }
                </style>
            </head>
            <body>
                <h1>Расписание занятий</h1>
                <table>
                    <thead>
                        <tr>
                            <th>№</th>
                            <th>Название курса</th>
                            <th>Преподаватель</th>
                            <th>Период</th>
                            <th>Часы</th>
                            <th>Тип аттестации</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="lessons/lesson">
                            <tr>
                                <xsl:attribute name="class">
                                    <xsl:choose>
                                        <xsl:when test="type = 'экзамен'">exam</xsl:when>
                                        <xsl:otherwise>credit</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="teacher"/></td>
                                <td><xsl:value-of select="datePeriod"/></td>
                                <td><xsl:value-of select="hours"/></td>
                                <td><xsl:value-of select="type"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
                <div style="margin-top: 20px;">
                    <p>Всего курсов: <strong><xsl:value-of select="count(lessons/lesson)"/></strong></p>
                    <p>Общее количество часов: <strong><xsl:value-of select="sum(lessons/lesson/hours)"/></strong></p>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
