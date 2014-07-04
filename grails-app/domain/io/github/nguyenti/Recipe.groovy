package io.github.nguyenti

class Recipe {

	String title
	String summary
	String picLink
	int prepTime
	int cookTime
		
	static hasMany = [ingredients: Ingredient, instructions: Instruction, comments: Comment]
	
    static constraints = {
    }
	
	static mapping = {
		ingredients cascade: "all-delete-orphan"
		comments cascade: "all-delete-orphan"
	}
}
