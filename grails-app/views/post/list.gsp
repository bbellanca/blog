<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>My Posts</title>
</head>
<body>
	<h1>My Posts</h1>

	<g:each in="${posts}" var="post">
		<div>
			<h2>
				<g:link controller="post" action="view" id="${post.id}">
					${post.title}
				</g:link>
			</h2>
			<p>
				${post.teaser}
			</p>
			<p>
				Last Updated:
				${post.lastUpdated}
			</p>
		</div>
	</g:each>

	<br>
	<g:link controller="post" action="edit">
    Create a new post
</g:link>
</body>
</html>
