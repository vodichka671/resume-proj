<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fas fa-graduation-cap"></i> Education
		</h3>
	</div>
	<div class="panel-body">
		<div class="page">
			<div class="timeline">
				<c:forEach var="education" items="${profile.educations }">

					<div class="timeline__group">
						<span class="timeline__year">${education.getBeginYear() }</span>
						<div class="timeline__box">
							<div class="timeline__date">
								<span class="timeline__day"></span> <span class="timeline__month">Feb</span>
							</div>
							<div class="timeline__post">
								<div class="timeline__content">
									<p><strong>Faculty: </strong> ${education.faculty }</p>
									<p><strong>University: </strong>${education.university }</p>
									<p><strong>Summary: </strong>${education.summary }</p>
								</div>
							</div>
						</div>

					</div>
				</c:forEach>


			</div>
		</div>
	</div>
</div>