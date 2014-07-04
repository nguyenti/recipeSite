<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="../../assets/ico/favicon.ico">
	
	<title>
		${ recipe.title }
	</title>
	<link href="${resource(dir: 'css', file: 'app.css')}" type="text/css"
		rel="stylesheet">
<%--	<link rel="stylesheet"--%>
<%--		href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">--%>
<%--	<link rel="stylesheet"--%>
<%--		href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">--%>
<%--	--%>
<%--	<blueprint:resources />--%>
	<link rel="stylesheet"
		href="${resource(dir: 'css', file: 'bootstrap.css')}">
	
	
<%--    <link rel="stylesheet" type="text/css" href="stylesheet.css"/>--%>
<%--    <script type="text/javascript" src="script.js"></script>--%>
	
	<g:javascript library="prototype" /> 
<%--  use jQuery instead	--%>
	<r:layoutResources/>
</head>

<body>

	<div class="container">
		<div class="container">

			<div id="topbar">
				<g:render template="/layouts/topbar" />
			</div>

			<div class="jumbotron">
				<h1>
					${ recipe.title }
				</h1>
				<img class="img-responsive" src="${ recipe.picLink }" />
			</div>
	
	
			<div class="row marketing">
				<div class="col-lg-4">
					<h4>Some sort of descriptor</h4>
					<p>
						Some sort of long description...
					</p>
					<p>
						Donec id elit non mi porta
						gravida at eget metus. Maecenas faucibus mollis interdum.
					</p>
					<p>
						Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras
						mattis consectetur purus sit amet fermentum.
					</p>
					<p>
						Maecenas sed
						diam eget risus varius blandit sit amet non magna.
					</p>
				</div>
	
				<div class="col-lg-8 jumbotron">
					<div>
						<b>Prep Time:</b>
						${ recipe.prepTime }
						minutes
					</div>
					<div>
						<b>Cook Time:</b>
						${ recipe.cookTime }
						minutes
					</div>
					<div>
						<b>Total Time:</b>
						${recipe.cookTime + recipe.prepTime}
						minutes
					</div>
					<h4>Ingredients</h4>
					<ul class="dualCol">
						<g:each in="${ recipe.ingredients }" var="ing">
							<li>
								<span>&#8226;</span> ${  + ing.quantity + " " + ing.ingredient }
							</li>
						</g:each>
					</ul>
					<h4>Instructions</h4>
					<ol>
						<g:each in="${ recipe.instructions }" var="inst">
							<li>
								${ inst.instruction }
							</li>
						</g:each>
					</ol>
				</div>
			</div>
			
			<div class=" col-lg-10 col-lg-offset-1 jumbotron">
				<div class="col-lg-12">
					<g:render template="/comment/comment" collection="${comments.sort { a,b-> b.dateCreated<=>a.dateCreated }}" var="comment"/>
			    </div>
			    
				<div class="col-lg-12">
					<g:render template="/comment/addComment" />
				</div>
			</div>
		
		</div>
		<div class="footer">
			<p>&copy; Tiffany</p>
		</div>

	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

<%--	<script--%>
<%--		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>--%>
<%--	<script--%>
<%--		src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>--%>
	<r:layoutResources/>
</body>
</html>