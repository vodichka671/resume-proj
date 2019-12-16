<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div id="contacts" class="tab-pane fade in active">
	<div class="panel panel-default">
		<div class="panel-body">

			<div class="row form-rows">


				<form:form action="/contacts" method="post"  modelAttribute="contacts">

				<div class="row form-rows">

						<label for="inputCity" class="col-sm-2 control-label">Skype*</label>
						<div class="col-sm-5">
							<form:input path="vkontakte" class="form-control" id="inputVkontakte" placeholder="Example: richard-hendricks" />

						</div>
						<div class="col-sm-5 help-block"><blockquote>
						1. Желательно, чтобы skype содержал Ваше имя и фамилию как указано в загран паспорте. Если указанное имя уже занято, возможны сокращения.<br /> 
						2. Не рекомендуется использовать креативные skype, например TheBestDeveloper, lackomka, etc.<br /> 
						3. Если у Вас нет адекватного skype-имени, значит пришло время его создать
					</blockquote></div>
					</div>

					<div class="row form-rows">

						<label for="inputCity" class="col-sm-2 control-label">Vkontakte*</label>
						<div class="col-sm-5">
							<form:input path="vkontakte" class="form-control" id="inputVkontakte" placeholder="Example: https://vk.com/richard-hendricks" />

						</div>
						<div class="col-sm-5 help-block"></div>
					</div>

					<div class="row form-rows">

						<label for="inputCity" class="col-sm-2 control-label">Facebook*</label>
						<div class="col-sm-5">
							<form:input path="facebook" class="form-control" id="inputFacebook" placeholder="Example: https://facebook.com/richard-hendricks" />

						</div>
						<div class="col-sm-5 help-block"></div>
					</div>

					<div class="row form-rows">

						<label for="inputCity" class="col-sm-2 control-label">Linkedin*</label>
						<div class="col-sm-5">
							<form:input path="linkedin" class="form-control" id="inputLinkedin" placeholder="Example: Example: https://linkedin.com/richard-hendricks" />

						</div>
						<div class="col-sm-5 help-block"></div>
					</div>


					<div class="row form-rows">

						<label for="inputCity" class="col-sm-2 control-label">Github*</label>
						<div class="col-sm-5">
							<form:input path="github" class="form-control" id="inputGithub" placeholder="Example: https://github.com/richard-hendricks" />

						</div>
						<div class="col-sm-5 help-block"></div>
					</div>

					<div class="row form-rows">

						<label for="inputCity" class="col-sm-2 control-label">Stackoverflow*</label>
						<div class="col-sm-5">
							<form:input path="stackoverflow" class="form-control" id="inputStackoverflow" placeholder="Example: https://stackoverflow.com/richard-hendricks" />

						</div>
						<div class="col-sm-5 help-block"></div>
					</div>

					<div class="row form-rows">
						<input type="submit" name="SubmitContacts" />

					</div>


				</form:form>

			</div>
		</div>
	</div>
</div>