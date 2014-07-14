<cfsetting enablecfoutputonly="yes" showdebugoutput="no">
<cfcontent reset="yes">
	<cffile action="uploadAll" nameconflict="makeunique" destination="#expandPath('uploads\')#">
    <cfdirectory directory="#ExpandPath('uploads\')#" type="file" name="files" action="list" sort="datelastmodified DESC">
    <cfoutput>
    	<cfloop query="files">
            <tr>
                <td><a href="uploads/#name#" target="_blank"><img src="uploads/#name#" alt="#name#"/></a></td>
                <td>#numberformat(size)#</td>
                <td>#dateFormat(DATELASTMODIFIED,'mmm d, yyyy')#</td>
            </tr>
        </cfloop>
    </cfoutput>
<cfabort>