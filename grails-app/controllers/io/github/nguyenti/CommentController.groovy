package io.github.nguyenti

import io.github.nguyenti.Comment
import io.github.nguyenti.Recipe

class CommentController {
	static scaffold = Comment

    def commentVote = {
		def recipe = Recipe.get(params.recipeId)
		def comments = recipe.comments
		def comment
		for (i in comments) {
			if (i.id.toString() == params.commentId) {
				if (params._action_commentVote == 'Yes') {
					i.likes++
					comment = i
				} else {
					i.dislikes++
					comment = i
				}
				break
			}
		}
		comment.save(failOnError: true)
		return [recipe: recipe]
	}

	def newComment = {
		def comment = new Comment()
		comment.properties = params
		def recipe = Recipe.get(params.recipeId)
		if (comment.save()) {
			recipe.addToComments(comment)
			recipe.save()
			return [recipe: recipe]
		} else {
			def message = [:]
			def i = 0
			if (!params.author || !params.subject || !params.message) {
				if (params.author == "") {
					message.author = "Author is empty. Please enter an Author."
				}
				if (params.subject == "") {
					message.subject = "Subject is empty. Please enter a Subject."
				}
				if (params.message == "") {
					message.comment = "Comment is empty. Please enter a Comment."
				}
			} else {
				message.fail = "Could not create message. Please try again"
			}
			flash.message = message
//			render recipe
//			redirect(action: recipePage, params: [recipeId: params.recipeId, comment: comment])
			render(view: '/recipe/recipePage', model: [recipe: recipe, comments: recipe.comments, comment: comment])
		}

	}
}
