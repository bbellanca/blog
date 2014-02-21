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
	<div class="inner">
		<fieldset class="content">
			<h1>
				${post.title}
			</h1>
			<fieldset>
				<legend>Summary:</legend>
				<p>
					${post.teaser}
				</p>
				<div>
					<fieldset class="innerSummary">
						${post.content}
					</fieldset>
				</div>
				</fieldset>
				<g:link controller="post" action="edit" id="${post.id}">
  Edit this post
</g:link>
				<g:link controller="post" action="delete" id="${post.id}">
  Delete this post
</g:link>

		</fieldset>
		<fieldset class="content">
		<h2>Comments:</h2>
		<div id="allcomments">
		  <fieldset class="content">
			<g:render template="/comment/commentsPrint"
				model="[comments:post.comments]" />
			</fieldset>
		</div>

		<div id="validationerrors">
			<g:renderErrors bean="${comment}" />
		</div>

	</fieldset>
 <fieldset class="content">

		<g:formRemote name="commentForm"
			url="[controller: 'comment', action: 'save']" update="allcomments">

			<g:hiddenField name="postId" value="${post.id}" />
			<dl>
				<dt>Your name:</dt>
				<dd>
					<g:textField name="who.name" />
				</dd>
				<dt>Your email:</dt>
				<dd>
					<g:textField name="who.email" />
				</dd>
				<dt>Your website/blog:</dt>
				<dd>
					<g:textField name="who.url" />
				</dd>
				<dt>Add your comment:</dt>
				<dd>
					<g:textArea name="comment" rows="20" cols="50" />
				</dd>
			</dl>
			<input type="submit" value="Submit" />
		</g:formRemote>
		</fieldset>
	</div>
</body>
</html>