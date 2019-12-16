<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fas fa-gamepad"></i> Hobby
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td><i class="fa fa-heart"></i></td>
					<td>Computer games</td>
				</tr>
				<c:forEach var="hobby" items="${profile.getHobbies() }">
					<tr>
					<td><i class="fa fa-heart"></i></td>
					<td>${hobby.name}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>