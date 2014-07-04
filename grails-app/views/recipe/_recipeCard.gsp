<div class="recipe">
	<g:link action="recipePage" params="${[recipeId : recipe.id]}">
		<div class="inlink">
			<img border="0" src="${ recipe.picLink }" width="304" height="228">
			<h4>
				${ recipe.title }
			</h4>
			<p>
				${ recipe.summary }
			</p>
			<div>
				Prep Time:
				${ recipe.prepTime }
				minutes
			</div>
			<div>
				Cook Time:
				${ recipe.cookTime }
				minutes
			</div>
			<div>
				Total Time:
				${recipe.cookTime + recipe.prepTime}
				minutes
			</div>
		</div>
	</g:link>
</div>