<div>
	<div class="comment">
		<div>
			<g:render template="/comment/likes" bean="${ comment }" />
		</div>
		<div>
			<div>
				<div>
					<h4>
						${ comment.rating + "/5 stars " }<b>${ comment.subject }</b>
					</h4>
				</div>
				<h5>
					${ comment.message }
				</h5>
			</div>
			<div>
				Published
				<g:formatDate type="datetime" style="SHORT" date="${comment.dateCreated}" />
				by ${ comment.author }
			</div>
		</div>
		<div>
			<span>Was this comment useful?</span>
			<g:form name="voteCounted" controller= "Comment">
				<g:hiddenField name="commentId" value="${ comment.id }" />
				<g:hiddenField name="recipeId" value="${ recipe.id }" />
				<g:actionSubmit action="commentVote" value="Yes"/>
				<g:actionSubmit action="commentVote" value="No"/>
			</g:form>
		</div>
	</div>
</div>

