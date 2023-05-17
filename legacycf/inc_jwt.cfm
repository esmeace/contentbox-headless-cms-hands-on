<!--- Logs in user to API --->

<!--- 1. Set the URL to the login endpoint --->
<cfhttp result="result" method="POST" charset="utf-8" url="http://127.0.0.1">  
    <!--- 2. Set the value to the username--->
    <cfhttpparam name="username" type="form" value="user">
    <!--- 3. Set the value to the user's pw --->
    <cfhttpparam name="password" type="form" value="pw">
</cfhttp>

<cfset jwt = deserializeJSON( result.filecontent ).data.tokens.access_token>
