<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>

<nav id="custom-navbar" class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a id="brand" class="navbar-brand" href="#">"We`ll call"</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  
      
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" id="profile-dropdown" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${profile.fullName} <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#"><i class="fas fa-id-card"></i> Мой профиль</a></li>
            <li><a href="/edit"><i class="fas fa-user-edit"></i> Изменить</a></li>
            <li><a href="#"><i class="fas fa-unlock"></i> Пароль</a></li>
            <li><a href="#"><i class="fas fa-trash-alt"></i> Удалить</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#"><i class="fas fa-sign-out-alt"></i> Выйти</a></li>
          </ul>
        </li>
      </ul>
      
      <form class="navbar-form navbar-right">
        <div class="form-group">
          <input id="search-field" type="text" class="form-control" placeholder="Search">
        </div>
        <button id="submit-btn" type="submit" class="btn">Submit</button>
      </form>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>