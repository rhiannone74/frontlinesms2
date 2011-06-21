<%@ page contentType="text/html;charset=UTF-8" %>
<div>
<div id="tabs">
	<ul>
		<li><a href="#tabs-1">Enter Message</a></li>
		<li><a href="#tabs-2">Select Recipients</a></li>
		<li><a href="#tabs-3">Confirm</a></li>
	</ul>

	<g:form action="send" controller="message" method="post">
		<div id="tabs-1">
		<label for="messageText">Enter message</label>
		<g:textArea name="messageText" rows="5" cols="40"/>
		<g:link url="#" class="next">Next</g:link>
	</div>
		<div id="tabs-2">
		<label for="address">Add phone number</label>
		<g:textField id="address" name="address"/>
		<g:link url="#" class="add-address">Add</g:link>
		<div id="groups">
		<g:each in="${groupList}" var="group">
			<div>
				<input type="checkbox" name="groups" value="${group.name}">${group.name}</input>
			</div>
		</g:each>
		</div>

		<div id="contacts">
			<g:each in="${contactList}" var="contact">
				<div>
					<input type="checkbox" name="addresses" value="${contact.address}">${contact.name ?: contact.address}</input>
				</div>
			</g:each>
		</div>
		<g:link url="#" class="next">Next</g:link>
	</div>
		<div id="tabs-3">
		<label>Do you want to send?</label>
		<g:submitButton name="send-msg">Send</g:submitButton>
	</div>
	</g:form>
</div>
</div>





