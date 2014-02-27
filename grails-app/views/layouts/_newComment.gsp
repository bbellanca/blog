 <fieldset class="content">
 <br/>
 <legend>Add a comment</legend>

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