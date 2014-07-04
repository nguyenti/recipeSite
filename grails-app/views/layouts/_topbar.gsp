<%--<div id="menu">--%>
<%--	<nobr>--%>
<%--		<g:if test="${ session.user }">--%>
<%--			<b>${ session.user?.firstName}&nbsp;${ session.user?.lastName }</b> |--%>
<%--			<g:link controller="user" action="logout">Logout</g:link>--%>
<%--		</g:if>--%>
<%--		<g:else>--%>
<%--			<g:link controller="user" action="login">Login</g:link>--%>
<%--		</g:else>--%>
<%--	</nobr>--%>
<%--</div>--%>
<%----%>
<%--to use...--%>
<%--<div id="topbar">--%>
<%--	<g:render template="..." />--%>
<%--</div>--%>


<%--			<div class="header">--%>
<%--				<ul class="nav nav-pills pull-right">--%>
<%--					<li class="active"><a href="../recipe">Home</a></li>--%>
<%--					<li><a href="#">About</a></li>--%>
<%--					<li><a href="#">Contact</a></li>--%>
<%--				</ul>--%>
<%--				<h3 class="text-muted">Recipes</h3>--%>
<%--			</div>--%>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<%--			<a class="navbar-brand" href="/recipeSite/recipe">Recipes</a>--%>
			<g:link class="navbar-brand" action="index">Recipes</g:link>
		</div>
		<div class="navbar-collapse collapse">
			<form class="navbar-form navbar-right" role="form">
				<div class="form-group">
					<input type="text" placeholder="Search" class="form-control">
				</div>
				<button type="submit" class="btn btn-success">Submit</button>
			</form>
			<ul class="nav nav-pills pull-right">
				<li class="active"><g:link action="index">Home</g:link></li>
				<li><g:link controller="recipe" action="uploadForm">
						<span title="If for some reason you want to upload something...">Upload</span>
					</g:link>
				</li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
	</div>
</div>