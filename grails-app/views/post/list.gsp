<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'ManifestStyle.css')}"
	type="text/css">
<title>My Posts</title>
</head>
<body>

	<g:render template="/layouts/menuBar" />

	<br />
	<div class="inner">
		<h1 class="list">Our Clever Blog Name</h1>
		
		
		<fieldset class="content">
			<g:if test="${posts.empty}">Your search returned no results!</g:if>
			<g:each in="${posts}" var="post">
				<div>
					<fieldset>
						<legend>
							Posted
							${post.lastUpdated}
						</legend>
						<h2>
							<g:link controller="post" action="view" id="${post.id}"
								params="[year:post.lastUpdated.format('yyyy'),month:post.lastUpdated.format('MM'),title:post.title]">
								${fieldValue(bean:post,field:"title") }
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
