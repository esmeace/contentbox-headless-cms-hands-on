<!--- Retrieves access token --->
<cfinclude template="inc_jwt.cfm">
<!--- 4. Set the URL to the entries endpoint --->
<cfhttp result="result" method="GET" charset="utf-8" url="http://127.0.0.1">
    <cfhttpparam name="Authorization" type="header" value="Bearer #jwt#">
</cfhttp>
<!--- Array of blog entries --->
<cfset aBlogs = deserializeJSON( result.filecontent ).data>


<cfoutput>
<h1>Blog Posts</h1>

<!--- Loop through array of blogs --->
<cfloop array="#aBlogs#" item="blog">
    <!---5.  Add the title of the blog using an <h2></h2> --->
    <!---6.  Add the author of the blog using an <h3></h3> --->
    <!---7.  Add a link to the blog post ( hint: blog.cfm?slug= ) --->
    <hr/>
</cfloop>
</cfoutput>

