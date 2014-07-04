import java.util.Date;

import io.github.nguyenti.Comment
import io.github.nguyenti.Ingredient
import io.github.nguyenti.Instruction
import io.github.nguyenti.Recipe

class BootStrap {

    def init = { servletContext ->
		def spinach = new Ingredient(
			ingredient: "frozen spinach, thawed",
			quantity: 1/2).save(failOnError: true)
		def eggs = new Ingredient(
			ingredient: "large eggs",
			quantity: 4).save(failOnError: true)
		def tomatoes = new Ingredient(
			ingredient: "meduim Roma tomatoes",
			quantity: 2).save(failOnError: true)
		String inst = "Preheat the oven to 400 degrees. Coat a 2 quart casserole "
		inst += "dish with non-stick spray or coat with butter. Thaw the spinach "
		inst += "and squeeze out most of the moisture (no need to go overboard here, "
		inst += "just make sure it's not dripping)."
		def first = new Instruction(instruction: inst).save(failOnError: true)
		def recipe = new Recipe(
                title: "Baked Eggs with Spinach and Tomatoes",
                summary: "Yummy eggs",
                prepTime: 10,
                cookTime: 20,
                picLink: "http://img4-2.realsimple.timeinc.net/images/food-recipes/recipe-collections/0711/baked-eggs_300.jpg",
                id: 1)
		
		String message = "Absolutely delicious recipe. Would make again!"
		def comment1 = new Comment(author: "Fred",
			subject: "Yummy",
			message: message,
			dateCreated: new Date(),
			rating: 5,
			likes: 0,
			dislikes:0
		)
		def comment2 = new Comment(author: "Shannon",
			subject: "Meh",
			message: "It's solid, I suppose",
			dateCreated: new Date(),
			rating: 4,
			likes: 0,
			dislikes:0
		)
		recipe.addToComments(comment1)
		recipe.addToComments(comment2)
		recipe.addToIngredients(spinach)
		recipe.addToIngredients(eggs)
		recipe.addToIngredients(tomatoes)
		recipe.addToInstructions(first)
		recipe.save(failOnError: true)
		
		
		def salsa = new Ingredient(
			ingredient: "salsa",
			quantity: 1).save(failOnError: true)
		def rice = new Ingredient(
			ingredient: "uncooked long grain white rice",
			quantity: 1).save(failOnError: true)
		def chicken = new Ingredient(
			ingredient: "shredded chicken",
			quantity: 2).save(failOnError: true)
		String inst2 = "In a large skillet, combine the rice, salsa, chicken, "
		inst2 += "black beans (drained), chili powder, "
		inst2 += "and chicken broth. Stir until everything is evenly combined."
		def one = new Instruction(instruction: inst2).save(failOnError: true)
			
		recipe = new Recipe(
			title: "Southwest Chicken Skillet",
			summary: "Amazing chicken skillet",
			prepTime: 5,
			cookTime: 30,
			picLink: "http://i2.wp.com/www.budgetbytes.com/wp-content/uploads/2014/05/Southwest-Chicken-and-Rice-Skillet-bowl.jpg",
			id: 2)
		
		message = "Ugh. So beautiful. So tasty. So yes."
		comment1 = new Comment(author: "Fred",
			subject: "Yummy",
			message: message,
			dateCreated: new Date(),
			rating: 5,
			likes: 0,
			dislikes:0
		)
		recipe.addToIngredients(salsa)
		recipe.addToIngredients(rice)
		recipe.addToIngredients(chicken)
		recipe.addToInstructions(one)
		recipe.addToComments(comment1)
		recipe.save(failOnError: true)
		
		
    }
    def destroy = {
    }
}
