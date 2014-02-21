<g:each in="${comments}" var="comment">
    <fieldset class="innerContent">
    <legend><p>Made by: ${comment.who.name} on ${comment.dateCreated}</p></legend>
    <p>${comment.comment}</p>
    
    </fieldset>
    <g:link controller="comment" action="delete">delete comment </g:link>
</g:each>
