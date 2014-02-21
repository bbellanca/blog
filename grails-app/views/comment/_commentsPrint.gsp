<g:each in="${comments}" var="comment">
    <p>${comment.comment}</p>
    <p>Made by: ${comment.who.name} on ${comment.dateCreated}</p>
    <g:link controller="comment" action="delete">delete comment </g:link>
</g:each>
