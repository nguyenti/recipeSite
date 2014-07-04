package io.github.nguyenti

import java.util.Date;

class Comment {

	String author //eventually Person
	String subject
	String message
	Date dateCreated
	int rating
	int likes
	int dislikes


	static belongsTo = Recipe //[Recipe, Person]

	static constraints = {
		rating min: 0, max: 5
		author blank: false, nullable: false
		subject blank: false, nullable: false
		message blank: false, nullable: false
	}

	static mapping = { sort "dateCreated" }


}
