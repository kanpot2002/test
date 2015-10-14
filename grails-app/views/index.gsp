<sec:ifLoggedIn>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to SET Scoop</title>
	</head>
	<body>

	</body>
</html>
</sec:ifLoggedIn>
<<sec:ifNotLoggedIn>
	<setnewscoop:redirectPage uri="/login/auth"/>
</sec:ifNotLoggedIn>
