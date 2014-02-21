<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>My Posts</title>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'ManifestStyle.css')}" type="text/css">
</head>
<body>
  <div class="inner">
	<h1>My Posts</h1>

	<g:each in="${posts}" var="post">
		<div>
		<fieldset class="content">
			<h2>
				<g:link class="content" controller="post" action="view" id="${post.id}">
					${post.title}
				</g:link>
			</h2>
			<p>
			<fieldset class="teaser">
			  <legend>
				Summary:
			  </legend>
				${post.teaser}
			</fieldset>
			</p>
			<p>
			<fieldset class="lastUpdated">
			  <legend>
				Last Updated:
			  </legend>
				${post.lastUpdated}
			</fieldset>
			</p>
		</fieldset>
		</div>
		<br>
	</g:each>

	<br>
	<g:link controller="post" action="edit">
    Create a new post
</g:link>
</div>
</body>
</html>
