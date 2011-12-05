<g:if test="${flash.message}">
	<div class="flash message">${flash.message}<a class="hide-flash">x</a></div>
</g:if>

<g:hasErrors bean="${contactInstance}">
	<div class="flash errors">
		<g:renderErrors bean="${contactInstance}" as="list"/>
		<a class="hide-flash">x</a>
	</div>
</g:hasErrors>

<g:hasErrors bean="${groupInstance}">
	<div class="flash errors">
		<g:renderErrors bean="${groupInstance}" as="list"/>
		<a class="hide-flash">x</a>
	</div>
</g:hasErrors>

<g:hasErrors bean="${pollInstance}">
	<div class="flash errors">
		<g:renderErrors bean="${pollInstance}" as="list"/>
		<a class="hide-flash">x</a>
	</div>
</g:hasErrors>
<g:hasErrors bean="${folderInstance}">
	<div class="flash errors">
		<g:renderErrors bean="${folderInstance}" as="list"/>
		<a class="hide-flash">x</a>
	</div>
</g:hasErrors>
<g:javascript>
	$(function() {
		$('.hide-flash').click(function() {
			$(this).parent(".flash").slideUp(500);
			return true;
		});
	});
</g:javascript>