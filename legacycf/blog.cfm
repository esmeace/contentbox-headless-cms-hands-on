<cfparam name="url.slug" default="first">
<!--- Retrieves access token --->
<cfinclude template="inc_jwt.cfm">
<!--- 8. Set the URL to the entry endpoint --->
<cfhttp result="result" method="GET" charset="utf-8" url="http://127.0.0.1">
    <cfhttpparam name="Authorization" type="header" value="Bearer #jwt#">
</cfhttp>
<cfset oBlog = deserializeJSON( result.filecontent ).data>

<p><a href="blogs.cfm">Back to List</a></p>

<cfoutput>
   <!--- 9. Display title of blog post --->
   <!--- 10. Display the rendered content of blog post --->
</cfoutput>

