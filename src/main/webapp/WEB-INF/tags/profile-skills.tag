<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fas fa-database"></i> Skills
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-bordered">
			<tbody>
				
				<c:forEach var="skill" items="${profile.skills}">
					<tr>
						<td>${skill.category}</i></td>
						<td>${skill.value}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>