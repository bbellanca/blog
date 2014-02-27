<%@ page contentType="text/html;charset=UTF-8"%>
<html lang="en-US">
<script src="http://code.jquery.com/jquery.min.js"></script>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'ManifestStyle.css')}"
	type="text/css">
<g:javascript library="jquery" />

<title>
	${post.title}
</title>
</head>
<body>
	<g:render template="/layouts/menuBar" />

	<br />
	<div class="inner">
		<fieldset class="content">
			<h1>
				${post.title}
			</h1>
			<fieldset class="innerContent">
				<legend>
					${post.lastUpdated}
				</legend>
				<pre>
						${post.content}
					</pre>
			</fieldset>


			<g:if test="${!session.user || session.user.role != 'author'}"></g:if>
			<g:else>
				<g:link controller="post" action="edit" id="${post.id}">
				  Edit this post
				</g:link>
				<g:link controller="post" action="delete" id="${post.id}">
				  Delete this post
				</g:link>
			</g:else>



		</fieldset>
		<br />
		<fieldset class="content">
			<h2>Comments:</h2>
			<div id="allcomments">
				<g:render template="/comment/commentsPrint"
					model="[comments:post.comments]" />
			</div>

			<div id="validationerrors">
				<g:renderErrors bean="${comment}" />
			</div>

		</fieldset>

		<g:if test="${!session.user}"></g:if>
		<g:else>
			<g:render template="/layouts/newComment" />
		</g:else>

	</div>
</body>
</html>