
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fas fa-globe"></i> Languages
		</h3>
	</div>
	<div class="panel-body">
		<c:forEach var="language" items="${profile.getLanguages() }">
			<option value="${language.id}"><strong>${language.name}:</strong> ${language.level.getDbValue()}
			</option>
		</c:forEach>
	</div>
</div>