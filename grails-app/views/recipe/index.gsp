<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Chef Nguyen's Amazing Recipes</title>
<%--	<blueprint:resources/>--%>
	<link href="${resource(dir: 'css', file: 'app.css')}" type="text/css" rel="stylesheet">
<%--	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">--%>
<%--	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">--%>
	<link rel="stylesheet"
		href="${resource(dir: 'css', file: 'bootstrap.css')}">
</head>
<body>
	<div id="topbar">
		<g:render template="/layouts/topbar" />
	</div>

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Recipes!</h1>
			<p>This is Tiffany's website to play around with Groovy on Grails</p>
			<p>
				<a class="btn btn-primary btn-lg" role="button">Learn more
					&raquo;</a>
			</p>
		</div>
	</div>


	<div class="container">
		<!-- Example row of columns -->
		<div class="row">
			<g:render template="recipeCard" collection="${recipes}" var="recipe" />
		</div>
		
        <p><g:link action="add" class="btn btn-primary btn-lg">Add Recipe &raquo;</g:link></p>
        
		<hr>

		<footer>
			<p>&copy; Tiffany</p>
		</footer>
	</div>
	<!-- /container -->


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<r:layoutResources />
</body>
</html>