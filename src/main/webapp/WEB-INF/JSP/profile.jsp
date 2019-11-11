<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<body>
	<div class="container">
	<h1>${production}</h1>
		<div class="row">
			<div class="col-md-4 col-sm-6">
				<resume:profile-main />

				<resume:profile-language />

				<resume:profile-hobbies />

				<resume:profile-info />
			</div>
			<div class="col-md-8 col-sm-6">

				<resume:profile-objective />

				<resume:profile-skills />

				<resume:profile-experience />

				<resume:profile-certificates />

				<resume:profile-courses />

				<resume:profile-education />
			</div>
		</div>
	</div>
</body>
