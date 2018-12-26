<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>TSP - 여행의 시작</title>
	</head>
	<body>
	<jsp:include page="../Gnb/gnb.jsp"/>
	<!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h1 class="mt-5"><c:out value="${member.uId }"/>님의 회원 정보</h1>
					<f:form modelAttribute="memberVo" action="member_update.do" method="POST">
						<table style="margin: auto;">
							<tr>
								<td>이름</td>
								<td><input type="text" name="uName"/></td>
							</tr>
						</table>
					</f:form>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	</body>
</html>