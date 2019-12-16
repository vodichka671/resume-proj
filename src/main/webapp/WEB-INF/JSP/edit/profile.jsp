<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container">
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<resume:edit-tab-header />
		</div>
	</div>


	<div class="tab-content">
		<resume:edit-general />

		<resume:edit-contacts />

		<resume:edit-skills />
		
		<resume:edit-practics />
		
		<resume:edit-certificates />

	</div>


</div>




