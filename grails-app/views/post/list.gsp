<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'ManifestStyle.css')}"
	type="text/css">
<title>My Posts</title>
</head>
<body>
	<div class="inner">
		<h1>My Posts</h1>
		<fieldset class="content">
			<g:each in="${posts}" var="post">
				<div>
					<fieldset>
						<legend>
							Posted
							${post.lastUpdated}
						</legend>
						<h2>
							<g:link controller="post" action="view" id="${post.id}">
								${post.title}
							</g:link>
						</h2>
						<fieldset>
							<legend>Summary:</legend>
							<p>
								${post.teaser}
							</p>
						</fieldset>
					</fieldset>
				</div>
			</g:each>
		</fieldset>

		<br>

	<fieldset class="content">
		<g:link controller="post" action="edit">
    Create a new post
</g:link>
	</fieldset>
	</div>
</body>
</html>
