<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" />
    <xsl:template match="/movies">
        <xsl:for-each select="movie">
            <xsl:text>Фильм: </xsl:text>
            <xsl:value-of select="title" />
            <xsl:text>&#10;Жанр: </xsl:text>
            <xsl:value-of select="genre" />
            <xsl:text>&#10;Режиссёр: </xsl:text>
            <xsl:value-of select="director" />
            <xsl:text>&#10;Композитор: </xsl:text>
            <xsl:value-of select="composer" />
            <xsl:text>&#10;Актёры: </xsl:text>
            <xsl:for-each select="actors/actor">
                <xsl:value-of select="." />
                <xsl:if test="position() != last()">
                    <xsl:text>, </xsl:text>
                </xsl:if>
            </xsl:for-each>
            <xsl:text>&#10;Дата выхода: </xsl:text>
            <xsl:value-of select="date" />
            <xsl:text>&#10;Возрастное ограничение: </xsl:text>
            <xsl:value-of select="ageRestriction" />
            <xsl:text>&#10;Количество зрителей: </xsl:text>
            <xsl:value-of select="audienceCount" />
            <xsl:text>&#10;&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>