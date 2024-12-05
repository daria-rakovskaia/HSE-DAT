<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf8" />
    <xsl:template match="/movies">
        <html>
            <head>
                <style>
                    table { border-collapse: collapse; width: 100%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                </style>
            </head>
            <body>
                <table>
                    <thead>
                        <tr>
                            <th>Название</th>
                            <th>Жанр</th>
                            <th>Режиссёр</th>
                            <th>Композитор</th>
                            <th>Актёры</th>
                            <th>Дата выхода</th>
                            <th>Сборы</th>
                            <th>Возраст</th>
                            <th>Язык</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="movie">
                            <tr>
                                <td>
                                    <xsl:value-of select="title" />
                                </td>
                                <td>
                                    <xsl:value-of select="genre" />
                                </td>
                                <td>
                                    <xsl:value-of select="director" />
                                </td>
                                <td>
                                    <xsl:value-of select="composer" />
                                </td>
                                <td>
                                    <xsl:for-each select="actors/actor">
                                        <xsl:value-of select="." />
                                        <xsl:if test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </td>
                                <td>
                                    <xsl:value-of select="date" />
                                </td>
                                <td>
                                    <xsl:value-of select="money" />
                                </td>
                                <td>
                                    <xsl:value-of select="ageRestriction" />
                                </td>
                                <td>
                                    <xsl:value-of select="language" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>