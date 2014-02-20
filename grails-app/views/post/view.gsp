<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en-US">
<script src="http://code.jquery.com/jquery.min.js"></script>
<head profile="http://www.w3.org/2005/10/profile">
<g:javascript library="jquery" />

    <title>${post.title}</title>
</head>
<body>
<h1>${post.title}</h1>
<p>${post.teaser}</p>
<div>${post.content}</div>
<g:link controller="post" action="edit" id="${post.id}">
  Edit this post
</g:link>

<div id="allcomments">
    <g:render template="/comment/commentsPrint" model="[comments:post.comments]"/>
</div>

 <div id="validationerrors">
      <g:renderErrors bean="${comment}"/>
  </div>
  
  
  
  <g:formRemote name="commentForm" url="[controller: 'comment', action: 'save']" update="allcomments" >
      
    <g:hiddenField name="postId" value="${post.id}"/>
      <dl>
          <dt>Your name:</dt>
          <dd>
          <g:textField name="who.name"/>
          </dd>
          <dt>Your email:</dt>
          <dd>
          <g:textField name="who.email"/>
          </dd>
          <dt>Your website/blog:</dt>
          <dd>
          <g:textField name="who.url"/>
          </dd>
          <dt>Add your comment:</dt>
          <dd>
          <g:textArea name="comment" rows="20" cols="50"/>
          </dd>
      </dl>
      <input type="submit" value="Submit" />
  </g:formRemote>


</html>