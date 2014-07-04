<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Chef Nguyen's Amazing Recipes</title>
<%--	<blueprint:resources/>--%>
<link href="${resource(dir: 'css', file: 'app.css')}" type="text/css"
	rel="stylesheet">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
</head>
<body>
	<div id="topbar">
		<g:render template="/layouts/topbar" />
	</div>

	<div class="container">
		<!-- Example row of columns -->
		<div>
			<br/>
			<div class="row">Thank you for your comment</div>
			<g:form name="returnToRecipeForm" controller= "recipe">
				<g:hiddenField name="recipeId" value="${ recipe.id }" />
				<br/>
				<g:actionSubmit action="recipePage" value="Return" />
			</g:form>
		</div>
		<hr>

		<footer>
			<p>&copy; Tiffany</p>
		</footer>
	</div>
	<!-- /container -->


	<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>--%>
	<%--	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>--%>
	<r:layoutResources />
</body>
</html>