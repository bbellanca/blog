<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${post.title}</title>
</head>
<body>
<h1>${post.title}</h1>
<p>${post.teaser}</p>
<div>${post.content}</div>
<g:link controller="post" action="edit" id="${post.id}">
  Edit this post
</g:link>
</body>
</html>