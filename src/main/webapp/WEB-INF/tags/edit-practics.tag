<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>


<div id="practics" class="panel panel-default tab-pane fade">
	<div class="panel-body">
		<h4 class="data-header">Практический опыт</h4>
		<h6 class="text-center help-block">(Упорядоченный по убыванию)</h6>
		<hr />

		<form:form action="/edit/practics" method="post" commandName="practics">

			<div id="ui-block-container">
				<c:forEach var="practic" items="${practics.items }" varStatus="status">


					<div id="ui-item-${status.index }" class="panel panel-default">
						<div class="panel-body ui-item">
							<div class="row">
								<div class="col-xs-12">
									<button type="button" class="close" onclick="$('#ui-item-${status.index }').remove();">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
							</div>
							<div class="row">
								<c:if test="${practic != null }">


								</c:if>
								<div class="col-xs-12 col-md-6 form-group ${hasError ? 'has-error has-feedback' : ''}">
									<label class="control-label" for="items${status.index }position">Должность</label> <input class="form-control"
										name="items[${status.index }].position" id="items${status.index }position" placeholder="Example: Java trainee" value="${practic.position }"
										required="required">
									<c:if test="${practic != null }">


									</c:if>
								</div>
								<c:if test="${practic != null }">


								</c:if>
								<div class="col-xs-12 col-md-6 form-group ${hasError ? 'has-error has-feedback' : ''}">
									<label class="control-label" for="items${status.index }company">Компания или организация</label> <input class="form-control"
										name="items[${status.index }].company" id="items${status.index }.company" placeholder="Example: DevStudy.net" value="${practic.company }"
										required="required">
									<c:if test="${practic != null }">


									</c:if>
								</div>
								<div class="col-xs-12 col-md-6 form-group">
									<label class="control-label" for="items${index }beginDate">Дата начала</label>
									<div class="row">
										<div class="col-xs-6">
											<select name="items[${status.index }].beginDateMonth" class="form-control">
												<c:forEach var="month" items="${months }">
													<option value="${month.key }" ${month.key == practic.beginDateMonth ? 'selected="selected"' : '' }>${month.value }</option>
												</c:forEach>
											</select>
										</div>
										<div class="col-xs-6">
											<select name="items[${status.index }].beginDateYear" class="form-control">
												<c:forEach var="year" items="${years }">
													<option value="${year }" ${year == practic.beginDateYear ? 'selected="selected"' : '' }>${year }</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<c:if test="${practic != null }">


								</c:if>
								<div class="col-xs-12 col-md-6 form-group ${hasError ? 'has-error has-feedback' : ''}">
									<label class="control-label" for="items${status.index }finishDate">Дата завершения</label>
									<div class="row">
										<div class="col-xs-6">
											<select id="items${status.index }finishDateMonth" name="items[${status.index }].finishDateMonth" class="form-control"
												onchange="resume.ui.updateSelect($(this))" data-ref-select="items${status.index }finishDateYear">
												<option value="">Not finished yet</option>
												<c:forEach var="month" items="${months }">
													<option value="${month.key }" ${month.key == practic.finishDateMonth ? 'selected="selected"' : '' }>${month.value }</option>
												</c:forEach>
											</select>
										</div>
										<div class="col-xs-6">
											<select id="items${status.index }finishDateYear" name="items[${status.index }].finishDateYear" class="form-control"
												onchange="resume.ui.updateSelect($(this))" data-ref-select="items${status.index }finishDateMonth">
												<option value="">Not finished yet</option>
												<c:forEach var="year" items="${years }">
													<option value="${year }" ${year == practic.finishDateYear ? 'selected="selected"' : '' }>${year }</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<c:if test="${practic != null }">


									</c:if>
								</div>
								<c:if test="${practic != null }">


								</c:if>
								<div class="col-xs-12 col-md-12 ${hasError ? 'has-error has-feedback' : ''}">
									<label class="control-label" for="items${status.index }responsibilities">Обязанности/Достижения</label>
									<textarea class="form-control" name="items[${status.index }].responsibilities" id="items${status.index }responsibilities"
										style="margin-bottom: 10px;" required="required" rows="2">${practic.responsibilities }</textarea>
									<c:if test="${practic != null }">


									</c:if>
								</div>
								<c:if test="${practic != null }">


								</c:if>
								<div class="col-xs-12 col-md-6 form-group ${hasError ? 'has-error has-feedback' : ''}">
									<label class="control-label" for="items${status.index }demo">Ссылка на demo</label> <input class="form-control"
										name="items[${status.index }].demo" id="items${status.index }demo" placeholder="Example: http://resume.devstudy.net"
										value="${practic.demo }">
									<c:if test="${practic != null }">


									</c:if>
								</div>
								<c:if test="${practic != null }">


								</c:if>
								<div class="col-xs-12 col-md-6 form-group ${hasError ? 'has-error has-feedback' : ''}">
									<label class="control-label" for="items[${status.index }].src">Исходный код</label> <input class="form-control"
										name="items[${status.index }].src" id="items[${status.index }].src" placeholder="Example: https://github.com/devstudy-net/resume"
										value="${practic.src }">
									<c:if test="${practic != null }">


									</c:if>
								</div>
							</div>
						</div>
					</div>


				</c:forEach>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<a href="javascript:resume.ui.addBlock();">+ Добавить </a>
				</div>
			</div>
			<hr />
			<div class="row">
				<div class="col-xs-12 text-center">
					<input type="submit" class="btn btn-primary" value="Сохранить">
				</div>
			</div>
		</form:form>
	</div>
</div>
