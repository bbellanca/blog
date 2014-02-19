<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en-US">
<script src="http://code.jquery.com/jquery.min.js"></script>
<head profile="http://www.w3.org/2005/10/profile">
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
<g:each in="${post.comments}" var="comment">
    <div id ="comment" class="comment">
    <p>${comment.comment}</p>
    <p>Made by: ${comment.who.name} on ${comment.dateCreated}</p>
    </div>
</g:each>
</div>

<form id="commentInput">
<textarea id="newComment" class="textinput" placeholder="Add a comment..." cols="72" rows="10" tabindex="101" data-min-length=""></textarea>
<button type="submit" class = "button">Submit Comment</button>
</form>
</body>

<script>
$("#commentInput").submit(function(event){
	event.preventDefault();
	var newComment = $("textarea").val();
	document.getElementById("allcomments").innerHTML += newComment+"<br>";
	
});


</script>

</html>