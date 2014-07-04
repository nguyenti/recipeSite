package io.github.nguyenti

import io.github.nguyenti.Comment
import io.github.nguyenti.Recipe
import grails.converters.JSON
import java.util.Date;

class RecipeController {
	static scaffold = Recipe

	def index = {
		def recipes = Recipe.list(sort: "title", order: "asc")
		return [recipes: recipes]
	}

	def recipePage = {
		def recipe = Recipe.get(params.recipeId)
		def comments = recipe.comments
		def comment = new Comment()
		[recipe: recipe, comments: comments, comment: comment]
	}
	
	def uploadForm = {
	}
	
	def upload = {
		def f = request.getFile('myFile')
		if (f.empty) {
			flash.message = 'file cannot be empty'
			render(view: 'uploadForm')
			return
		}
		f.transferTo(new File('/some/local/dir/myfile.txt'))
		response.sendError(200, 'Done')
	}

}
