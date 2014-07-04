package io.github.nguyenti

class Ingredient {

	String ingredient
	double quantity
	
    static constraints = {
	}
	
	static belongsTo = Recipe
	
	String toString() { return ingredient }
}
