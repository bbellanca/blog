<g:each in="${comments}" var="comment">
    <p>${comment.comment}</p>
    <p>Made by: ${comment.who.name} on ${comment.dateCreated}</p>
</g:each>
