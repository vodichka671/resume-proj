<%@tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div id="edit" class="tab-pane fade in active">
	<div class="panel panel-default">
		<div class="panel-body">

			<div class="row form-rows">


				<form:form method="POST" action="/uploadFile" enctype="multipart/form-data" modelAttribute="general">

					<div class="row form-rows">
						<label for="inputPhoto" class="col-sm-2 control-label">Photo*</label>
						<div class="col-sm-5">
							<img id="currentPhoto" src="${profile.getLargePhoto() }" class="edit-photo thumbnail" /><br />
							 <input type="file" name="photo" id="profilePhoto" />

						</div>
						<div class="col-sm-5 help-block">
							<blockquote>
								<p>1. Photography can tell a lot about the candidate: starting from his aesthetic qualities and ending with his attitude to the search for
									serious work.</p>
								<p>2. Photography as a passport or in a suit is optional, the main thing is adequacy and well-groomed, neat appearance.</p>
								<p>3. As examples, you can look at photos of demonstration resumes in this application.</p>
								<p>4. The size of the photograph must be no less than 400x400.</p>
								<p>5. The file must be in jpg format.</p>

							</blockquote>
						</div>
					</div>

					<div class="row form-rows">

						<label for="inputBirthDay" class="col-sm-2 control-label">Day of birth*</label>
						<div class="col-sm-5">
							<form:input path="birthDay" class="form-control datepicker" data-date-format="yyyy-mm-dd" id="inputBirthDay" placeholder="Example: 1990-12-31"
								required="required" />

						</div>
						<div class="col-sm-5 help-block">
							<blockquote>Date form: yyyy-mm-dd (year-month-day)</blockquote>
						</div>
					</div>
					<div class="row form-rows">
						<label for="inputCountry" class="col-sm-2 control-label">Country*</label>
						<div class="col-sm-5">
							<form:input path="country" class="form-control" id="inputCountry" placeholder="Example: Ukraine" required="required" />

						</div>
						<div class="col-sm-5 help-block"></div>
					</div>

					<div class="row form-rows">

						<label for="inputCity" class="col-sm-2 control-label">City*</label>
						<div class="col-sm-5">
							<form:input path="city" class="form-control" id="inputCity" placeholder="Example: Kharkiv" required="required" />

						</div>
						<div class="col-sm-5 help-block"></div>
					</div>

					<div class="row form-rows">
						<label for="inputEmail" class="col-sm-2 control-label">Email*</label>
						<div class="col-sm-5">
							<form:input path="email" class="form-control" id="inputEmail" placeholder="Example: richard.hendricks@gmail.com" required="required" />

						</div>
						<div class="col-sm-5 help-block">
							<blockquote>
								<p>1. It is advisable that the email contains your first and last name as indicated in the passport. If the specified name is already
									taken, abbreviations are possible.</p>
								<p>2. Creative email is not recommended, e.g. TheBestDeveloper@gmail.com, lackomka@gmail.com, etc.</p>
								<p>3. It is not recommended to use the domain name of the employer where you are currently working.</p>
								<p>4. For developers, it is recommended to use @gmail.com domain.</p>
							</blockquote>
						</div>
					</div>

					<div class="row form-rows">
						<label for="inputPhone" class="col-sm-2 control-label">Phone*</label>
						<div class="col-sm-5">
							<form:input path="phone" class="form-control" id="inputPhone" placeholder="Example: +380501234567" required="required" />

						</div>
						<div class="col-sm-5 help-block">
							<blockquote>
								Номер телефона должен быть рабочим и тем номером с которого Вы будете отвечать на звонки с неизвестных Вам номеров. Номер телефона нужно
								предоставлять в формате <a href="https://ru.wikipedia.org/wiki/E.164" target="_blank">E.164</a>, например: +380501234567
							</blockquote>
						</div>
					</div>


					<div class="row form-rows">
						<label for="inputObjective" class="col-sm-2 control-label">Objective*</label>
						<div class="col-sm-5">
							<form:input path="objective" class="form-control" id="inputObjective" placeholder="Example: Junior java developer position" required="required" />

						</div>
						<div class="col-sm-5 help-block">
							<blockquote>В данном разделе нужно указать желаемую должность, максимально кратно и понятно</blockquote>
						</div>
					</div>

					<div class="row form-rows">
						<label for="inputSummary" class="col-sm-2 control-label">Summary*</label>
						<div class="col-sm-5">
							<form:textarea path="summary" class="form-control" id="inputSummary" required="required" rows="7"
								placeholder="Example: Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)" />

						</div>
						<div class="col-sm-5 help-block">
							<blockquote>
								1. В данном разделе необходимо описать Ваш опыт (практический или теоретический) по тому направлению в котором Вы ищите работу.<br /> 2. Если
								Вы работали фотографом и хотите изменить профиль своей деятельности не нужно описывать Ваши достижения в фотографии при поиске работы
								программистом<br /> 3. Если во желаемой должности у Вас нет достижений, это повод пройти какие-либо курсы в данном направлении или
								самостоятельно изучить основы будущей профессии
							</blockquote>
						</div>
					</div>

					<div class="row form-rows">
						<input type="submit" name="SubmitGeneral"  />

					</div>


				</form:form>

			</div>
		</div>
	</div>
</div>
<script>

</script>


