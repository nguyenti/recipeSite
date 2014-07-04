<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="../../assets/ico/favicon.ico">
	
	<title>Upload</title>
	<link href="${resource(dir: 'css', file: 'app.css')}" type="text/css"
		rel="stylesheet">
	<link rel="stylesheet"
		href="${resource(dir: 'css', file: 'bootstrap.css')}">
	<g:javascript library="prototype" /> 
<%--  use jQuery instead	--%>
	<r:layoutResources/>
</head>

<body>

	<div class="container">
		<div class="container" style="height: 500px">

			<div id="topbar">
				<g:render template="/layouts/topbar" />
			</div>

			<div class="jumbotron">
				<h1>
					Upload
				</h1>
			</div>
	
	
			<div class="row marketing">
				Upload Form: <br />
			    <g:uploadForm action="upload">
			        <input type="file" name="myFile" />
			        <input type="submit" />
			    </g:uploadForm>
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