<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title">
			<i class="fas fa-book-open"></i> Courses
		</h3>
	</div>
	<div class="panel-body">

		<div class="page">
			<div class="timeline">
				<c:forEach var="course" items="${profile.courses }">

					<div class="timeline__group">
						<span class="timeline__year">${course.finishDate.getYear()+1900 }</span>
						<div class="timeline__box">
							<div class="timeline__date">
								<span class="timeline__day">${course.finishDate.getDay() }</span> <span class="timeline__month">${formatter.print(course.finishDate.getMonth()) }</span>
							</div>
							<div class="timeline__post">
								<div class="timeline__content">
									<p>
										<strong>Course: </strong> ${course.name }
									</p>
									<p>
										<strong>School: </strong>${course.school }</p>
									
								</div>
							</div>
						</div>

					</div>
				</c:forEach>


			</div>
		</div>
	</div>
</div>