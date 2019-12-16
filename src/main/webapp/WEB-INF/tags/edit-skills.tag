<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>


<div id="skills" class="tab-pane panel panel-default">
	<div class="panel-body">
		<h4 class="data-header">Технические навыки во фреймворках и технологиях</h4>
		<hr />
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-xs-5 col-sm-4 col-md-2 text-center">
				<strong>Категория</strong>
			</div>
			<div class="col-xs-7 col-sm-8 col-md-10 text-center">
				<strong>Фреймворк и технология</strong>
			</div>
		</div>
		<form:form action="/skills" method="post" modelAttribute="skills">
			<div id="ui-block-container">
				<c:forEach var="skill" items="${skills.items }" varStatus="status">
					<div id="ui-item-${status.index }" class="row ui-item skill-item">
						<div class="col-xs-5 col-sm-4 col-md-2">
							<input type="hidden" name="items[${status.index }].id" value="${skill.id }" /> <select name="items[${status.index }].category" class="form-control">
								<c:forEach var="category" items="${skillCategories }">
									<option value="${category.category }" ${category.category == skill.category ? ' selected="selected"' : ''}>${category.category }</option>
								</c:forEach>
							</select>
						</div>
						<div class="col-xs-7 col-sm-8 col-md-10 value-container">
							<button type="button" class="close" onclick="$('#ui-item-${status.index }').remove();">
								<span aria-hidden="true">&times;</span>
							</button>
							<textarea name="items[${status.index }].value" class="form-control pull-right" required="required" rows="2">${skill.value }</textarea>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<a href="javascript:void(0);">+ Добавить навык</a>
				</div>
			</div>
			<hr />
			<div class="row">
				<div class="col-xs-12 text-center">
					<input type="submit" class="btn btn-primary" name="SubmitSkills">
				</div>
			</div>
		</form:form>
	</div>
</div>