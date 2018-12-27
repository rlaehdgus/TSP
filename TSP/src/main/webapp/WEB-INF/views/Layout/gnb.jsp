<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/half-slider.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/3-col-portfolio.css">
	</head>
	<body>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="main.do">TSP</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
          	<!--  -->
            <c:if test="${member eq null}">
            	<li class="nav-item">              
	              <a href="/login.do" class="nav-link">로그인</a>
	            </li>
	            <li class="nav-item">
	              <a href="/join.do" class="nav-link">회원가입</a>
	            </li>
            </c:if>
            <c:if test="${member ne null}">
	            <li class="nav-item">              
	              <a href="/mypage.do" class="nav-link">마이페이지</a>
	            </li>
	            <li class="nav-item">
	              <a href="/logout.do" class="nav-link">로그아웃</a>
	            </li>
            </c:if>
            <li class="nav-item">
              <a class="nav-link" href="#">고객센터</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
	</body>
</html>