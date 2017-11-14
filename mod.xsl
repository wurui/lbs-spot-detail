<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.lbs-spot-detail">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-lbs-spot-detail" ox-mod="lbs-spot-detail">
        	<xsl:variable name="detail" select="data/lbs-spot"/>
            <div class="main">
            	<span class="mainpic">
	            	<img src="https://a.oxm1.cc/img/blank.png" style="background-image:url({$detail/img})"/>
	            	<br/>
	            	<span class="img_count"><xsl:value-of select="$detail/img_count"/>张</span>
            	</span>
            	<h3 class="title">
            		<xsl:value-of select="$detail/name"/>
            	</h3>
            	<p>
            		<span class="score">
            			<xsl:value-of select="$detail/score"/>分
            		</span>/5分
            		&#160;
            		<span class="comment_count">
            			<xsl:value-of select="$detail/comment_count"/>
            			条点评&gt;
            		</span>
            	</p>
            	<p>
            		<span class="type">
            			<xsl:value-of select="$detail/type"/>
            		</span>
            	</p>
            </div>
            <div class="location">
                <a href="baidumap://map/marker?location=40.047669,116.313082&amp;title={$detail/name}&amp;content={$detail/location}&amp;src
=yourCompanyName|yourAppName" class="bt-map J_location">导航</a>
                <xsl:value-of select="$detail/location"/>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
