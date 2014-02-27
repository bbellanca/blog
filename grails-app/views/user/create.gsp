<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
<title>Manage Post</title>
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'ManifestStyle.css')}"
	type="text/css">
</head>
<body>

	<g:render template="/layouts/menuBar" />
	<br />
	<div class="inner">
		<fieldset class="content">
			<legend>
				<h1>Create an Account</h1>
			</legend>
			<div id="validationerrors">
				<g:renderErrors bean="${user}" />
			</div>
			<g:form controller="user" action="create">
				<dl>
					<dt>Name:</dt>
					<dd>
						<g:textField name="name" size="50" />
					</dd>
					<dt>Username:</dt>
					<dd>
						<g:textField name="login" size="50" />
					</dd>
					<dt>Password:</dt>
					<dd>
						<g:textField name="password" size="50" />
					</dd>

				</dl>


				<g:submitButton name="submit" value="Save" />
			</g:form>
		</fieldset>
	</div>
</body>
</html>