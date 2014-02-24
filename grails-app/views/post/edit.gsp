<%@ page contentType="text/html;charset=utf-8" %>
<html>
  <head>
      <title>Manage Post</title>
      <link rel="stylesheet"
	href="${resource(dir: 'css', file: 'ManifestStyle.css')}"
	type="text/css">
  </head>
  <body>
  
<g:render template="/layouts/menuBar"/>
<br/>
  <div class="inner">
  <fieldset class="content">
  <legend><h1>Edit your post</h1></legend>
  <div id="validationerrors">
      <g:renderErrors bean="${post}"/>
  </div>
  <g:form controller="post" action="save">
      <g:hiddenField name="id" value="${post.id}"/>
      <dl>
          <dt>Post Title:</dt>
          <dd>
          <g:textField name="title" value="${post.title}" size="50"/>
          </dd>
          <dt>Post Teaser:</dt>
          <dd>
          <g:textArea name="teaser" value="${post.teaser}" cols="50"/>
          </dd>
          <dt>Post:</dt>
          <dd>
          <g:textArea name="content" value="${post.content}" rows="20" cols="50"/>
          </dd>
      </dl>
      
      
        <g:submitButton name="submit" value="Save"/>
  </g:form>
  </fieldset>
  </div>
  </body>
</html>