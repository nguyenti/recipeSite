<div class="newComment">
	<g:if test="${ flash.message }">
		<g:set var="errors" value="${ flash.message }"/>
		<g:each in="${ errors.values() }" var="item">
			<div class="errors">
				${ item?.encodeAsHTML() }
			</div>
		</g:each>
	</g:if>

%{-- Works!   <g:hasErrors bean="${comment}">
        <ul class="errors" role="alert">
            <g:eachError bean="${comment}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>--}%

	<div>
		<h4>Add your own review:</h4>

		<g:form controller="Comment" method="post">
			<g:hiddenField name="recipeId" value="${ recipe.id }" />
			<fieldset>
				<p>
						<label class="field" for="author">Author:&nbsp;</label> 
						<g:textField name="author" class="textbox" value="${fieldValue(bean:comment,field:'author')}"/> 
				</p>
				<p>
					<label class="field" for="rating">Rating:&nbsp;</label>
					<g:select name="rating" from="${ 5..1 }" value="${ fieldValue(bean:comment,field:'rating') }"
						class="rating"/>
				</p>
				<p>
					<label class="field" for="subject">Subject:&nbsp;</label> <g:textField 
						name="subject" class="textbox" value="${fieldValue(bean:comment,field:'subject')}"/>
				</p>
				<p>
					<label class="field" for="message">Comment:&nbsp;</label>
					<g:textArea name="message" class="textbox"
						style="height: 300px" value="${fieldValue(bean:comment,field:'message')}"></g:textArea>
				</p>
				<g:actionSubmit action="newComment" value="Submit" id="linkadd" />
			</fieldset>
		</g:form>
	</div>
</div>