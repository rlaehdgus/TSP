<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
html {
    display: table;
    margin: auto;
}

html, body {
    height: 100%;
}

.medium-small {
    font-size: 0.9rem;
    margin: 0;
    padding: 0;
}

.login-form-text {
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 0.8rem;
}

.login-text {
    margin-top: -6px;
    margin-left: -6px !important;
}

.margin {
    margin: 0 !important;
}

.pointer-events {
    pointer-events: auto !important;
}

.input-field >.material-icons  {
    padding-top:10px;
}

.input-field div.error{
    position: relative;
    left: 3rem;
    font-size: 0.8rem;
    color:#FF4081;
    -webkit-transform: translateY(0%);
    -ms-transform: translateY(0%);
    -o-transform: translateY(0%);
    transform: translateY(0%);
}
</style>
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
</head>
<body>
	<div id="login-page" class="row">
	<h3 align="center"><a href="/main.do" class="main_move"><b>TSP</b></a></h3>
    <div class="col s12 z-depth-4 card-panel" style="width: 530px">
      <f:form modelAttribute="memberVo" action="login_check.do" method="post" class="login-form">
        <div class="row">
	        <div class="input-field col s12 center">
	          <h4>로그인</h4>
	        </div>
	      </div>
        
        <div class="row margin">
	        <div class="input-field col s12">
	          <!-- <i class="mdi-social-person-outline prefix"></i> -->
	          <i class="material-icons prefix">account_circle</i>
	          <input id="username" name="username" type="text"/>
	          <label for="username">Id</label>
	        </div>
	      </div>

	      <div class="row margin">
	        <div class="input-field col s12">
	          <!-- <i class="mdi-action-lock-outline prefix"></i> -->
	          <i class="material-icons prefix">vpn_key</i>
	          <input id="password" name="password" type="password" />
	          <label for="password">Password</label>
	        </div>
	      </div>
        
        <!-- <div class="row">          
          <div class="input-field col s12 login-text">                   
              <input type="checkbox" id="test6" checked="checked" />
              <label for="test6" class="pointer-events"></label>
          </div>
        </div> -->
        
        <div class="row">
          <div class="input-field col s12">
            <button type="submit" class="btn waves-effect waves-light col s12">로그인</button>
          </div>
          <div class="input-field col s12">
            <a href="index.html" class="btn waves-effect waves-light col s12 light-blue darken-4">FACEBOOK 로그인</a>
          </div>
          <div class="input-field col s12">
            <a href="index.html" class="btn waves-effect waves-light col s12 yellow darken-1">KAKAO 로그인</a>
          </div>
        </div>
        
        <div class="row">
          <div class="input-field col s6 m6 l6">
            <p class="margin medium-small"><a href="/join.do">가입이 되어있지 않으신가요?</a></p>
          </div>
          <div class="input-field col s6 m6 l6">
              <p class="margin right-align medium-small"><a href="#">아이디 혹은 비밀번호를 잊으셨나요?</a></p>
          </div>          
        </div>
      </f:form>
    </div>
  </div>
</body>
</html>
<script>
$(".login-form").validate({
	  rules: {
	    u_id: {
	      required: true,
	      minlength: 4
	    },
	    u_pw: {
	      required: true,
	      minlength: 5
	    }
	  },
	  //For custom messages
	  messages: {
	    username:{
	      required: "Enter a username",
	      minlength: "Enter at least 4 characters"
	    }
	  },
	  errorElement : 'div',
	  errorPlacement: function(error, element) {
	    var placement = $(element).data('error');
	    if (placement) {
	      $(placement).append(error)
	    } else {
	      error.insertAfter(element);
	    }
	  }
	});
</script>