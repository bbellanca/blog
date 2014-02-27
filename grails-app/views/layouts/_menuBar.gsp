<div class="menu">
	<g:form controller="post" method="post" id="search-form">
		<ul class="menu">
			<li class="loginControl"><g:loginControl></g:loginControl></li>
			<li><a href="http://localhost:8080/blog/post/">Home</a></li>
			<li><a href="news.asp">News</a></li>
			<li><a href="contact.asp">Contact</a></li>
			<li><a href="http://localhost:8080/blog/">About</a></li>
			<li><input class='searchBar' type='text' name='value'
				value="${value}" /> <g:actionSubmit class='searchButton' value="Search" /></li>
		</ul>
	</g:form>
</div>

<style>

input.searchButton{
position: absolute;
	right: 0px;
}

input[type="submit"] {
	border: 0;
	color: #eee;
	cursor: pointer;
	font: Arial, Helvetica, sans-serif;
	outline: none;
	/* Rounded Corners */
	border-radius: 8px;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	/* Shadows */
	box-shadow: -1px -1px 1px rgba(255, 255, 255, .5), 1px 1px 0
		rgba(0, 0, 0, .4);
	-moz-box-shadow: -1px -1px 1px rgba(255, 255, 255, .5), 1px 1px 0
		rgba(0, 0, 0, .2);
	-webkit-box-shadow: -1px -1px 1px rgba(255, 255, 255, .5), 1px 1px 0
		rgba(0, 0, 0, .4);
}
/*** SEARCH BUTTON HOVER ***/
input[type="submit"]:hover {
	background: #707070; /* Fallback color for non-css3 browsers */
}

input[type="submit"]:active {
	background: #707070; /* Fallback color for non-css3 browsers */
}




input.searchBar{
	position: absolute;
	right: 60px;
	vertical-align: middle;
}


li.loginControl{
	position: absolute;
	left: 0px;
	padding: 0px;
	
	}


input[type="text"] {
	border: 0;
	border-bottom: 1px solid #fff;
	border-top: 1px solid #fff;
	border-left: 1px solid #fff;
	border-right: 1px solid #fff;
	width: 150px;
	height: 18px;
	font-size: 14;
	font-family: Arial, Helvetica, sans-serif;
	vertical-align: middle;
	/* Rounded Corners */
	border-radius: 6px;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	/* Shadows */
	box-shadow: -1px -1px 2px rgba(0, 0, 0, .3), 0 0 1px rgba(0, 0, 0, .2);
	-webkit-box-shadow: -1px -1px 2px rgba(0, 0, 0, .3), 0 0 1px
		rgba(0, 0, 0, .2);
	-moz-box-shadow: -1px -1px 2px rgba(0, 0, 0, .3), 0 0 1px
		rgba(0, 0, 0, .2);
}
</style>