<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>


<div id="certificates" class="panel panel-primary certificates tab-pane fade in active">
	<div class="panel-body">
		<c:forEach var="certificate" items="${certificates.items }">
			<a data-url="${ certificate.smallUrl}" data-title="Jee certificate" href="#" class="thumbnail certificate-link"> <img alt="Jee certificate"
				src="${ certificate.smallUrl}" class="img-responsive"> <span>certificate</span>
			</a>
		</c:forEach>
	</div>


</div>

